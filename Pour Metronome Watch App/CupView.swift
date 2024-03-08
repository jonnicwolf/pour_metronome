//
//  CupView.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 3/7/24.
//

import Foundation
import SwiftUI

struct MeasurementButtton: View {
    let measurement: String
    
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .frame(width: 80, height: 80)
            .foregroundColor(Color.red)
            .background(Color.blue)
            .cornerRadius(15)
            .overlay(
                Rectangle()
                    .fill(Color.white)
                    .background(Color.red)
                    .offset(y: -10)
                    .cornerRadius(3)
                    .overlay(
                        Rectangle()
                            .frame(width: 75, height: 75)
                            .foregroundColor(Color.black)
                            .offset(y: -7)
                            .overlay(
                                Text(measurement)
//                                    .background(Color.red)
                            )
                    )
            )
    }
}

struct CupView: View {
    let text: String
    let measurement: Int
    @State private var selectedView: Int?
        
    var body: some View {
        NavigationStack {
            MeasurementButtton(measurement: text)
                .overlay(
                    NavigationLink("\(text)") {
                        MetronomeView()
                    }
                )
            
        }
//        .background(Color.red)
    }
}
