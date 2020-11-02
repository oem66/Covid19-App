//
//  MaskView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct MaskView: View {
    var body: some View {
        let overview = """
        - Wear masks with two or more layers to stop the spread of COVID-19
        - Wear the mask over your nose and mouth and secure it under your chin
        - Masks should be worn by people two years and older
        - Masks should NOT be worn by children younger than two, people who have trouble breathing, or people who cannot remove the mask without assistance
        - Do NOT wear masks intended for healthcare workers, for example, N95 respirators
        - CDC does not recommend the use of gaiters or face shields. Evaluation of these face covers is on-going but effectiveness is unknown at this time.
        - Evaluation of mask and gaiter materials and structure is ongoing.
        """
        
        let howToWearList = """
        - Be sure to wash your hands before putting on a mask
        - Do NOT touch the mask when wearing it
        """
        
        let doWearMaskThat = """
        - Covers your nose and mouth and secure it under your chin
        - Fits snugly against the sides of your face
        """
        
        let howToCleanList = """
        - Include your mask with your regular laundry
        - Use regular laundry detergent and the warmest appropriate water setting for the cloth used to make the mask
        - Use the highest heat setting and leave in the dryer until completely dry
        """
        
        ScrollView {
            VStack {
                Text("CDC recommends that people wear masks in public settings, like on public and mass transportation, at events and gatherings, and anywhere they will be around other people.")
                    .bold()
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
                
                Text("\(overview)")
                    .bold()
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
                    .bold()
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
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                    
                    Text("\(howToWearList)")
                        .bold()
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
                    
                    Text("\(doWearMaskThat)")
                        .bold()
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
                        .bold()
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                    
                    Text("\(howToCleanList)")
                        .bold()
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
