//
//  ItemManager.swift
//  ToDo
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoCount = 0
    var doneCount = 0
    private var toDoItems: [ToDoItem] = []
    
    func add(_ item: ToDoItem) {
        toDoCount += 1
        toDoItems.append(item)
    }

    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    func checkItem(at index: Int) {
        toDoCount -= 1
        doneCount += 1
        _ = toDoItems.remove(at: index)
    }
}
