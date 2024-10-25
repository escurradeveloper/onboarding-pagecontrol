//
//  OnboardingPageView.swift
//  Clase24OnboardingView
//
//  Created by Escurra Colquis on 24/10/24.
//

import SwiftUI

struct OnboardingPageView: View {
    var imageName: String
    var title: String
    var description: String
    var showDoneButton: Bool
    var nextAction: () -> Void
    
    // MARK: - View
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .foregroundStyle(.mint)
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            Text(description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .foregroundStyle(.gray)
            if showDoneButton {
                Button("Usar la app") {
                    nextAction()
                }
                .buttonStyle(.borderedProminent)
                .padding(.top)
            } else {
                Button("Siguiente") {
                    nextAction()
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }
        .padding()
    }
}


#Preview {
    OnboardingPageView(imageName: "clock", title: "Onboarding", description: "Descripción del Onboarding", showDoneButton: true, nextAction: {
        print("Onboarding")
    })
}
