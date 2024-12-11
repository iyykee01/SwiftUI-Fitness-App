//
//  ProgressCircleView.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var color: Color
    var goal: Int
    private let width: CGFloat = 20
    
    var body: some View {
        ZStack() {
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            
            Circle()
                .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                .rotation(.degrees(-90))
                .stroke(color, style:StrokeStyle(lineWidth: width, lineCap: .round))
                .shadow(radius: 5)
        }
    }
}

#Preview {
    ProgressCircleView(progress: .constant(100), color: .red, goal: 200)
}
