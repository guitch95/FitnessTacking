//
//  Workout.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 28/03/2026.
//

import Foundation
import SwiftUI


struct Workout: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let tintColor: Color
    let duration: String
    let date: String
    let calories: String
}
