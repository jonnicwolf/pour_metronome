//
//  CupView.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 3/7/24.
//

import Foundation
import SwiftUI

struct CupView: View {
    let text: String    
    @State private var isShowing: Bool = false
        
    var body: some View {
        Button(action: {
            self.isShowing.toggle()
        }) {
            MeasurementButton(measurement: text)
        }
        .sheet(isPresented: $isShowing) {
            FlashingCircle(measurement: self.text)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    CupView(text: "oz")
}
