//
//  GlovesView.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

struct GlovesView: View {
    var body: some View {
        
        let whenCleaningList = """
        Practice everyday preventive actions like keeping social distance (at least 6 feet) from others, washing your hands with soap and water for 20 seconds (or using a hand sanitizer with at least 60% alcohol), and wearing a mask when you have to go out in public.
        
        When cleaning:
        When you are routinely cleaning and disinfecting your home.

        - Follow precautions listed on the disinfectant product label, which may include
        - Wearing gloves (reusable or disposable)
        - Having good ventilation by turning on a fan or opening a window to get fresh air into the room you’re cleaning
        - Wash your hands after you have removed the gloves.
        """
        
        let whenCaringForSomeone = """
        - Use disposable gloves when cleaning and disinfecting the area around the person who is sick or other surfaces that may be frequently touched in the home.
        - Use disposable gloves when touching or having contact with blood, stool, or body fluids, such as saliva, mucus, vomit, and urine.
        - After using disposable gloves, throw them out in a lined trash can. Do not disinfect or reuse the gloves.
        - Wash your hands after you have removed the gloves.
        """
        
        let whenGlovesArentNedded = """
        - Wearing gloves outside of these instances (for example, when using a shopping cart or using an ATM) will not necessarily protect you from getting COVID-19 and may still lead to the spread of germs.
        - The best way to protect yourself from germs when running errands and after going out is to regularly wash your hands with soap and water for 20 seconds or use hand sanitizer with at least 60% alcohol.
        """
        
        let youCanProtectYourself = """
        COVID-19 is a respiratory virus and is mainly spread through droplets created when a person who is infected coughs, sneezes, or talks.
        You can protect yourself by

        - Keeping social distance (at least 6 feet) from others
        - Washing your hands with soap and water for 20 seconds (or using a hand sanitizer with at least 60% alcohol) at key times
        - Practicing everyday preventive actions
        """
        ScrollView {
            VStack {
                Text("When to use gloves?")
                    .foregroundColor(.black)
                
                Text("\(whenCleaningList)")
                    .foregroundColor(.black)
                
                Text("When caring for someone who is sick: ")
                    .foregroundColor(.black)
                
                Text("If you are providing care to someone who is sick at home or in another non-healthcare setting")
                    .foregroundColor(.black)
                
                Text("\(whenCaringForSomeone)")
                    .foregroundColor(.black)
                
                Text("When gloves aren’t needed?")
                    .foregroundColor(.black)
                
                Text("\(whenGlovesArentNedded)")
                    .foregroundColor(.black)
                
                Text("Protect yourself in other ways")
                    .foregroundColor(.black)
                
                Text("\(youCanProtectYourself)")
                    .foregroundColor(.black)
                
            }
        }
        .padding(.all, 15)
        .navigationTitle("Gloves")
    }
}

struct GlovesView_Previews: PreviewProvider {
    static var previews: some View {
        GlovesView()
    }
}
