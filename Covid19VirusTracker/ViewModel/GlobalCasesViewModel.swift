//
//  GlobalCasesViewModel.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import Foundation
import Combine

class GlobalCasesViewModel: ObservableObject {
    
    @Published var globalCases = GlobalCaseViewModel.self
    
    func getGlobalCasesData() {
        Webservice().getGlobalSummary { result in
            self.globalCases = result
            if let result = result {
                DispatchQueue.main.async {
                    self.globalCases = result.map(GlobalCaseViewModel.init)
                }
            }
        }
    }
}
