//
//  SymptomsView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct SymptomsView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
                
                Image("pneumonia")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .padding(.bottom, 30)
            }
            .frame(height: 180, alignment: .center)
            
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("COVID-19 Symptoms")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                    
                    Text("Most common symptoms:")
                        .font(.custom("Helvetica Neue", size: 20))
                    
                    Text("- fever")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- dry cough")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- tiredness")
                        .font(.custom("Helvetica Neue", size: 14))
                }
                .padding(.bottom, 15)
                
                VStack(alignment: .leading) {
                    Text("Less common symptoms:")
                        .font(.custom("Helvetica Neue", size: 20))
                    
                    Text("- aches and pains")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- sore throat")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- diarrhoea")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- conjunctivitis")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- headache")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- loss of taste or smell")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- a rash on skin, or discolouration of fingers or toes")
                        .font(.custom("Helvetica Neue", size: 14))
                }
                .padding(.bottom, 15)
                
                VStack(alignment: .leading) {
                    Text("Serious symptoms:")
                        .font(.custom("Helvetica Neue", size: 20))
                    
                    Text("- difficulty breathing or shortness of breath")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- chest pain or pressure")
                        .font(.custom("Helvetica Neue", size: 14))
                    Text("- loss of speech or movement")
                        .font(.custom("Helvetica Neue", size: 14))
                }
                .padding(.bottom, 15)
                
                VStack(alignment: .leading) {
                    Text("Seek immediate medical attention if you have serious symptoms. Always call before visiting your doctor or health facility.")
                        .padding(.bottom, 5)
                        .font(.custom("Helvetica Neue", size: 14))
                    
                    Text("People with mild symptoms who are otherwise healthy should manage their symptoms at home.")
                        .padding(.bottom, 5)
                        .font(.custom("Helvetica Neue", size: 14))
                    
                    Text("On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.")
                        .padding(.bottom, 5)
                        .font(.custom("Helvetica Neue", size: 14))
                }
            }
        }
        .padding([.leading, .trailing, .bottom], 15)
    }
}

struct SymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsView()
    }
}
