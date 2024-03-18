//
//  ContentView.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 2/29/24.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingOz: Bool = false
    @State private var isShowingMl: Bool = false
    
    var body: some View {
        Text("Choose a measurement")
        Spacer()
            .frame(height: 20)
        VStack(content: {
            Button(action: {
                self.isShowingOz.toggle()
            }, label: {
                Text("oz")
            })
            .sheet(isPresented: $isShowingOz, content: {
                FlashingCircle(measurement: "oz")
            })
            Button(action: {
                self.isShowingMl.toggle()
            }, label: {
                Text("mL")
            })
            .sheet(isPresented: $isShowingMl, content: {
                FlashingCircle(measurement: "mL")
            })
        })
    }
}

#Preview {
    HomeView()
}
