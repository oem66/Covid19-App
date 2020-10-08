//
//  CountryListViewModel.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import Foundation

class CountryListViewModel: ObservableObject {
    
    @Published var countries = [Country]()
    
    func getCountriesData() {
        Webservice().getCountries { countryList in
            if let countryList = countryList {
                DispatchQueue.main.async {
                    self.countries = countryList.map(CountryViewModel.init)
                }
            }
        }
    }
    
}
