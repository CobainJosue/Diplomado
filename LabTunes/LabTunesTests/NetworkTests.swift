//
//  NetworkTests.swift
//  LabTunesTests
//
//  Created by Josue Quiñones on 11/9/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import XCTest
@testable import LabTunes //Por esto podemos acceder al codigo de la app desde las pruebas

class NetworkTests: XCTestCase {
    var sessionUnderTest: URLSession!
    
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: .default)
    }
    
    func testValidCallToItunes() {
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=Queen")
        var statusCode: Int?
        var responseError: Error?
        let promise = expectation(description: "Handler Invoked")
        
        let dataTask = sessionUnderTest.dataTask(with: url!) { data, response, error in
            statusCode = (response as? HTTPURLResponse)?.statusCode
            responseError = error
            promise.fulfill() //aqui ya se cumplio con la promesa
        }
        dataTask.resume()
        waitForExpectations(timeout: 5, handler: nil) // espera a que se cumplan todas las promesas antes de ejecutar las pruebas
        XCTAssertNil(responseError)
        XCTAssertEqual(statusCode, 200)
    }
    
    func testSlowValidCallToItunes() {
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=Queen")
        let promise = expectation(description: "Status code: 200")
        
        let dataTask = sessionUnderTest.dataTask(with: url!) { data, response, error in
            if let error = error {
                XCTFail("Error: (\(error.localizedDescription)")
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    promise.fulfill()
                } else {
                    XCTFail("Status code: \(statusCode)")
                }
            }
        }
        dataTask.resume()
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMusicSongs() {
        var resultSongs: [Song] = []
        let promise = expectation(description: "Songs Downloaded")
        Music.fetchSongs { (songs: [Song]) in
            resultSongs = songs
            promise.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertNotEqual(resultSongs.count, 0)
    }
    
    //tarea: hacer la tabla que llame a fetch songs
    
}
