//
//  WorkoutCardView.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 28/03/2026.
//

import SwiftUI

struct WorkoutCardView: View {
    @State var workout: Workout
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(workout.tintColor)
                .frame(width: 50, height: 50)
                .padding()
                .background(
                    .gray.opacity(0.1),
                    in: RoundedRectangle(cornerRadius: 20)
                )
            
            VStack(spacing: 16){
                HStack{
                    Text(workout.title)
                        .font(.title3.bold())
                    Spacer()
                    Text(workout.duration)
                }
                
                HStack{
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}


#Preview {
    WorkoutCardView(
        workout: Workout(
            title: "Running",
            image: "figure.run",
            tintColor: .green,
            duration: "23 mins",
            date: "Aug 3",
            calories: "341 kcal"
        )
    )
}
