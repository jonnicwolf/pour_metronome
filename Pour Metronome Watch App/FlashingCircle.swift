//
//  FlashingCircle.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 3/8/24.
//

import Foundation
import SwiftUI
import WatchKit

struct FlashingCircle: View {
    let measurement: String
    @State private var isTapped: Bool = false
    @State var fill_color: Color = .white
    @State private var timer: Timer?
     
    func random_color () -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            opacity: 1.0
        )
    }
    
    func run_metronome (isTapped: Bool) {
        var mL = 0.33
        var oz = 0.40
        let bpm_time = measurement == "oz" ? oz : mL

        timer = Timer.scheduledTimer(withTimeInterval: bpm_time, repeats: true) { timer in
                WKInterfaceDevice.current().play(.click)
                fill_color = random_color()
        }
    }
    
    func stop_metronome() {
        WKInterfaceDevice.current().play(.stop)
        timer?.invalidate()
        timer = nil
        fill_color = Color.white
    }
    
    var body: some View {
        var bpm = measurement == "oz" ? "184" : "200"
        Button (action: {
            isTapped.toggle();
            if isTapped { run_metronome(isTapped: isTapped) }
            else { stop_metronome() }
        }) {
            Circle()
                .overlay(
                    Text("\(bpm) BPM / \(measurement)")
                        .foregroundColor(Color.black))
        }
        .buttonStyle(PlainButtonStyle())
        .foregroundColor(fill_color)
    }
}

#Preview {
    FlashingCircle(measurement: "mL")
}
