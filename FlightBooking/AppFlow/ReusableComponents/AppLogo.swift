//
//  AppRichText.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct AppLogo: View {
    let leadingText: String
    let trailingText: String
    let leadingColor: Color
    let trailingColor: Color
    
    var body: some View {
        HStack(spacing: 0) {
            HStack(spacing: 4){
                Image(systemName: "airplane.departure")
                    .foregroundStyle(leadingColor)
                Text(leadingText)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(leadingColor)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(trailingColor)
            .cornerRadius(16, corners: [.topLeft, .bottomLeft])
            
            Text(trailingText)
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundStyle(trailingColor)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.white)
                    .cornerRadius(16, corners: [.topRight, .bottomRight])
                    
        }
        
        
    }
}



