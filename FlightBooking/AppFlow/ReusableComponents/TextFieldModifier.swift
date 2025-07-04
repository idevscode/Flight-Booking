//
//  TextFieldModifier.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding(15)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.black, lineWidth: 1))
            .padding(.horizontal, 40)
    }
}

extension View {
    public func textFieldStyle() -> some View {
        modifier(TextFieldModifier())
    }
}


