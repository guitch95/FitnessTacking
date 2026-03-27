//
//  ActivityCard.swift
//  FitnessTacking
//
//  Created by Guillaume Richard on 27/03/2026.
//

import SwiftUI

struct ActivityCardView: View {
    @State var activity: Activity
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                            .bold()
                            .foregroundStyle(.gray)

                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .font(.title2)
                        .foregroundStyle(activity.tintColor)

                }
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()

        }

    }

}

#Preview {
    ActivityCardView(
        activity: Activity(title: "Today Steps", subtitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: "12,123")
    )
}
