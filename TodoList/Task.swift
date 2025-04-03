//
//  Task.swift
//  TodoList
//
//  Created by Kevin Kwan on 2025-03-25.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()  // `let`: can't change after creation
    var title: String  // `var`: can be edited by user
    var isCompleted: Bool  // `var`: can be edited by user

}
