//
//  PreventionView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct PreventionView: View {
    var body: some View {
//        ZStack {
//            Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
//            
//            VStack(alignment: .leading) {
//                VStack {
//                    HStack {
//                            ZStack {
//                                Color(red: 37/255, green: 96/255, blue: 245/255)
//                                VStack(alignment: .leading) {
//                                    
//                                    Image("avoid")
//                                        .resizable()
//                                        .frame(width: 40, height: 40, alignment: .leading)
//                                        .padding(.bottom, 10)
//                                    
//                                    Text("Physical distance")
//                                        .font(.custom("Avenir-Medium", size: 20))
//                                        .fontWeight(.semibold)
//                                        .foregroundColor(.yellow)
//                                        .padding(.bottom, 5)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                    Text("Avoid contact with sick people")
//                                        .font(.custom("Avenir-Medium", size: 15))
//                                        .fontWeight(.medium)
//                                        .foregroundColor(.white)
//                                        .padding(.bottom, 10)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                }
//                                .padding(.all, 10)
//                            }
//                            .clipped()
//                            .cornerRadius(15.0)
//                        
//                        Spacer()
//                        
//                            ZStack {
//                                Color(red: 37/255, green: 96/255, blue: 245/255)
//                                VStack(alignment: .leading) {
//                                    
//                                    Image("desinfectant")
//                                        .resizable()
//                                        .frame(width: 40, height: 40, alignment: .leading)
//                                        .padding(.bottom, 10)
//                                    
//                                    Text("Hygiene")
//                                        .font(.custom("Avenir-Medium", size: 20))
//                                        .fontWeight(.semibold)
//                                        .foregroundColor(.yellow)
//                                        .padding(.bottom, 5)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                    Text("Wash your hands with soap")
//                                        .font(.custom("Avenir-Medium", size: 15))
//                                        .fontWeight(.medium)
//                                        .foregroundColor(.white)
//                                        .padding(.bottom, 10)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                }
//                                .padding(.all, 10)
//                            }
//                            .clipped()
//                            .cornerRadius(15.0)
//                    }
//                    
//                    HStack {
//                            ZStack {
//                                Color(red: 37/255, green: 96/255, blue: 245/255)
//                                VStack(alignment: .leading) {
//                                    
//                                    Image("face-mask")
//                                        .resizable()
//                                        .frame(width: 40, height: 40, alignment: .leading)
//                                        .padding(.bottom, 10)
//                                    
//                                    Text("Use mask")
//                                        .font(.custom("Avenir-Medium", size: 20))
//                                        .fontWeight(.semibold)
//                                        .foregroundColor(.yellow)
//                                        .padding(.bottom, 5)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                    Text("Use medical face mask")
//                                        .font(.custom("Avenir-Medium", size: 15))
//                                        .fontWeight(.medium)
//                                        .foregroundColor(.white)
//                                        .padding(.bottom, 10)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                }
//                                .padding(.all, 10)
//                            }
//                            .clipped()
//                            .cornerRadius(15.0)
//
//                            ZStack {
//                                Color(red: 37/255, green: 96/255, blue: 245/255)
//                                VStack(alignment: .leading) {
//                                    
//                                    Image("hand-sanitizer-2")
//                                        .resizable()
//                                        .frame(width: 40, height: 40, alignment: .leading)
//                                        .padding(.bottom, 10)
//                                    
//                                    Text("Clean surface")
//                                        .font(.custom("Avenir-Medium", size: 20))
//                                        .fontWeight(.semibold)
//                                        .foregroundColor(.yellow)
//                                        .padding(.bottom, 5)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                    Text("Clean surface with sanitiser")
//                                        .font(.custom("Avenir-Medium", size: 15))
//                                        .fontWeight(.medium)
//                                        .foregroundColor(.white)
//                                        .padding(.bottom, 10)
//                                        .minimumScaleFactor(0.5)
//                                    
//                                }
//                                .padding(.all, 10)
//                            }
//                            .clipped()
//                            .cornerRadius(15.0)
//                    }
//                }
//                .padding([.leading, .trailing, .bottom], 15)
//            }
//            .navigationTitle(Text("Prevention"))
//            
//        }
        
        VStack {
            ScrollView {
                VStack(alignment: .leading) {
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
