//
//  ContentView.swift
//  Clase24OnboardingView
//
//  Created by Escurra Colquis on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var selectionOnboarding: Int = 0
    @Binding var showOnboarding: Bool
    
    // MARK: - Functions
    func goNext() {
        withAnimation {
            selectionOnboarding += 1
        }
    }
    
    // MARK: - View
    var body: some View {
        VStack {
                TabView(selection: $selectionOnboarding) {
                    OnboardingPageView(imageName: "person",
                                       title: "Bienvenido",
                                       description: "Desarrollo en SwiftUI con IOS 17 - 18 en este año por el dev Maurihño Escurra",
                                       showDoneButton: false,
                                       nextAction: goNext)
                    .tag(0)
                    
                    OnboardingPageView(imageName: "clock",
                                       title: "Desarrollar aplicaciones",
                                       description: "Programar te debe de gustar siempre todos los días.",
                                       showDoneButton: false,
                                       nextAction: goNext)
                    .tag(1)
                    
                    OnboardingPageView(imageName: "phone",
                                       title: "Empezar",
                                       description: "Ahora vamos a ver la parte visual y código en xCode",
                                       showDoneButton: true,
                                       nextAction: {
                        showOnboarding = false
                    })
                    .tag(2)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onAppear {
                    UIPageControl.appearance().currentPageIndicatorTintColor = .systemCyan
                    UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
                }
        }
        .tint(.cyan)
    }
}


#Preview {
    ContentView(showOnboarding: .constant(true))
}
