//
//  HomeView.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 53
    @State var stand: Int = 8
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack() {
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
                    
                    Spacer()
                }
                .padding()
            }
           
        }
    }
}

#Preview {
    HomeView()
}
