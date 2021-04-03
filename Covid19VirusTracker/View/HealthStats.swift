//
//  HealthStats.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 4/2/21.
//

import SwiftUI
import HealthKit

struct HealthStats: View {
    @State private var healthStore = HKHealthStore()
    @State private var showingAlert = false
    
    // Health parameters
    @State private var steps = Double()
    @State private var walkingRunningDistance = Double()
    @State private var flightsClmb = Int()
    @State private var weightPar = Double()
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10) {
                // Activity
                // Steps, Walking + Running Distance, Flights Climbed - DONE
                
                HStack {
                    Image(systemName: "figure.walk.circle")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .foregroundColor(.green)
                    
                    Text("\(steps, specifier: "%.1f") steps")
                        .bold()
                        .font(.custom("Avenir-Medium", size: 16))
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.5)
                        .padding(.leading, 10)
                }
                
                HStack {
                    Image(systemName: "figure.walk.circle")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .foregroundColor(.yellow)
                    
                    Text("\(walkingRunningDistance, specifier: "%.1f") m")
                        .bold()
                        .font(.custom("Avenir-Medium", size: 16))
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.5)
                        .padding(.leading, 10)
                }
                
                HStack {
                    Image(systemName: "figure.walk.circle")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .foregroundColor(.yellow)
                    
                    Text("\(flightsClmb)")
                        .bold()
                        .font(.custom("Avenir-Medium", size: 16))
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.5)
                        .padding(.leading, 10)
                }
                
                // Body Measurements
                // Weight, Height, Body Temperature - IN PROGRESS
                
                HStack {
                    Image(systemName: "figure.walk.circle")
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .foregroundColor(.yellow)
                    
                    Text("\(weightPar, specifier: "%.1f") kg")
                        .bold()
                        .font(.custom("Avenir-Medium", size: 16))
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.5)
                        .padding(.leading, 10)
                }
                
                // Heart
                // Heart Rate, Blood Pressure
                
                // Respiratory
                // Blood Oxygen
                
                // Symptoms
                // Appetite Change, Chest Tightness and Pain, Chills, Congestion, Coughing, Diarrhoea, Dizziness, Fainting, Fatigue, Fever, Headache, Loss of Smell, Loss of Taste, Shortness of Breath, Sore Throat, Vomiting
            }
        }
        .onAppear {
            HealthStoreAvailability()
            fetchActivityData()
            fetchBodyMeasurements()
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Health Store Issue"), message: Text("Can't read data from Health Store!"), dismissButton: .default(Text("OK")))
        }
        .navigationTitle("Health Stats")
    }
    
    private func HealthStoreAvailability() {
        if HKHealthStore.isHealthDataAvailable() {
            let readTypes = Set([HKObjectType.quantityType(forIdentifier: .flightsClimbed)!,
                                 HKObjectType.quantityType(forIdentifier: .stepCount)!,
                                 HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
                                 HKObjectType.quantityType(forIdentifier: .bodyMass)!,
                                 HKObjectType.quantityType(forIdentifier: .height)!,
                                 HKObjectType.quantityType(forIdentifier: .bodyFatPercentage)!,
                                 HKObjectType.quantityType(forIdentifier: .bodyTemperature)!,
                                 HKObjectType.quantityType(forIdentifier: .bodyMassIndex)!,
                                 HKObjectType.quantityType(forIdentifier: .bloodPressureDiastolic)!,
                                 HKObjectType.quantityType(forIdentifier: .bloodPressureSystolic)!,
                                 HKObjectType.quantityType(forIdentifier: .heartRate)!,
                                 HKObjectType.quantityType(forIdentifier: .uvExposure)!,
                                 HKObjectType.quantityType(forIdentifier: .bloodGlucose)!,
                                 HKObjectType.quantityType(forIdentifier: .oxygenSaturation)!
            ])
            
            healthStore.requestAuthorization(toShare: nil, read: readTypes) { (success, error) in
                if !success {
                    showingAlert = true
                } else {
                    FetchDataFromHealthStore()
                }
            }
        }
    }
    
    private func FetchDataFromHealthStore() {
        let calendar = NSCalendar.current
        let now = Date()
        let components = calendar.dateComponents([.year, .month, .day], from: now)
        
        guard let startDate = calendar.date(from: components) else {
            fatalError("*** Unable to create the start date ***")
        }
        
        guard let endDate = calendar.date(byAdding: .day, value: 1, to: startDate) else {
            fatalError("*** Unable to create the end date ***")
        }
        
        let today = HKQuery.predicateForSamples(withStart: startDate, end: endDate, options: [])
        
        let sortByDate = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: true)
        
        guard let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount) else {
            fatalError("*** This method should never fail ***")
        }
        
        let query = HKSampleQuery(sampleType: sampleType, predicate: today, limit: Int(HKObjectQueryNoLimit), sortDescriptors: [sortByDate]) { (query, results, error) in
            guard let samples = results as? [HKQuantitySample] else {
                // handle errors here
                return
            }
            
            for sample in samples {
                // process each sample here
                print("Heart rate -> \(sample)")
            }
            
            // The results come back on an anonymous background queue.
            // Dispatch to the main queue before modifying the UI.
            
            DispatchQueue.main.async {
                // Update UI here
            }
            
            healthStore.execute(query)
        }
    }
    
    private func fetchActivityData() {
        guard let sampleType = HKCategoryType.quantityType(forIdentifier: .stepCount) else {
            return
        }
        
        guard let walkingRunning = HKCategoryType.quantityType(forIdentifier: .distanceWalkingRunning) else {
            return
        }
        
        guard let flightsClimbed = HKCategoryType.quantityType(forIdentifier: .flightsClimbed) else {
            return
        }
        
        let startDate = Calendar.current.startOfDay(for: Date())
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictEndDate)
        var interval = DateComponents()
        interval.day = 1
        
        let querySteps = HKStatisticsCollectionQuery(quantityType: sampleType, quantitySamplePredicate: predicate, options: [.cumulativeSum], anchorDate: startDate, intervalComponents: interval)
        
        querySteps.initialResultsHandler = { query, result, error in
            
            if let myResult = result {
                myResult.enumerateStatistics(from: startDate, to: Date()) { (statistics, value) in
                    if let count = statistics.sumQuantity() {
                        let val = count.doubleValue(for: HKUnit.count())
                        steps = val
                        print("Total steps: \(val) steps")
                    }
                }
            }
        }
        
        let queryWalkingRunning = HKStatisticsCollectionQuery(quantityType: walkingRunning, quantitySamplePredicate: predicate, options: [.cumulativeSum], anchorDate: startDate, intervalComponents: interval)
        queryWalkingRunning.initialResultsHandler = { query, result, error in
            if let myResult = result {
                myResult.enumerateStatistics(from: startDate, to: Date()) { (statistics, value) in
                    if let count = statistics.sumQuantity() {
                        let val = count.doubleValue(for: HKUnit.meter())
                        walkingRunningDistance = val
                        print("Walking running distance \(val) meters")
                    }
                }
            }
        }
        
        let queryFlightsClimbed = HKStatisticsCollectionQuery(quantityType: flightsClimbed, quantitySamplePredicate: predicate, options: [.cumulativeSum], anchorDate: startDate, intervalComponents: interval)
        queryFlightsClimbed.initialResultsHandler = { query, result, error in
            if let myResult = result {
                myResult.enumerateStatistics(from: startDate, to: Date()) { (statistics, value) in
                    if let count = statistics.sumQuantity() {
                        let val = count.doubleValue(for: HKUnit.count())
                        flightsClmb = Int(val)
                        print("Walking running distance \(val) meters")
                    }
                }
            }
        }
        
        healthStore.execute(querySteps)
        healthStore.execute(queryWalkingRunning)
        healthStore.execute(queryFlightsClimbed)
     }
    
    private func getMostRecentSample(for sampleType: HKSampleType, completion: @escaping (HKQuantitySample?, Error?) -> ()) {
        //1. Use HKQuery to load the most recent samples.
        let mostRecentPredicate = HKQuery.predicateForSamples(withStart: Date.distantPast,
                                                              end: Date(),
                                                              options: .strictEndDate)
        
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate, ascending: false)
        let limit = 1
        let sampleQuery = HKSampleQuery(sampleType: sampleType,
                                        predicate: mostRecentPredicate,
                                        limit: limit,
                                        sortDescriptors: [sortDescriptor]) { (query, samples, error) in
            
            //2. Always dispatch to the main thread when complete.
            DispatchQueue.main.async {
                guard let samples = samples,
                      let mostRecentSample = samples.first as? HKQuantitySample else {
                    completion(nil, error)
                    return
                }
                completion(mostRecentSample, nil)
            }
        }
        healthStore.execute(sampleQuery)
    }
    
    
    private func fetchBodyMeasurements() {
        guard let weightSampleType = HKCategoryType.quantityType(forIdentifier: .bodyMass) else {
            return
        }
        
        guard let heightSampleType = HKCategoryType.quantityType(forIdentifier: .height) else {
            return
        }
        
        guard let bTemperatureSampleType = HKCategoryType.quantityType(forIdentifier: .bodyTemperature) else {
            return
        }
        
        let startDate = Calendar.current.startOfDay(for: Date())
        let endDate = Date()
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: Date(), options: .strictStartDate)
        var interval = DateComponents()
        interval.day = 1
        
        let weightQuery = HKStatisticsCollectionQuery(quantityType: weightSampleType, quantitySamplePredicate: predicate, options: [.discreteAverage], anchorDate: startDate, intervalComponents: interval)
        weightQuery.initialResultsHandler = { query, result, error in
            if let myResult = result {
                myResult.enumerateStatistics(from: startDate, to: Date()) { (statistics, value) in
                    if let count = statistics.averageQuantity() {
                        let val = count.doubleValue(for: HKUnit.gram())
                        weightPar = val / 1000
                        print("Weight is: \(val) kg")
                    }
                }
            }
        }
        
        healthStore.execute(weightQuery)
    }
}

struct HealthCard: View {
    @State var name: String
    @State var image: String
    @State var value: Double
    @State var unit: String
    
    var body: some View {
        ZStack {
            Color.black
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: image)
                        .resizable()
                        .frame(width: 35, height: 35, alignment: .center)
                        .foregroundColor(.green)
                        .padding(5)
                    
                    Text("\(name)")
                        .bold()
                        .foregroundColor(.green)
                        .font(.custom("Avenir-Medium", size: 16))
                        .minimumScaleFactor(0.5)
                        .padding(.leading, 5)
                }
                
                Text("\(value, specifier: "%.1f") \(unit)")
                    .bold()
                    .foregroundColor(.white)
                    .font(.custom("Avenir-Medium", size: 17))
                    .minimumScaleFactor(0.5)
                    .padding(5)
            }
        }
        .clipped()
        .cornerRadius(10.0)
        .padding(5)
        
    }
    
}

struct HealthStats_Previews: PreviewProvider {
    static var previews: some View {
        HealthStats()
    }
}
