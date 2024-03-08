//
//  ContentView.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Choose a measurement")
        Spacer()
            .frame(height: 20)
        HStack(content: {
            CupView(text: "mL", measurement: 1)
            CupView(text: "oz", measurement: 2)
        })
        
    }
}

#Preview {
    ContentView()
}
