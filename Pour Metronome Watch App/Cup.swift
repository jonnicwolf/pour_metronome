//
//  Cup.swift
//  Pour Metronome Watch App
//
//  Created by Jonathan Narine on 3/8/24.
//

import Foundation
import SwiftUI

struct Cup: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX + 20, y: rect.maxY-10),
                     control: CGPoint(x: rect.midX + 200,  y: rect.maxY + 100))
//        path.addQuadCurve(to: CGPoint(x: rect.minX + 2, y: rect.maxY),
//                     control: CGPoint(x: rect.maxX - 2, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.maxY + 100))
        return path
    }
}

#Preview {
    Cup()
        .frame(width: 300, height: 200)
}
