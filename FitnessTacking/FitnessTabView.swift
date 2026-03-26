//
//  ContentView.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 25/03/2026.
//

import SwiftUI

struct FitnessTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house", value: 0) {
                HomeView()
            }
            Tab("Charts", systemImage: "chart.bar.xaxis", value: 1) {
                HistoricDataView()
            }
        }
    }
}
#Preview {
    FitnessTabView()
}
