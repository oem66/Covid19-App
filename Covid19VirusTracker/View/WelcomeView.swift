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
            ZStack {
                Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
                
                LazyVStack {
                    
                    Image("nurse")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .top)
                    
                    Text("COVID-19")
                        .font(.custom("San Francisco", size: 35))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.top, 50)
                    
                    
                    Text("Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus. Most people who fall sick with COVID-19 will experience mild to moderate symptoms and recover without special treatment.")
                        .font(.custom("San Francisco", size: 13))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    
                    NavigationLink(destination: HomeView()) {
                        HStack {
                            Text("Get Started")
                                .bold()
                                .font(.custom("San Francisco", size: 17))
                                .foregroundColor(.black)
                                .padding()
                            
                            Image(systemName: "chevron.right.square.fill")
                                .foregroundColor(Color(red: 44/255, green: 42/255, blue: 232/255))
                                .padding()
                        }
                    }
                    .background(Color.white)
                    .padding(.bottom, 60)
                    .padding(.top, 60)
                }
                .padding(.all, 30)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
