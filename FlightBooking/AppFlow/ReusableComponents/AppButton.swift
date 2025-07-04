//
//  AppButton.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct AppButton: View {
    @Binding var isValid: Bool
    let buttonText: String
    let action: ()->Void
    init(buttonText: String = "Su", isValid: Binding<Bool>, action: @escaping ()->Void)
    {
        self.buttonText = buttonText
        self._isValid = isValid
        self.action = action
    }
    
    var body: some View {
        Button( action: action, label: {
            Text(buttonText)
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .foregroundStyle(isValid ? .white : .white.opacity(0.7))
                .font(.system(size: 16, weight: .bold))
                .padding(.horizontal, 20)
                .background(isValid ? .red : .red.opacity(0.7))
                .cornerRadius(15)
        })
        .padding(.horizontal, 40)
        

    }
}

#Preview {
    AppButton(isValid: .constant(false), action: {
        
    })
}
