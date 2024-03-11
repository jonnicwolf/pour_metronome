//
//  ContentView.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 2/29/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Tap to start")
        Spacer()
            .frame(height: 20)
        HStack(content: {
//            CupView(text: "mL")
            CupView(text: "oz")
        })        
    }
}

#Preview {
    HomeView()
}
