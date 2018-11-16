//
//  LabTunesTests.swift
//  LabTunesTests
//
//  Created by Josue Quiñones on 11/9/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import XCTest
@testable import LabTunes

class LabTunesTests: XCTestCase {

    override func setUp() {
        let session = Session.sharedInstance
        session.token = nil
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCorrectLogin() {
        XCTAssertTrue(User.login(userName: "iOSLab", password: "verysecurepassword"))
    }
    
    func testWrongLogin() {
        XCTAssertFalse(User.login(userName: "Neto", password: "Test"))
    }
    
    func testSaveSession() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "verysecurepassword")
        XCTAssertNotNil(session.token)
    }
    
    func testFailSaveSession() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "Jorge", password: "223")
        XCTAssertNil(session.token)
    }
    
    func testExpectedToken() {
        let _ = User.login(userName: "iOSLab", password: "verysecurepassword")
        let session = Session.sharedInstance
        XCTAssertEqual(session.token!, "1234567890", "Token Should Match")
    }
    
    func testNotExpectedToken() {
        let session = Session.sharedInstance
        let _ = User.login(userName: "iOSLab", password: "verysecurepassword")
        XCTAssertNotEqual(session.token!, "123456789", "Token Should not match")
    }
    
    func testExceptionTokenNil() {
        XCTAssertThrowsError(try User.fetchSongs())
    }

}
