//
//  HomeView.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 26/03/2026.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    var body: some View {
        ScrollView {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                
                HStack {
                    Spacer()
                    
                    VStack(alignment: .leading){
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            Text("52 minutes")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                    }
                    Spacer()
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(40)
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
