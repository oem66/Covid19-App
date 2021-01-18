//
//  HomeView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/2/20.
//

import SwiftUI
import SafariServices

struct HomeView: View {
    var body: some View {
        HomeViewContent()
            .background(Color.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HomeViewContent: View {
    var body: some View {
        ZStack {
            Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        SymptomsViewCard()
                        Spacer()
                        PreventionViewCard()
                    }
                    
                    HStack {
                        ReportsViewCard()
                        Spacer()
                        CountryCovidViewCard()
                    }
                }
                .padding([.leading, .trailing, .bottom], 15)
            }
        }
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("Requirements")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 22))
                    .padding(.bottom, 2)
                    .minimumScaleFactor(0.5)
                
                Text("Help you prevent virus better")
                    .foregroundColor(Color.gray)
                    .font(.custom("Avenir-Medium", size: 15))
                    .padding(.bottom, 10)
                    .minimumScaleFactor(0.5)
            }
            
            HStack {
                MaskViewBubble()
                GlovesViewBubble()
                AlcoholViewBubble()
                SoapViewBubble()
            }
        }
        .navigationTitle("Prevent Covid-19")
        .navigationBarItems(trailing: NavigationLink(destination: FavoriteCountries()){
            Image(systemName: "star.fill")
        })
        .navigationBarColor(backgroundColor: Color.customBlue, tintColor: .white)
    }
}


struct SymptomsViewCard: View {
    var body: some View {
        NavigationLink(destination: SymptomsView()) {
            ZStack {
                Color(red: 37/255, green: 96/255, blue: 245/255)
                VStack(alignment: .leading) {
                    
                    Image("cough")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("Symptoms")
                        .font(.custom("Avenir-Medium", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 5)
                        .minimumScaleFactor(0.5)
                    
                    Text("Signs identify the risk of infection")
                        .font(.custom("Avenir-Medium", size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        .minimumScaleFactor(0.5)
                    
                }
                .padding(.all, 10)
            }
            .clipped()
            .cornerRadius(15.0)
        }
    }
}

struct PreventionViewCard: View {
    var body: some View {
        NavigationLink(destination: PreventionView()) {
            ZStack {
                Color(red: 37/255, green: 96/255, blue: 245/255)
                VStack(alignment: .leading) {
                    
                    Image("disease-prevention")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("Prevention")
                        .font(.custom("Avenir-Medium", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 5)
                        .minimumScaleFactor(0.5)
                    
                    Text("Help you avoid the risk of infection")
                        .font(.custom("Avenir-Medium", size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        .minimumScaleFactor(0.5)
                    
                }
                .padding(.all, 10)
            }
            .clipped()
            .cornerRadius(15.0)
        }
    }
}

struct ReportsViewCard: View {
    var body: some View {
        NavigationLink(destination: ReportsView()) {
            ZStack {
                Color(red: 37/255, green: 96/255, blue: 245/255)
                VStack(alignment: .leading) {
                    
                    Image("medical-report")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("Reports")
                        .font(.custom("Avenir-Medium", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 5)
                        .minimumScaleFactor(0.5)
                    
                    Text("Data related to the disease")
                        .font(.custom("Avenir-Medium", size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        .minimumScaleFactor(0.5)
                    
                }
                .padding(.all, 10)
            }
            .clipped()
            .cornerRadius(15.0)
        }
    }
}

struct CountryCovidViewCard: View {
    var body: some View {
        NavigationLink(destination: CountryCovidView()) {
            ZStack {
                Color(red: 37/255, green: 96/255, blue: 245/255)
                VStack(alignment: .leading) {
                    
                    Image("worldwide")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .padding(.bottom, 10)
                    
                    Text("Countries")
                        .font(.custom("Avenir-Medium", size: 20))
                        .fontWeight(.semibold)
                        .foregroundColor(.yellow)
                        .padding(.bottom, 5)
                        .minimumScaleFactor(0.5)
                    
                    Text("Infected countries by COVID-19")
                        .font(.custom("Avenir-Medium", size: 15))
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.bottom, 10)
                        .minimumScaleFactor(0.5)
                    
                }
                .padding(.all, 10)
            }
            .clipped()
            .cornerRadius(15.0)
        }
    }
}

struct MaskViewBubble: View {
    var body: some View {
        NavigationLink(destination: MaskView()) {
            VStack {
                ZStack {
                    Color(red: 250/255, green: 222/255, blue: 226/255)
                    Image("mask")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40, alignment: .center)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                
                Text("Mask")
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
            }
            .padding(10)
        }
    }
}

struct GlovesViewBubble: View {
    var body: some View {
        NavigationLink(destination: GlovesView()) {
            VStack {
                ZStack {
                    Color(red: 245/255, green: 243/255, blue: 223/255)
                    Image("gloves")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40, alignment: .center)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                
                Text("Gloves")
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
            }
            .padding(10)
        }
    }
}

struct AlcoholViewBubble: View {
    var body: some View {
        NavigationLink(destination: AlcoholView()) {
            VStack {
                ZStack {
                    Color(red: 210/255, green: 217/255, blue: 253/255)
                    Image("hand-sanitizer")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40, alignment: .center)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                
                Text("Alcohol")
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
            }
            .padding(10)
        }
    }
}

struct SoapViewBubble: View {
    var body: some View {
        NavigationLink(destination: SoapView()) {
            VStack {
                ZStack {
                    Color(red: 222/255, green: 225/255, blue: 235/255)
                    Image("soap")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40, alignment: .center)
                }
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                
                Text("Soap")
                    .font(.custom("Avenir-Medium", size: 15))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                
            }
            .padding(10)
        }
    }
}
