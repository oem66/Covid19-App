//
//  CountryCovidView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct CountryCovidView: View {
    
    @State var covidStats: CovidInfection = CovidInfection()
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Image("worldwide")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .leading)
                
                VStack {
                    Text("Confirmed")
                        .fontWeight(.semibold)
                    Text("\(covidStats.Global.TotalConfirmed)")
                        .bold()
                        .foregroundColor(.orange)
                }
                
                VStack {
                    Text("Death")
                        .fontWeight(.semibold)
                    Text("\(covidStats.Global.TotalDeaths)")
                        .bold()
                        .foregroundColor(.red)
                }
                
                VStack {
                    Text("Recovered")
                        .fontWeight(.semibold)
                    Text("\(covidStats.Global.TotalRecovered)")
                        .bold()
                        .foregroundColor(.green)
                }
            }
            
            List(covidStats.Countries, id: \.self) { countryStat in
                HStack(alignment: .center, spacing: 10) {
                    Text(countryStat.Country)
                        .bold()
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    HStack {
                        Text("\(countryStat.TotalConfirmed)")
                            .bold()
                            .foregroundColor(.orange)
                        
                        Text("\(countryStat.TotalDeaths)")
                            .bold()
                            .foregroundColor(.red)
                        
                        Text("\(countryStat.TotalRecovered)")
                            .bold()
                            .foregroundColor(.green)
                    }
                    .padding(.leading, 10)
                }
            }
            .onAppear {
                getCovidStats()
            }
        }
        .navigationTitle("Global stats")
    }
}

extension CountryCovidView {
    
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

struct CountryCovidView_Previews: PreviewProvider {
    static var previews: some View {
        CountryCovidView()
    }
}
