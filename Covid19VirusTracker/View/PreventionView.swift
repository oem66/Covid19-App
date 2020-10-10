//
//  PreventionView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct PreventionView: View {
    var body: some View {
        
        var preventionText = """
        People who felt unwell should stay home and see a doctor. This will help person get the right advice. When convalescing at home, people need to eat, sleep and use their own clothes with family members. In particular, if you feel short of breath, call a physician and seek treatment immediately.
        """
        
        ZStack {
            Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        
//                        NavigationLink(destination: SymptomsView()) {
                            ZStack {
                                Color(red: 37/255, green: 96/255, blue: 245/255)
                                VStack(alignment: .leading) {
                                    
                                    Image("avoid")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .leading)
                                        .padding(.bottom, 10)
                                    
                                    Text("Physical distance")
                                        .font(.custom("Avenir-Medium", size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.yellow)
                                        .padding(.bottom, 5)
                                        .minimumScaleFactor(0.5)
                                    
                                    Text("Avoid contact with sick people")
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
//                        }
                        
                        Spacer()
                        
//                        NavigationLink(destination: PreventionView()) {
                            ZStack {
                                Color(red: 37/255, green: 96/255, blue: 245/255)
                                VStack(alignment: .leading) {
                                    
                                    Image("desinfectant")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .leading)
                                        .padding(.bottom, 10)
                                    
                                    Text("Hygiene")
                                        .font(.custom("Avenir-Medium", size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.yellow)
                                        .padding(.bottom, 5)
                                        .minimumScaleFactor(0.5)
                                    
                                    Text("Wash your hands with soap")
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
//                        }
                        
                        
                    }
                    
                    HStack {
                        
//                        NavigationLink(destination: ReportsView()) {
                            ZStack {
                                Color(red: 37/255, green: 96/255, blue: 245/255)
                                VStack(alignment: .leading) {
                                    
                                    Image("face-mask")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .leading)
                                        .padding(.bottom, 10)
                                    
                                    Text("Use mask")
                                        .font(.custom("Avenir-Medium", size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.yellow)
                                        .padding(.bottom, 5)
                                        .minimumScaleFactor(0.5)
                                    
                                    Text("Use medical face mask")
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
//                        }
                        
//                        NavigationLink(destination: CountryCovidView()){
                            ZStack {
                                Color(red: 37/255, green: 96/255, blue: 245/255)
                                VStack(alignment: .leading) {
                                    
                                    Image("hand-sanitizer-2")
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .leading)
                                        .padding(.bottom, 10)
                                    
                                    Text("Clean surface")
                                        .font(.custom("Avenir-Medium", size: 20))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.yellow)
                                        .padding(.bottom, 5)
                                        .minimumScaleFactor(0.5)
                                    
                                    Text("Clean surface with sanitiser")
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
//                        }
                        
                    }
                }
                .padding([.leading, .trailing, .bottom], 15)
            }
            .navigationTitle(Text("Prevention"))
            
        }
        
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("How to prevent?")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 22))
                        .minimumScaleFactor(0.5)
                    
                    Text(preventionText)
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 15))
                        .minimumScaleFactor(0.5)
                }
            }
        }
        .padding([.top, .leading, .trailing, .bottom], 15)
        .padding(.top, 5)
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}
