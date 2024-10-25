//
//  Clase24OnboardingViewApp.swift
//  Clase24OnboardingView
//
//  Created by Escurra Colquis on 24/10/24.
//

import SwiftUI

@main
struct Clase24OnboardingViewApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(showOnboarding: .constant(true))
        }
    }
}
