//
//  ToDoItem.swift
//  ToDo
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import Foundation

struct ToDoItem: Equatable {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String,
         itemDescription: String? = nil,
         timestamp: Double? = nil,
         location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
    if lhs.title != rhs.title {
        return false
    }
    if lhs.itemDescription != rhs.itemDescription {
        return false
    }
    if lhs.timestamp != rhs.timestamp {
        return false
    }
    if lhs.location != rhs.location {
        return false
    }
    return true
}
