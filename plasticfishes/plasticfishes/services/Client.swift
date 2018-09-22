//
//  Client.swift
//  plasticfishes
//
//  Created by Josue on 22/09/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import Foundation

struct Client {
    
    let baseURLComponents: URLComponents
    
    typealias dataHandler = (Data?) -> Void
    
    func get(path: String, successHandler: dataHandler?) {
        request("GET", path: path, body: nil, successHandler: successHandler)
    }
    
    func get(path: String, body: Data?, successHandler: dataHandler?) {
        request("GET", path: path, body: body, successHandler: successHandler)
    }
    
    func post(path: String, body: Data?, successHandler: dataHandler?) {
        request("POST", path: path, body: body, successHandler: successHandler)
    }
    
    func put(path: String, body: Data?, successHandler: dataHandler?) {
        request("PUT", path: path, body: body, successHandler: successHandler)
    }
    
    func patch(path: String, body: Data?, successHandler: dataHandler?) {
        request("PATCH", path: path, body: body, successHandler: successHandler)
    }
    
    func delete(path: String, body: Data?, successHandler: dataHandler?) {
        request("DELETE", path: path, body: body, successHandler: successHandler)
    }
    
    func delete(path: String, successHandler: dataHandler?) {
        request("DELETE", path: path, body: nil, successHandler: successHandler)
    }
    
    func request(_ method: String, path: String, body: Data?, successHandler: dataHandler?) {
        
        var requestURLComponents = baseURLComponents
        requestURLComponents.path = path

        var request = URLRequest(url: (requestURLComponents.url)!)
        request.httpMethod = method
        request.httpBody = body
        debugPrint(request)
        

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil { return }
            let httpResponse = response as! HTTPURLResponse
            if httpResponse.statusCode == 200, let handler = successHandler {
                DispatchQueue.main.async { handler(data) }
            }
            
            debugPrint(request)
            debugPrint(data)

        }
        
        task.resume()
    }
    
}
