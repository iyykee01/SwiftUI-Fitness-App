//
//  WorkoutCard.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

struct Workout {
    let id: Int
    let title: String
    let image: String
    let duration: String
    let date: String
    let calories: String
    let tintColor: Color
}

struct WorkoutCard: View {
    @State var workout: Workout
    
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.3))
                .cornerRadius(10)
            
            VStack (spacing: 20) {
                HStack () {
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Text(workout.duration)
                }
                
                
                HStack () {
                    Text(workout.date)
                       
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
        }
    }
}

#Preview {
    WorkoutCard(workout:  Workout(id: 0, title: "Running", image: "figure.run", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .green))
}
