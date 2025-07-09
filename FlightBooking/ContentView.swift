//
//  ContentView.swift
//  FlightBooking
//
//  Created by dilshad haidari on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some View {
        if !isLoggedIn {
            LoginScreen()
        } else {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
        
    }
}

#Preview {
    @Previewable var isLoggedIn: Bool = false
    ContentView(isLoggedIn: isLoggedIn)
}
