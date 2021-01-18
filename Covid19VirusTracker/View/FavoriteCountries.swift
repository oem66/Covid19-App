//
//  FavoriteCountries.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 11/10/20.
//

import SwiftUI

// This view will get data from Covid API and Countries API and present both data and calculated statistics based on infection numbers and total population compared to stats of continent or region where country is placed.

// User can take up to 5 favorite countries

struct FavoriteCountries: View {
    
//    @State var usa: Country
//    @State var canada: Country
//    @State var mexico: Country
//    @State var uk: Country
//    @State var germany: Country
//    @State var france: Country
//    @State var spain: Country
//    @State var italy: Country
//    @State var russia: Country
//    @State var ukraine: Country
//    @State var sweden: Country
//    @State var china: Country
//    @State var japan: Country
//    @State var southKorea: Country
//    @State var vietnam: Country
//    @State var indonesia: Country
//    @State var india: Country
//    @State var thailand: Country
//    @State var philipines: Country
//    @State var uae: Country
//    @State var saudiArabia: Country
//    @State var israel: Country
//    @State var qatar: Country
//    @State var iran: Country
//    @State var iraq: Country
//    @State var southAfrica: Country
//    @State var egypt: Country
//    @State var algeir: Country
//    @State var kongo: Country
//    @State var brasil: Country
//    @State var argentina: Country
//    @State var venezuela: Country
//    @State var columbia: Country
//    @State var chile: Country
//    @State var peru: Country
    
    var body: some View {
        ScrollView {
            VStack {
                // North America (USA, Canada, Mexico)
                // Europe (UK, Germany, France, Spain, Italy, Russia, Ukraine, Sweden)
                // Asia (China, Japan, South Korea, Vietnam, Indonesia, India, Thailand, Philipines)
                // Middle East (UAE, Saudi Arabia, Israel, Qatar, Iran, Iraq)
                // Africa (South Africa, Egypt, Algeir, D.R. Kongo)
                // South America (Brasil, Argentina, Venezuela, Columbia, Chile, Peru)
                Text("USA")
              
            }
            .padding(10)
        }
        .navigationTitle(Text("Top countries"))
    }
}

struct FavoriteCountries_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCountries()
    }
}
