//
//  GlovesView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct GlovesView: View {
    var body: some View {
        ScrollView {
            GlovesContentView()
                .padding(.all, 15)
        }
        .navigationTitle("Gloves")
    }
}

struct GlovesView_Previews: PreviewProvider {
    static var previews: some View {
        GlovesView()
    }
}

struct GlovesContentView: View {
    var body: some View {
        VStack {
            Text("When to use gloves?")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text("\(Constants().whenCleaningList)")
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
            
            Text("When caring for someone who is sick: ")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text("If you are providing care to someone who is sick at home or in another non-healthcare setting")
                .foregroundColor(.black)
            
            Text("\(Constants().whenCaringForSomeone)")
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
            
            Text("When gloves aren’t needed?")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text("\(Constants().whenGlovesArentNedded)")
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
            
            Text("Protect yourself in other ways")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            
            Text("\(Constants().youCanProtectYourself)")
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
            
        }
    }
}
