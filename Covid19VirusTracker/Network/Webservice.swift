//
//  Webservice.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import Foundation

class Webservice {
    
    func getCovidInfections(completion: @escaping (Result<CovidInfection,Error>) -> Void) {
        guard let url = URL(string: "https://api.covid19api.com/summary") else {
            fatalError("Invalid URL!")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            do {
                let covidStats = try! JSONDecoder().decode(CovidInfection.self, from: data!)
                completion(.success(covidStats))
                print(covidStats)
            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }.resume()
    }
    
    func getCountries(completion: @escaping (Result<[Country],Error>) -> Void) {
        guard let url = URL(string: "https://restcountries.eu/rest/v2/all") else {
            fatalError("Invalid URL!")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            do {
                let countries = try! JSONDecoder().decode([Country].self, from: data!)
                completion(.success(countries))
                print(countries)
            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }.resume()
    }
}
