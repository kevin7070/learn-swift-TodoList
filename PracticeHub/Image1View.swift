//
//  ProfileView.swift
//  PracticeHub
//
//  Created by Kevin Kwan on 2025-04-21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Spacer()
        Image("hunter-1")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .ignoresSafeArea(.container, edges: .bottom)
            .overlay(
                Text(
                    "**Practice Hub** is a centralized platform designed to support focused learning, skill development, and performance tracking. Whether you’re a student, educator, or professional, Practice Hub offers a structured environment where users can engage with practice exercises, monitor progress, and achieve measurable growth over time. With customizable modules, intuitive dashboards, and real-time feedback, Practice Hub empowers users to build mastery and confidence in any area of study or training."
                )
                .font(
                    .system(size: 18, weight: .heavy, design: .rounded)
                )
                .foregroundStyle(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .opacity(0.8)
                .padding()
            )
    }
}

#Preview {
    ProfileView()
}
