//
//  ActivityCard.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI



struct ActivityCard: View {
    @State var activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack {
                HStack (alignment: .top) {
                    VStack (alignment: .leading, spacing: 8){
                        Text(activity.title)
                    
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    
                    Spacer ()
                    
                    Image(systemName: activity.image)
                        .foregroundColor(activity.tintColor)
                }
                
                Text (activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
                
            }
            .padding()
        }
    
  
    }
}

#Preview {
    ActivityCard(activity: Activity(id: 0, title: "Today's Steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,120"))
}