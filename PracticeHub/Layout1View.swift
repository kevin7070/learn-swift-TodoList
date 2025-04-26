//
//  Layout1View.swift
//  PracticeHub
//
//  Created by Kevin Kwan on 2025-04-26.
//

import SwiftUI

struct Layout1View: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
        HStack {
            VStack {
                Text("Basic")
                Text("$9")
                Text("per month")
            }
            .padding(40)
            .background(.purple)
            .cornerRadius(18)

            VStack {
                Text("Pro")
                Text("$19")
                Text("per month")
            }
            .padding(40)
            .background(.gray)
            .cornerRadius(18)
        }
    }
}

#Preview {
    Layout1View()
}
