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


struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 53
    @State var stand: Int = 8
    
    var body: some View {
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
                
                
                HStack() {
                    Text("Fitness Activity")
                    
                    Spacer()
                    Button(action: {
                        print("Show more")
                    }, label: {
                        Text("Show more")
                            .padding(.init(top: 10, leading: 15, bottom: 10, trailing: 15))
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    })
                }
                .padding(.init(top: 20, leading: 15, bottom: 10, trailing: 15))
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    
                    ForEach(mockActivities, id: \.id) { activity in
                        ActivityCard(activity: activity)
                    }

                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
