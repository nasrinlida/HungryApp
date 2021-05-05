//
//  OnboardingScreen.swift
//  HungryApp
//
//  Created by nasrinlida on 4/5/21.
//

import SwiftUI

enum Onboarding {
    case screenOne
    case screenTwo
    case screenThree
    
}

struct OnboardingScreen: View {
    @State private var screen = Onboarding.screenOne
    
    var screenTitle: String {
        switch screen {
        case .screenOne:
            return "Find food you love"
        case .screenTwo:
            return "Fast delivery"
        case .screenThree:
            return "Enjoy the experience"
        }
    }
    
    var screenDescription: String {
        switch screen {
        case .screenOne:
            return "Discover the best menus from over 100 cuisines and over 1000 restaurants."
        case .screenTwo:
            return "Fast & free delivery to your home or office. We will deliver it, wherever you are! "
        case .screenThree:
            return "Don’t feel like going out? No problem, we’ll deliver your order. In bed! :)"
        }
    }
    
    var body: some View {
        VStack {
            Image("HungryLogoWhite")
                .resizable()
                .frame(width: 24, height: 16.8)
                .padding()
            Spacer()
            
            switch screen {
            case .screenOne: Image("OnboardingOne")
            case .screenTwo: Image("OnboardingTwo")
            case .screenThree: Image("OnboardingThree")
            }
            
            Spacer()
            
            VStack(spacing: 10) {
                Text(screenTitle)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                Text(screenDescription)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            HStack(spacing: 10) {
                Circle()
                    .fill(screen == .screenOne ? Color.backgroundGreen : Color.black.opacity(0.1))
                    .frame(width: 8, height: 8)
                Circle()
                    .fill(screen == .screenTwo ? Color.backgroundGreen : Color.black.opacity(0.1))
                    .frame(width: 8, height: 8)
                Circle()
                    .fill(screen == .screenThree ? Color.backgroundGreen : Color.black.opacity(0.1))
                    .frame(width: 8, height: 8)
                
            }
            Spacer()
            
            Button(action: {
                switch screen {
                case .screenOne: screen = .screenTwo
                case .screenTwo: screen = .screenThree
                case .screenThree: screen = .screenOne
                }
                
            }, label: {
                Text("Next")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 6,
                            style: .continuous
                        )
                        .fill(Color.backgroundGreen)
                    )
                
            })
            .padding(.horizontal)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Skip")
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
            })
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}
