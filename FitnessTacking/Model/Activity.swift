//
//  Activity.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 27/03/2026.
//

import Foundation
import SwiftUI

struct Activity: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}
