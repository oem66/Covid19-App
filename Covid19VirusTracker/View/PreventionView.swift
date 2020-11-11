//
//  PreventionView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct PreventionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                PreventionPhysicalDistance()
                    .padding(.bottom, 20)
                PreventionHygiene()
                    .padding(.bottom, 20)
                PreventionUseMask()
                    .padding(.bottom, 20)
                PreventionCleanSurface()
                    .padding(.bottom, 20)
                
                Text("How to prevent?")
                    .bold()
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 25))
                    .minimumScaleFactor(0.5)
                    .padding(.bottom, 10)
                
                Text(Constants().preventionText)
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 17))
                    .minimumScaleFactor(0.5)
            }
            .padding(.all, 15)
        }
        .navigationTitle("Prevention")
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}

struct PreventionPhysicalDistance: View {
    var body: some View {
        HStack {
            Image("avoid")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Physical distance")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionPhysicalDistance)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
        }
    }
}

struct PreventionHygiene: View {
    var body: some View {
        HStack {
            Image("desinfectant")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Hygiene")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionHygiene)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
        }
    }
}

struct PreventionUseMask: View {
    var body: some View {
        HStack {
            Image("face-mask")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Use mask")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionUseMask)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
        }
    }
}

struct PreventionCleanSurface: View {
    var body: some View {
        HStack {
            Image("hand-sanitizer-2")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Clean surface")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionCleanSurface)
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 17))
                .minimumScaleFactor(0.5)
        }
    }
}
