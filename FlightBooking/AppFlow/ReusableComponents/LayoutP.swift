//
//  LayoutP.swift
//  FlightBooking
//
//  Created by dilshad haidari on 06/07/25.
//

import SwiftUI

struct LayoutP: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Important High Priority Text")
                .font(.largeTitle)
                .layoutPriority(1) // Give this higher priority

            Text("This text might get truncated if space is limited because it has the default lower priority.")
                .layoutPriority(0) // Default priority

            Color.cyan // Flexible view, takes remaining space
        }
        .frame(height: 100) // Constrain the VStack's height
    }
}


#Preview {
    LayoutP()
}
