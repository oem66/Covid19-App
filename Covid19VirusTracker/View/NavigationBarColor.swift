//
//  NavigationBarColor.swift
//  Covid19VirusTracker
//
//  Created by Omer Rahmanovic on 10/29/20.
//

import SwiftUI
import UIKit

struct NavigationBarColor: ViewModifier {
    
    init(backgroundColor: UIColor, tintColor: UIColor) {
        let coloredAppearance = UINavigationBarAppearance()
            coloredAppearance.configureWithOpaqueBackground()
            coloredAppearance.backgroundColor = backgroundColor
            coloredAppearance.titleTextAttributes = [.foregroundColor: tintColor]
            coloredAppearance.largeTitleTextAttributes = [.foregroundColor: tintColor]
                           
            UINavigationBar.appearance().standardAppearance = coloredAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
            UINavigationBar.appearance().compactAppearance = coloredAppearance
            UINavigationBar.appearance().tintColor = tintColor
    }
    
    func body(content: Content) -> some View {
        content
    }
}
