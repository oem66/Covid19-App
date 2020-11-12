//
//  CountryCovidView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI
import Foundation

struct CountryCovidView: View {
    
    @State var covidStats: CovidInfection = CovidInfection()
    
    let queue = DispatchQueue(
        label: "ConcurrentQueue",
        qos: .userInitiated,
        attributes: [.concurrent]
    )
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Image("worldwide")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .leading)
                
                VStack {
                    Text("Confirmed")
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.black)
                    Text("\(covidStats.Global.TotalConfirmed)")
                        .bold()
                        .foregroundColor(.orange)
                        .minimumScaleFactor(0.5)
                }
                
                VStack {
                    Text("Death")
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.black)
                    Text("\(covidStats.Global.TotalDeaths)")
                        .bold()
                        .foregroundColor(.red)
                        .minimumScaleFactor(0.5)
                }
                
                VStack {
                    Text("Recovered")
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.black)
                    Text("\(covidStats.Global.TotalRecovered)")
                        .bold()
                        .foregroundColor(.green)
                        .minimumScaleFactor(0.5)
                }
            }
            .padding(.top, 10)
            
            List(covidStats.Countries, id: \.self) { countryStat in
                ZStack {
                    RoundedRectangle(cornerRadius: 15.0, style: .continuous)
                        .fill(Color.white)
                        .shadow(radius: 10.0)
                    
                    VStack(alignment: .center) {
                        HStack {
                            Spacer()
                            Text(countryStat.Country)
                                .bold()
                                .foregroundColor(.black)
                            Spacer()
                        }
                        
                        HStack(alignment: .center) {
                            Text("\(countryStat.TotalConfirmed)")
                                .bold()
                                .foregroundColor(.orange)
                                .minimumScaleFactor(0.5)
                            
                            Text("\(countryStat.TotalDeaths)")
                                .bold()
                                .foregroundColor(.red)
                                .minimumScaleFactor(0.5)
                            
                            Text("\(countryStat.TotalRecovered)")
                                .bold()
                                .foregroundColor(.green)
                                .minimumScaleFactor(0.5)
                        }
                    }
                    .padding([.top, .bottom], 6.0)
                }
                .padding([.top, .bottom], 10.0)
            }
            .listSeparatorStyle(style: .none)
            .onAppear {
                getCovidStats()
            }

            
        }
        .navigationTitle("Global stats")
    }
}

extension CountryCovidView {
    
    func getCovidStats() {
        queue.async {
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
}

struct CountryCovidView_Previews: PreviewProvider {
    static var previews: some View {
        CountryCovidView()
    }
}
