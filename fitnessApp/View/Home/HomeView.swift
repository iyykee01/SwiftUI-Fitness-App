//
//  HomeView.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI




struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    
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
                            FitnessWidgets(title: "Calories", value: "\(viewModel.calories) kCal", color: .red)
                            
                            FitnessWidgets(title: "Active", value: "\(viewModel.active)mins", color: .green)
                            
                            FitnessWidgets(title: "Stand", value: "\(viewModel.stand)hours", color: .blue)
                        }
                        
                        Spacer()
                        
                        
                        //Fitness card section
                        ZStack() {
                            ProgressCircleView(progress: $viewModel.calories, color: .red, goal: 600)
                            
                            ProgressCircleView(progress: $viewModel.active, color: .green, goal: 60)
                                .padding(.all, 20)
                            
                            ProgressCircleView(progress: $viewModel.stand, color: .blue, goal: 12)
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
                        
                        ForEach(viewModel.mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }

                    }
                    .padding(.horizontal)
                    
                    //Recent workout section
                    SplitHeader(title: "Recent Workout", buttonTitle: "Show More", isNavigation: true)
                    
                    //Workout Card here
                    
                    LazyVStack {
                        ForEach(viewModel.mockWorkouts, id: \.id) { workout in
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
