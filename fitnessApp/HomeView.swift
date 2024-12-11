//
//  HomeView.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

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


struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 53
    @State var stand: Int = 8
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack() {
                        Spacer()
                        
                        VStack() {
                            FitnessWidgets(title: "Calories", value: "123 kcal", color: .red)
                            
                            FitnessWidgets(title: "Active", value: "52 mins", color: .green)
                            
                            FitnessWidgets(title: "Stand", value: "8 hours", color: .blue)
                        }
                        
                        Spacer()
                        
                        
                        //Fitness card section
                        ZStack() {
                            ProgressCircleView(progress: $calories, color: .red, goal: 600)
                            
                            ProgressCircleView(progress: $active, color: .green, goal: 60)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $stand, color: .blue, goal: 12)
                                .padding(.all, 40)
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                    
                    
             //Fitness Activity section
                    SplitHeader(title: "Fitness Activity", buttonTitle: "Show More") {
                        print("Show more 33322")
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }

                    }
                    .padding(.horizontal)
                    
                    //Recent workout section
                    SplitHeader(title: "Recent Workout", buttonTitle: "Show More", isNavigation: true)
                    
                    //Workout Card here
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    } 
                    .padding(.horizontal) 
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
