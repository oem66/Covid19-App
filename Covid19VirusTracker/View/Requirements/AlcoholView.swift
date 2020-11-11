//
//  AlcoholView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct AlcoholView: View {
    var body: some View {
        ScrollView {
            AlcoholContentView()
                .padding(.all, 15)
        }
        .navigationTitle("Disinfection")
    }
}

struct AlcoholView_Previews: PreviewProvider {
    static var previews: some View {
        AlcoholView()
    }
}

struct AlcoholContentView: View {
    var body: some View {
        VStack {
            Text("Background")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text(Constants().alcoholBackground)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
            
            Text("Purpose")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text(Constants().alcoholPurpose)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
            
            Text("General recommendations for cleaning and disinfection of households with people isolated in home care (e.g. suspected/confirmed to have COVID-19)")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text(Constants().alcoholGeneralRecommendations)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
        }
    }
}
