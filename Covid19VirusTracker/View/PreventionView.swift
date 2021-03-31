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
            PreventionViewContent()
                .padding(.all, 15)
                .background(Color.white)
        }
        .navigationTitle("Prevention")
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}

struct PreventionViewContent: View {
    var body: some View {
        ZStack {
            Color(red: 44/255, green: 42/255, blue: 232/255)
            VStack(alignment: .leading) {
                PreventionPhysicalDistance()
                    .padding(.bottom, 20)
                PreventionHygiene()
                    .padding(.bottom, 20)
                PreventionUseMask()
                    .padding(.bottom, 20)
                PreventionCleanSurface()
                    .padding(.bottom, 20)
                
                HStack {
                    Spacer()
                    Text("How to prevent?")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.white)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                        .padding(.bottom, 10)
                    Spacer()
                }
                
                Text(Constants().preventionText)
                    .font(.custom("Avenir-Medium", size: 16))
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                    .padding(10)
            }
        }
        .clipped()
        .cornerRadius(10.0)
    }
}

struct PreventionPhysicalDistance: View {
    var body: some View {
        HStack {
            Spacer()
            Image("avoid")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Physical distance")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.white)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
            Spacer()
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionPhysicalDistance)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct PreventionHygiene: View {
    var body: some View {
        HStack {
            Spacer()
            Image("desinfectant")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Hygiene")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.white)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
            Spacer()
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionHygiene)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct PreventionUseMask: View {
    var body: some View {
        HStack {
            Spacer()
            Image("face-mask")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Use mask")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.white)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
            Spacer()
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionUseMask)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct PreventionCleanSurface: View {
    var body: some View {
        HStack {
            Spacer()
            Image("hand-sanitizer-2")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Clean surface")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.white)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
            Spacer()
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().preventionCleanSurface)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}
