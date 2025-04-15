//
//  MainMenuView.swift
//  PracticeHub
//
//  Created by Kevin Kwan on 2025-04-12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "cursorarrow.rays")
                        .font(
                            .system(size: 28, weight: .bold, design: .rounded)
                        )
                        .foregroundColor(Color(.systemIndigo))
                        .shadow(
                            color: Color(.systemYellow), radius: 0, x: 2, y: 2)

                    Text("Practice Hub")
                        .font(
                            .system(size: 28, weight: .bold, design: .rounded)
                        )
                        .foregroundColor(Color(.systemIndigo))
                }

                // Todo List App Icon
                NavigationLink(destination: TodoListMainVew()) {
                    VStack {
                        Image(systemName: "checkmark.circle.fill").resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(.systemYellow))
                        Text("Todo List")
                            .foregroundColor(Color(.white))
                            .shadow(color: .white, radius: 2, x: 0, y: 1)
                    }
                    .padding()
                    .background(Color(.black))
                    .cornerRadius(10)
                    .shadow(radius: 4)
                    .rotationEffect(.degrees(-2))
                }

                Spacer()

                Text(
                    "**Practice Hub** is a centralized platform designed to support focused learning, skill development, and performance tracking. Whether you’re a student, educator, or professional, Practice Hub offers a structured environment where users can engage with practice exercises, monitor progress, and achieve measurable growth over time. With customizable modules, intuitive dashboards, and real-time feedback, Practice Hub empowers users to build mastery and confidence in any area of study or training."
                )
                .fontWeight(.light)
                .font(.system(.caption))
                .foregroundColor(Color(.black))
                .lineLimit(4)
                .truncationMode(.middle)
                .lineSpacing(0)
                .padding(80)
                .rotationEffect(.degrees(10), anchor: UnitPoint(x: 0, y: 0))
                .rotation3DEffect(.degrees(25), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .indigo, radius: 2, x: 0, y: 1)
                Text("[Link](https://www.google.com) to google.com")
                    .fontWeight(.semibold)
                    .font(.footnote)
                    .foregroundColor(Color(.black))
            }

        }
    }
}

#Preview {
    ContentView()
}
