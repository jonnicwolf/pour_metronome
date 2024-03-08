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
    let measurement: Int
    @State private var selectedView: Int?
        
    var body: some View {
        NavigationStack {
            Button(action: {
                self.selectedView = 1
            }) {
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color.red)
                    .background(Color.blue)
                    .cornerRadius(15)
                    .overlay(
                        Rectangle()
                            .fill(Color.white)
                            .offset(y: -10)
                            .cornerRadius(3)
                            .overlay(
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(Color.black)
                                    .offset(y: -7)
                                    .overlay(Text(text))
                            )
                    )
            }
            .background(NavigationLink(value: selectedView) {
                EmptyView()
            })
            .navigationDestination(for: Int.self) { value in
                if value == 1 {
                    MetronomeView()
                } else if value == 2 {
                    MetronomeView()
                } else {
                    EmptyView()
                }
            }
        }
    }
}
