//
//  CountryInfectionStatsVM.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 11/13/20.
//

import SwiftUI
import Combine

class CountryInfectionStatsVM: ObservableObject {
    
    private let countryStatsService = CoountryService()
    @Published var countryStatsVM = CountryInfections()
    var cancellable: AnyCancellable?
    
//    func fetchCountryStats() {
//        cancellable = countryStatsService.fetchCountries().sink(receiveCompletion: { _ in
//            
//        }, receiveValue: { countryStats in
//            self.countryStatsVM = countryStats.Countries.map { CountryInfectionStatsVM($0) }
//            print(self.countryStatsVM)
//        })
//    }
}
