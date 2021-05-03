//
//  LogoGreen.swift
//  HungryApp
//
//  Created by nasrinlida on 4/5/21.
//

import SwiftUI

struct LogoGreen: View {
    var body: some View {
        ZStack {
            Color.backgroundGreen.edgesIgnoringSafeArea(.all)
            
            Image("HungryLogoGreen")
        }
    }
}

struct LogoGreen_Previews: PreviewProvider {
    static var previews: some View {
        LogoGreen()
    }
}
