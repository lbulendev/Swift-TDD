//
//  ItemManagerTests.swift
//  ToDoTests
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    var sut: ItemManager!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = ItemManager()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_ToDoCount_Initially_IsZero() {
        XCTAssertEqual(sut.toDoCount, 0)
    }

    func test_DoneCount_Initially_IsZero() {
        XCTAssertEqual(sut.doneCount, 0)
    }

    func test_AddItem_IncreasesToDoCountToOne() {
        sut.add(ToDoItem(title: ""))
        XCTAssertEqual(sut.toDoCount, 1)
    }

    func test_ItemAt_ReturnsAddItem() {
        let item = ToDoItem(title: "Foo")
        sut.add(item)
        
        let returnedItem = sut.item(at: 0)
        XCTAssertEqual(returnedItem.title, item.title)
    }

    func test_CheckItemAt_ChangesCounts() {
        sut.add(ToDoItem(title: ""))
        sut.checkItem(at: 0)
    }

    func test_CheckItemAt_RemovesItFromToDoItems() {
        let first = ToDoItem(title: "First")
        let second = ToDoItem(title: "Second")
        sut.add(first)
        sut.add(second)
        sut.checkItem(at: 0)
        XCTAssertEqual(sut.item(at: 0).title, "Second")
    }
}
