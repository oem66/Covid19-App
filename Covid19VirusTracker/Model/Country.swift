//
//  Country.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//
import Foundation
 
struct Country: Hashable, Decodable {
    let name: String
    let alpha2Code: String
    let flag: String
}
