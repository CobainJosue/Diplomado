//
//  plasticfishesTests.swift
//  plasticfishesTests
//
//  Created by Josue Quiñones on 9/14/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import XCTest
@testable import plasticfishes

struct DataSource {
    static func fishes() -> [Bool]{
        return [true]
    }
}

class plasticfishesTests: XCTestCase {
    
    func testFishes() {
        let result = FishService.list_all()
        let firstFish = result.first!
        XCTAssertEqual(14, result.count)
        XCTAssertEqual("red-eaten", firstFish.id)
        XCTAssertEqual("Red eaten", firstFish.name)
        XCTAssertEqual("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", firstFish.text)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/api/fishes/red-eaten", firstFish.apiUrl)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/fishes/red-eaten", firstFish.webUrl)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/red-eaten.png", firstFish.imageUrl)
        
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
}
