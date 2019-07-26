//
//  ItemListDataProvider.swift
//  ToDo
//
//  Created by Larry Bulen on 7/25/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import UIKit

enum Section: Int {
    case toDo
    case done
}

class ItemListDataProvider: NSObject, UITableViewDataSource {
    var itemManager: ItemManager?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let itemManager = itemManager else { return 0 }
        guard let itemSection = Section(rawValue: section) else {
            fatalError()
        }
        let numberOfRows: Int
        switch itemSection {
        case .toDo:
            numberOfRows = itemManager.toDoCount
        case .done:
            numberOfRows = itemManager.doneCount
        }
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
