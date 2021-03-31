//
//  SoapView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct SoapView: View {
    var body: some View {
        ScrollView {
            SoapContent()
                .padding(.all, 15)
        }
        .navigationTitle("Wash hands")
    }
}

struct SoapView_Previews: PreviewProvider {
    static var previews: some View {
        SoapView()
    }
}

struct SoapContent: View {
    var body: some View {
        VStack {
            SoapWashHands()
                .padding(.bottom, 20)
            SoapAvoidContact()
                .padding(.bottom, 20)
            SoapCoverMouthMask()
                .padding(.bottom, 20)
            SoapCoverMouth()
                .padding(.bottom, 20)
            SoapTrackHealth()
                .padding(.bottom, 20)
        }
    }
}

struct SoapWashHands: View {
    var body: some View {
        HStack {
            Image("hand-washing")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Wash your hands often")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().soapWashHands)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct SoapAvoidContact: View {
    var body: some View {
        HStack {
            Image("social-distancing")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Avoid close contact")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().soapAvoidContact)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct SoapCoverMouth: View {
    var body: some View {
        HStack {
            Image("sneeze")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Cover your mouth and nose with a mask when around others")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().soapCoverSneezes)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct SoapCoverMouthMask: View {
    var body: some View {
        HStack {
            Image("mask")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Cover your mouth and nose with a mask when around others")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().soapCoverMouth)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}

struct SoapTrackHealth: View {
    var body: some View {
        HStack {
            Image("doctor")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Monitor Your Health Daily")
                .bold()
                .lineLimit(nil)
                .foregroundColor(.black)
                .font(.custom("Avenir-Medium", size: 25))
                .minimumScaleFactor(0.5)
                .padding(.top, 20)
        }
        .padding(.bottom, 5)
        
        VStack {
            Text(Constants().soapMonitorHealth)
                .font(.custom("Avenir-Medium", size: 16))
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .minimumScaleFactor(0.5)
                .padding(10)
        }
    }
}
