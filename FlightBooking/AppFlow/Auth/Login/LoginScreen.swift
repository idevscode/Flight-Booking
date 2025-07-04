//
//  LoginScreen.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct LoginScreen: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isValid: Bool = false
    var body: some View {
        VStack{
            Spacer().frame(height: 50)
            Text("").appRichText()
            Spacer()
                .frame(height: 40)
            
            emailField
                .padding(.bottom, 25)
            
            passwordField
                .textContentType(.password)
                .padding(.bottom, 50)
            
            appButton
            
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    
    @ViewBuilder
    var emailField: some View {
        TextField("Email", text: $email)
            .textFieldStyle()
    }
    
    @ViewBuilder
    var passwordField: some View {
        SecureField("Password", text: $password)
            .textFieldStyle()
    }
    
    var appButton: some View {
        AppButton(buttonText: "Submit", isValid: $isValid, action: {
            
        })
    }
    
    
}

#Preview {
    LoginScreen()
}



