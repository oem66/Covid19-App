//
//  MaskView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct MaskView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("CDC recommends that people wear masks in public settings, like on public and mass transportation, at events and gatherings, and anywhere they will be around other people.")
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 17))
                    .minimumScaleFactor(0.5)
                
                Text("Overview")
                    .bold()
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 25))
                    .minimumScaleFactor(0.5)
                    .padding(.top, 20)
                
                Text("\(Constants().overview)")
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 17))
                    .minimumScaleFactor(0.5)
                
                Text("How to Select")
                    .bold()
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 25))
                    .minimumScaleFactor(0.5)
                    .padding(.top, 20)
                
                Text("When selecting a mask, there are many choices. Here are some do’s and don’ts.")
                    .lineLimit(nil)
                    .foregroundColor(.black)
                    .font(.custom("Avenir-Medium", size: 17))
                    .minimumScaleFactor(0.5)
                
                VStack(alignment: .center) {
                    Image("do-choose-masks-medium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .padding()
                    
                    Image("do-NOT-choose-masks-medium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .padding()
                    
                    Image("caution-gaiters-face-shields-2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .padding()
                    
                    Image("special-situations-children-medium")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .padding()
                }
                
                VStack {
                    Text("How to Wear")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                    
                    Text("Wear a mask correctly and consistently for the best protection.")
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                    
                    Text("\(Constants().howToWearList)")
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                }
                
                
                VStack {
                    Text("Do wear a mask that")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                        .padding(.top, 20)
                    
                    Text("\(Constants().doWearMaskThat)")
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                }
                
                VStack {
                    Text("How NOT to wear a mask")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                        .padding(.top, 20)
                    
                    Image("how-NOT-to-wear-mask")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 340, height: 280, alignment: .center)
                        .padding()
                    
                    Text("How to take off a mask")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                    
                    Image("how-to-take-off-mask-large")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 340, height: 280, alignment: .center)
                        .padding()
                }
                
                VStack {
                    Text("How to Clean")
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 25))
                        .minimumScaleFactor(0.5)
                    
                    Text("Masks should be washed regularly. Always remove masks correctly and wash your hands after handling or touching a used mask.")
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                    
                    Text("\(Constants().howToCleanList)")
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                }
            }
        }
        .padding(.all, 15)
        .navigationTitle("Mask")
    }
}

struct MaskView_Previews: PreviewProvider {
    static var previews: some View {
        MaskView()
    }
}
