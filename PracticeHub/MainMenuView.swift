//
//  MainMenuView.swift
//  PracticeHub
//
//  Created by Kevin Kwan on 2025-04-12.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Practice Hub")
                    .font(.largeTitle)
                    .bold()
            }

            // Todo List App Icon
            NavigationLink(destination: TodoListMainVew()) {
                VStack {
                    Image(systemName: "checkmark.circle.fill").resizable()
                        .frame(width: 60, height: 60).foregroundColor(Color(.systemYellow))
                    Text("Todo List")
                        .foregroundColor(Color(.white))
                }
                .padding()
                .background(Color(.black))
                .cornerRadius(10)
                .shadow(radius: 4)
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    MainMenuView()
}
