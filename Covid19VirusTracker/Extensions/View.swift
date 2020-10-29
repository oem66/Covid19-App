//
//  View.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI

extension View {
    func navigationBarColor(backgroundColor: UIColor, tintColor: UIColor) -> some View {
        self.modifier(NavigationBarColor(backgroundColor: backgroundColor, tintColor: tintColor))
    }
}
