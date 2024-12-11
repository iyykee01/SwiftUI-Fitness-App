//
//  FitnessWidgets.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

struct FitnessWidgets: View {
    
    let title: String
    let value: String
    let color: Color?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
                 Text(title)
                     .font(.callout)
                     .bold()
                     .foregroundColor(color)
                 
                 Text(value)
                     .bold()
             }
        .padding(.vertical)
         }
}

#Preview {
    FitnessWidgets(title: "Calories", value: "123 kcal", color: .green)
}
