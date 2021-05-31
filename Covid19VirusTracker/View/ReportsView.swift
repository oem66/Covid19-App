//
//  ReportsView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI
import SwiftUICharts

struct ReportsView: View {
    
    @State var covidStats: CovidInfection = CovidInfection()
    
    var body: some View {
        
        // Global stats
        var globalConfirmed = covidStats.Global.TotalConfirmed
        var globalDeaths = covidStats.Global.TotalDeaths
        var globalRecovered = covidStats.Global.TotalRecovered
        
        //        ZStack {
        //            Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
        //
        //            HStack {
        //                PieChartView(data: [Double(globalConfirmed),Double(globalDeaths),Double(globalRecovered)], title: "Global stats", legend: "Infections")
        //
        //                Spacer()
        //
        //                VStack(alignment: .leading) {
        //                    Text("Confirmed: \(globalConfirmed)")
        //                        .bold()
        //                        .foregroundColor(.orange)
        //                        .font(.custom("Avenir-Medium", size: 14))
        //                        .padding(.bottom, 10)
        //                        .lineLimit(1)
        //                        .minimumScaleFactor(0.5)
        //
        //                    Text("Deaths: \(globalDeaths)")
        //                        .bold()
        //                        .foregroundColor(.red)
        //                        .font(.custom("Avenir-Medium", size: 14))
        //                        .padding(.bottom, 10)
        //                        .lineLimit(1)
        //                        .minimumScaleFactor(0.5)
        //
        //                    Text("Recovered: \(globalRecovered)")
        //                        .bold()
        //                        .foregroundColor(.green)
        //                        .font(.custom("Avenir-Medium", size: 14))
        //                        .padding(.bottom, 10)
        //                        .lineLimit(1)
        //                        .minimumScaleFactor(0.5)
        //                }
        //            }
        //            .padding(.all, 5)
        //            .navigationTitle("Infection reports")
        //            .onAppear {
        //                getCovidStats()
        //            }
        //        }
        
        List(covidStats.Countries, id: \.self) { countryStat in
            
            // Country stats
            let countryName = countryStat.Country
            let countryConfirmed = countryStat.TotalConfirmed
            let countryDeaths = countryStat.TotalDeaths
            let countryRecovered = countryStat.TotalRecovered
            
            HStack {
                BarChartView(data: ChartData(values: [("Confirmed",countryConfirmed), ("Deaths",countryDeaths), ("Recovered",countryRecovered)]), title: "Infection stats", legend: "\(countryName)")
                VStack(alignment: .leading) {
                    Text("Country: \(countryName)")
                        .bold()
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 16))
                        .padding(.bottom, 10)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Text("Confirmed: \(countryConfirmed)")
                        .bold()
                        .foregroundColor(.orange)
                        .font(.custom("Avenir-Medium", size: 14))
                        .padding(.bottom, 10)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Text("Deaths: \(countryDeaths)")
                        .bold()
                        .foregroundColor(.red)
                        .font(.custom("Avenir-Medium", size: 14))
                        .padding(.bottom, 10)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                    
                    Text("Recovered: \(countryRecovered)")
                        .bold()
                        .foregroundColor(.green)
                        .font(.custom("Avenir-Medium", size: 14))
                        .padding(.bottom, 10)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                }
                .padding(.leading, 10)
            }
        }
        .padding(.all, 5)
        .navigationTitle("Infection reports")
        .onAppear {
            getCovidStats()
        }
        
        Spacer()
        
    }
}

extension ReportsView {
    
    func getCovidStats() {
        Webservice().getCovidInfections { result in
            switch result {
            case .success(let stats):
                DispatchQueue.main.async {
                    self.covidStats = stats
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView()
    }
}
