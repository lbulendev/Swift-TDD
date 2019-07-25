//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import XCTest
@testable import ToDo
import CoreLocation

class ToDoItemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_Init_WhenGivenTitle_SetsTitle() {
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo",
                       "item should be set title")
    }

    func test_Init_WhenGivenDescription_SetsDescription() {
        let item = ToDoItem(title: "", itemDescription: "Bar")
        XCTAssertEqual(item.itemDescription, "Bar",
                       "should be set itemDescription")
    }

    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "",
                            timestamp: 0.0)

        XCTAssertEqual(item.timestamp, 0.0,
                       "should set timestamp")
    }

    func test_Init_SetsLocation() {
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "",
                            location: location)
        XCTAssertEqual(item.location?.name,
                       location.name,
                       "should set location")
    }
//    func test_Init_WhenGivenLocation_SetsLocation() {
//        let location = Location(name: "Foo")
//    }
}
