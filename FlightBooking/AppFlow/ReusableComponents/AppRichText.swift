//
//  AppRichText.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct AppRichText: ViewModifier {
    let leadingText: String
    let trailingText: String
    let leadingColor: Color
    let trailingColor: Color
    
    func body(content: Content) -> some View {
        Text(leadingText)
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.black) +
        Text(trailingText)
            .font(.system(size: 17, weight: .semibold))
            .foregroundStyle(.blue)
    }
}

extension View {
    func appRichText(leadingText: String = "Docu",
                     trailingText: String = "Flex",
                     leadingColor: Color = .black, trailingColor: Color = .blue
    ) -> some View {
        modifier(AppRichText(leadingText: leadingText, trailingText: trailingText, leadingColor: leadingColor, trailingColor: trailingColor))
    }
}


