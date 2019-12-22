//
//  LoginView.swift
//  Heatzy-Compagnon
//
//  Created by Florian Gabach on 22/12/2019.
//  Copyright © 2019 Florian Gabach. All rights reserved.
//

import SwiftUI
import KeyboardObserving

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            LoginTitleView()
            LoginLogoView()
            
            TextField("Username", text: $username)
                .padding()
                .multilineTextAlignment(.center)
                .cornerRadius(CGFloat(5.0))
            SecureField("Password", text: $password)
                .padding()
                .multilineTextAlignment(.center)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: {
                print("Button tapped")
            }) {
                LoginButtonTextView()
            }
        }
        .padding()
        .keyboardObserving()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                .environment(\.colorScheme, .light)
        }
    }
}

struct LoginLogoView: View {
    var body: some View {
        Image("heatzy_logo")
            .resizable()
            .aspectRatio(contentMode: ContentMode.fit)
            .frame(width: CGFloat(100.0), height: CGFloat(100.0))
            .padding(.bottom, 20)
    }
}

struct LoginTitleView: View {
    var body: some View {
        Text("Heatzy Compagnon")
            .font(.title)
            .bold()
            .foregroundColor(Color(.label))
            .padding(.bottom, 20)
    }
}

struct LoginButtonTextView: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(.darkGray))
            .cornerRadius(15.0)
    }
}
