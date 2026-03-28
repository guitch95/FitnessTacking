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

    var mockDataActivities = [
        Activity(
            title: "Today Steps",
            subtitle: "Goal 12,200",
            image: "figure.walk",
            tintColor: .green,
            amount: "9,812"
        ),
        Activity(
            title: "Today",
            subtitle: "Goal 1,000",
            image: "figure.walk",
            tintColor: .red,
            amount: "812"
        ),
        Activity(
            title: "Today Steps",
            subtitle: "Goal 12,000",
            image: "figure.walk",
            tintColor: .blue,
            amount: "9,812"
        ),
        Activity(
            title: "Today Steps",
            subtitle: "Goal 50,000",
            image: "figure.run",
            tintColor: .purple,
            amount: "55,812"
        ),
    ]
    
    
    var mockDataWorkout = [
        Workout(
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            duration: "23 mins",
            date: "Aug 3",
            calories: "341 kcal"
        ),
        Workout(
            title: "Strength Training",
            image: "figure.strengthtraining.traditional",
            tintColor: .blue,
            duration: "37 mins",
            date: "Aug 6",
            calories: "512 kcal"
        ),
        Workout(
            title: "Walking",
            image: "figure.walk",
            tintColor: .red,
            duration: "23 mins",
            date: "Aug 9",
            calories: "278 kcal"
        ),
        Workout(
            title: "Running",
            image: "figure.run",
            tintColor: .purple,
            duration: "120 mins",
            date: "Aug 11",
            calories: "1200 kcal"
        )
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
//                    Text("Welcome")
//                        .font(.largeTitle)
//                        .padding()
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .leading) {
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
                            ProgressCircleView(
                                progress: $calories,
                                goal: 600,
                                color: .red
                            )
                            ProgressCircleView(
                                progress: $active,
                                goal: 60,
                                color: .green
                            )
                            .padding(20)
                            ProgressCircleView(
                                progress: $stand,
                                goal: 12,
                                color: .blue
                            )
                            .padding(40)
                        }
                        .padding(.horizontal)
                        Spacer()
                        
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        
                        Button {
                            print("tapped")
                        } label: {
                            Text("Show more")
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(
                        columns: Array(repeating: GridItem(spacing: 20), count: 2)
                    ) {
                        ForEach(mockDataActivities) { activity in
                            ActivityCardView(activity: activity)}
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        Spacer()
                        
                        NavigationLink(value: "route") {
                            Text("Show more")
                        }
                        
                        .buttonStyle(.borderedProminent)
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(mockDataWorkout) { workout in
                            WorkoutCardView(workout: workout)
                        }
                    }
                    .padding(.bottom)
                    
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Welcome")
        }
        .navigationDestination(for: String.self) { word in
            EmptyView()
        }
        
    }
}

#Preview {
    HomeView()
}
