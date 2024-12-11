//
//  HomeViewModel.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import Foundation


class HomeViewModel: ObservableObject {
    
     var calories: Int = 133
     var active: Int = 53
     var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today's Step", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,120"),
        
        Activity(id: 1, title: "Today's Step", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,120"),
        
        Activity(id: 2, title: "Today's Step", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,120"),
        
        Activity(id: 4, title: "Today's Step", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "6,120")
    ]


    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .green),
        
        Workout(id: 1, title: "Standing", image: "figure.stand", duration: "50 mins", date: "Dec 13", calories: "32 kCal", tintColor: .red),
        
        Workout(id: 2, title: "Walking", image: "figure.walk", duration: "23 mins", date: "Dec 1", calories: "101 kCal", tintColor: .gray),
        
        Workout(id: 3, title: "Running", image: "figure.run", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .blue),
        
        Workout(id: 4, title: "Sitting", image: "figure.arms.open", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .orange),
        
        Workout(id: 5, title: "Running", image: "figure.run", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .purple),
        
        Workout(id: 6, title: "Running", image: "figure.run", duration: "47 mins", date: "Dec 11", calories: "321 kCal", tintColor: .yellow)
    ]
}
