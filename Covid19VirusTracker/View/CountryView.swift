//
//  CountryView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import SwiftUI

struct CountryView: View {
    
    @Binding var textSearch: String
    @State private var isEditing = false
    
    @State private var countries: [Country] = [Country]()
    @State private var flagImage: UIImage = UIImage()
    
    var body: some View {
        HStack {
            TextField("Search ...", text: $textSearch)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                 
                        if isEditing {
                            Button(action: {
                                self.textSearch = ""
                            }) {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 15)
                            }
                        }
                    }
                )
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.textSearch = ""
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
        
        // (countries.filter({ self.text.isEmpty ? true : $0.name.contains(self.text), id: \.name}) /*countries, id: \.name*/)
        
        List(countries.filter({ textSearch.isEmpty ? true : $0.name.contains(textSearch)}), id: \.name) { country in
            HStack {
                
                Text(country.name)
                    .bold()
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(Color.black)
                
                Text(country.alpha2Code)
                    .bold()
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(Color.orange)
                
                Image(country.flag)
            }
            .padding()
        }
        .onAppear {
            getCountriesData()
        }
        .navigationTitle(Text("Countries"))
    }
}

extension CountryView {
    
    func getCountriesData() {
        Webservice().getCountries { result in
            switch result {
            case .success(let countries):
                DispatchQueue.main.async {
                    self.countries = countries
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(textSearch: .constant(""))
    }
}
