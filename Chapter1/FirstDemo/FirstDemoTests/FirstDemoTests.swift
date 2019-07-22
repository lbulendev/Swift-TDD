//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Larry Bulen on 7/21/19.
//  Copyright © 2019 Larry Bulen. All rights reserved.
//

import XCTest
@testable import FirstDemo

class FirstDemoTests: XCTestCase {
    var viewController: ViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_NumberOfVowels_WhenPassedDominik_ReturnsThree() {
        let string = "Dominik"
        let numberOfVowels = viewController.numberOfVowels(in: string)
        XCTAssertEqual(numberOfVowels, 3,
                       "should find 3 vowels in Dominik")
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital() {
        let input          = "this is A test headline"
        let expectedOutput = "This Is A Test Headline"
        let headline = viewController.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }
    
    func test_MakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let input          = "Here is another Example"
        let expectedOutput = "Here Is Another Example"
        let headline = viewController.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }
}
