//
//  PreventionView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct PreventionView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Color(red: 44/255, green: 42/255, blue: 232/255)
                
                VStack(alignment: .leading) {
                    ZStack {
                        Color(red: 37/255, green: 96/255, blue: 245/255)
                        HStack {
                            Image("avoid")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.trailing, 10)
                            
                            Text("Avoid contact with sick people")
                                .foregroundColor(.white)
                                .font(.custom("Avenir-Medium", size: 15))
                        }
                    }
                    .padding([.leading, .trailing, .bottom, .top], 15)
                    
                    ZStack {
                        HStack {
                            Image("desinfectant")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.trailing, 10)
                            
                            Text("Wash your hands with soap")
                                .foregroundColor(.white)
                                .font(.custom("Avenir-Medium", size: 15))
                        }
                    }
                    .padding([.leading, .trailing, .bottom], 15)
                    
                    ZStack {
                        HStack {
                            Image("face-mask")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.trailing, 10)
                            
                            Text("Use medical face mask")
                                .foregroundColor(.white)
                                .font(.custom("Avenir-Medium", size: 15))
                        }
                    }
                    .padding([.leading, .trailing, .bottom], 15)
                    
                    ZStack {
                        HStack {
                            Image("hand-sanitizer-2")
                                .resizable()
                                .frame(width: 45, height: 45)
                                .padding(.trailing, 10)
                            
                            Text("Clean surface with sanitiser")
                                .foregroundColor(.white)
                                .font(.custom("Avenir-Medium", size: 15))
                        }
                    }
                    .padding([.leading, .trailing, .bottom], 15)
                }
                .padding(.bottom, 15)
            }
            .ignoresSafeArea(.all)
            .padding(.bottom, 10)
            .frame(height: 180)
            
            VStack {
                Text("People who felt unwell should stay home and see a doctor. This will help person get the right advice. When convalescing at home, people need to eat, sleep and use their own clothes with family members. In particular, if you feel short of breath, call a physician and seek treatment immediately.")
                    .foregroundColor(Color(red: 53/255, green: 54/255, blue: 56/255))
                    .font(.custom("Avenir-Medium", size: 15))
            }
            .padding(.all, 10)
        }
    }
}

struct PreventionView_Previews: PreviewProvider {
    static var previews: some View {
        PreventionView()
    }
}
