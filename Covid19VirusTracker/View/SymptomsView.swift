//
//  SymptomsView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct SymptomsView: View {
    var body: some View {
        
        let sympthomText = """
            Most common symptoms:
            - fever
            - dry cough
            - tiredness
            
            Less common symptoms:
            - aches and pains
            - sore throat
            - diarrhoea
            - conjunctivitis
            - headache
            - loss of taste or smell
            - a rash on skin, or discolouration of fingers or toes
            
            Serious symptoms:
            - difficulty breathing or shortness of breath
            - chest pain or pressure
            - loss of speech or movement

            Seek immediate medical attention if you have serious symptoms.
            Always call before visiting your doctor or health facility.
            People with mild symptoms who are otherwise healthy should manage their symptoms at home.
            On average it takes 5–6 days from when someone is infected with the virus for symptoms to show, however it can take up to 14 days.
        """
        ScrollView {
            VStack {
                ZStack {
                    Color(red: 44/255, green: 42/255, blue: 232/255).edgesIgnoringSafeArea(.all)
                    
                    Image("pneumonia")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .padding([.top, .bottom], 20)
                }
                .frame(height: 180, alignment: .center)
                
                
                VStack(alignment: .leading) {
                    Text(sympthomText)
                        .lineLimit(nil)
                        .foregroundColor(.black)
                        .font(.custom("Avenir-Medium", size: 17))
                        .minimumScaleFactor(0.5)
                }
                .padding(.top, 15)
            }
            .padding([.top, .leading, .trailing, .bottom], 15)
            .padding(.top, 5)
            .navigationTitle(Text("Symptoms"))
        }
    }
    
}


struct SymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsView()
    }
}
