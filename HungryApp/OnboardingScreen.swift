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
    
    var body: some View {
        VStack {
            Image("HungryLogoWhite")
                .resizable()
                .frame(width: 24, height: 16.8)
                .padding()
            Spacer()
            
            Image("OnboardingOne")
            Spacer()
            
            VStack(spacing: 10) {
                Text("Find food you love")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                
                Text("Discover the best menus from over 100 cuisines and over 1000 restaurants.")
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            HStack(spacing: 10) {
                Circle()
                    .fill(Color.backgroundGreen)
                    .frame(width: 8, height: 8)
                Circle()
                    .fill(Color.black)
                    .opacity(0.1)
                    .frame(width: 8, height: 8)
                Circle()
                    .fill(Color.black)
                    .opacity(0.1)
                    .frame(width: 8, height: 8)
                
            }
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
