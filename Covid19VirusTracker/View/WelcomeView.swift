//
//  WelcomeView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView {
            WelcomeViewContent()
        }
        .foregroundColor(.white)
        .navigationBarColor(backgroundColor: Color.customBlue, tintColor: .white)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct WelcomeViewContent: View {
    var body: some View {
        ZStack {
            Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
            
            LazyVStack {
                
                Image("nurse")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .top)
                
                Text("COVID-19")
                    .font(.custom("San Francisco", size: 35))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .minimumScaleFactor(0.5)
                
                Text("Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus. Most people who fall sick with COVID-19 will experience mild to moderate symptoms and recover without special treatment.")
                    .bold()
                    .font(.custom("Avenir-Medium", size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 30)
                    .minimumScaleFactor(0.5)
                
                NavigationLink(destination: HomeView()) {
                    HStack {
                        Text("Get Started")
                            .bold()
                            .font(.custom("Avenir-Medium", size: 17))
                            .foregroundColor(.black)
                            .padding()
                            .minimumScaleFactor(0.5)
                        
                        Image(systemName: "chevron.right.square.fill")
                            .foregroundColor(Color(red: 44/255, green: 42/255, blue: 232/255))
                            .padding()
                    }
                    .padding([.leading, .trailing], 20)
                }
                .background(Color.white)
                .cornerRadius(8.0)
                .padding(.bottom, 60)
                .padding(.top, 60)
            }
            .padding(.all, 30)
        }
    }
}
