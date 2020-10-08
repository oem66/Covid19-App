//
//  GlobalCasesViewModel.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import Foundation

class GlobalCaseViewModel {
    
    var globalCase: GlobalCases
    
    init(globalCase: GlobalCases) {
        self.globalCase = globalCase
    }
    
    let id: UUID = UUID()
    
    var newConfirmed: Int {
        return self.globalCase.newConfirmed
    }
    
    var totalConfirmed: Int {
        return self.globalCase.totalConfirmed
    }
    
    var newDeaths: Int {
        return self.globalCase.newDeaths
    }
    
    var confirmedDeaths: Int {
        return self.globalCase.totalDeaths
    }
    
    var newRecovered: Int {
        return self.globalCase.newRecovered
    }
    
    var totalRecovered: Int {
        return self.globalCase.totalRecovered
    }
}
