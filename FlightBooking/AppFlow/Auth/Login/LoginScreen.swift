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
            AppLogo(
                leadingText: "Flight",
                trailingText: "Booking",
                leadingColor: .white,
                trailingColor: .red)
            Spacer()
                .frame(height: 40)
            emailField
            passwordField
            appButton
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    
    @ViewBuilder
    var emailField: some View {
        TextField("Email", text: $email)
            .textFieldStyle()
            .padding(.bottom, 25)
            .autocapitalization(.none)
            .keyboardType(.emailAddress)
    }
    
    @ViewBuilder
    var passwordField: some View {
        SecureField("Password", text: $password)
            .textFieldStyle()
            .textContentType(.password)
            .padding(.bottom, 50)
    }
    
    var appButton: some View {
        AppButton(buttonText: "Submit", isValid: $isValid, action: {
            
        })
    }
    
    
}

#Preview {
    LoginScreen()
}



