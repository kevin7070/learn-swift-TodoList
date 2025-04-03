//
//  ContentView.swift
//  TodoList
//
//  Created by Kevin Kwan on 2025-03-25.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = []
    @State private var newTaskTitle: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("New Task", text: $newTaskTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add") {
                        guard !newTaskTitle.isEmpty else { return }
                        tasks.insert(
                            Task(title: newTaskTitle, isCompleted: false), at: 0
                        )
                        newTaskTitle = ""
                    }
                }
                .padding()

                List {
                    ForEach(tasks.indices, id: \.self) { index in
                        HStack {
                            Text(tasks[index].title)
                                .strikethrough(tasks[index].isCompleted)
                            Spacer()
                            Button(action: {
                                tasks[index].isCompleted.toggle()
                            }) {
                                Image(
                                    systemName: tasks[index].isCompleted
                                        ? "checkmark.circle.fill" : "circle")
                            }
                        }
                    }
                    .onDelete(perform: deleteTask)
                }
            }
            .navigationTitle("To-Do List")
        }
    }

    private func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
