//
//  CovidInfection.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import Foundation

struct CovidInfection: Hashable, Decodable {
    let Global: GlobalInfections
    let Countries: [CountryInfections]
    
    init() {
        self.Global = GlobalInfections()
        self.Countries = [CountryInfections]()
    }
}

struct GlobalInfections: Hashable, Decodable {
    let TotalConfirmed: Int
    let TotalDeaths: Int
    let TotalRecovered: Int
    
    init() {
        self.TotalConfirmed = 0
        self.TotalDeaths = 0
        self.TotalRecovered = 0
    }
}

struct CountryInfections: Hashable, Decodable {
    let Country: String
    let CountryCode: String
    let TotalConfirmed: Int
    let TotalDeaths: Int
    let TotalRecovered: Int
    
    init() {
        self.Country = "none"
        self.CountryCode = "none"
        self.TotalConfirmed = 0
        self.TotalDeaths = 0
        self.TotalRecovered = 0
    }
}
