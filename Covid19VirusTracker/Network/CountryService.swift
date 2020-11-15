//
//  CountryService.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 11/13/20.
//

import Foundation
import Combine

final class CoountryService {
    var url = URL(string: "https://api.covid19api.com/summary")
    
//    var components: URLComponents {
//        var components = URLComponents()
//        components.scheme = "https"
//        components.host = "api.covid19api.com"
//        components.path = "/summary"
//        return components
//    }
    
//    func fetchCountries() -> AnyPublisher<CovidInfection, Error> {
//        return URLSession.shared.dataTaskPublisher(for: components.url!)
//            .map {$0.data}
//            .decode(type: CovidInfection.self, decoder: JSONDecoder())
//            .receive(on: DispatchQueue.main)
//            .eraseToAnyPublisher()
//    }
}
