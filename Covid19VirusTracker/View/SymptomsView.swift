//
//  SymptomsView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/5/20.
//

import SwiftUI

struct SymptomsView: View {
    var body: some View {
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
                    Text(Constants().sympthomText)
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
