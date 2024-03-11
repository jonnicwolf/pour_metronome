//
//  MeasurementButton.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 3/7/24.
//

import Foundation
import SwiftUI
struct MeasurementButton: View {
    let measurement: String
    
    var body: some View {
        Rectangle()
            .frame(width: 80, height: 80)
            .cornerRadius(15)
            .overlay(
                Rectangle()
                    .offset(y: -10)
                    .cornerRadius(3)
                    .overlay(
                        Rectangle()
                            .frame(width: 75, height: 75)
                            .foregroundColor(Color.black)
                            .offset(y: -7)
                            .overlay(
                                Text(measurement)
                            )
                    )
            )
    }
}
