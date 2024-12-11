//
//  SplitHeader.swift
//  fitnessApp
//
//  Created by Ikenna Udokporo on 11/12/2024.
//

import SwiftUI

struct SplitHeader: View {
    var title: String
    var buttonTitle: String
    var onPress: (() -> ())?
    var isNavigation: Bool = false
        
    var body: some View {
        HStack() {
            Text(title)
                .font(.title3)
            
            Spacer()
            
            
            if isNavigation {
                NavigationLink {
                    EmptyView()
               } label: {
                   Text("Show more")
                       .padding(.init(top: 10, leading: 15, bottom: 10, trailing: 15))
                       .foregroundColor(.white)
                       .background(.blue)
                       .cornerRadius(20)
               }
            } else {
                Button(action: {
                    onPress?()
                }, label: {
                    Text(buttonTitle)
                        .padding(.init(top: 10, leading: 15, bottom: 10, trailing: 15))
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                    
                })
           }
            
        }
        .padding(.init(top: 20, leading: 15, bottom: 10, trailing: 15))
    }
}

#Preview {
    SplitHeader(title: "Fitness Activity", buttonTitle: "Show More")
}
