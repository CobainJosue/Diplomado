//
//  Marvel.swift
//  MarvelAPI
//
//  Created by Josue on 06/10/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import Foundation

class Marvel {
    
//    let baseURL = URL(string: "https://gateway.marvel.com:443/v1/public/characters?ts=1&apikey=8ca9259feb6b979e690640460f54ac5f&hash=80aa79d3979153988d174f1e238f49fd")!
    let baseURL = URL(string: "https://api.thedogapi.com/v1/breeds?limit=10&page=0")!

    //hash en md5:
    //16fbee195c22d826a81c3bd31b955b0f19b1b2f2f8ca9259feb6b979e690640460f54ac5f
    
    static let shared = Marvel()
    
    func fetchSuperheroes(completion: @escaping ([String]?) -> Void) {
        let task = URLSession.shared.dataTask(with: baseURL){
            (data, response, error) in
            print("Data: \(data)")
            print("Response: \(response)")
            if let data = data, let jsonDictionary = try? JSONSerialization.jsonObject(with: data) as? [String: Any] , let names = jsonDictionary?["name"] as? [String] {
                print("---------------------------")
                print(names)
                completion(names)
            } else { completion(nil) }
            print(data)
        }
        task.resume()
    }
    
    
    
}

/*
 
 if let data = data,
 let jsonDictionary = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
 let categories = jsonDictionary?["categories"] as? [String] {
 
 completion(categories)
 
 func submitOrder(menuIds: [Int], completion: @escaping (Int?) -> Void) {
 let orderURL = baseURL.appendingPathComponent("order")
 
 var request = URLRequest(url: orderURL)
 request.httpMethod = "POST"
 request.setValue("application/json", forHTTPHeaderField: "Content-Type")
 
 let data = ["menuIds": menuIds]
 let jsonEncoder = JSONEncoder()
 let jsonData = try? jsonEncoder.encode(data)
 request.httpBody = jsonData
 
 let task = URLSession.shared.dataTask(with: request) {
 (data, response, error) in
 
 let jsonDecoder = JSONDecoder()
 if let data = data, let preparationTime = try? jsonDecoder.decode(PreparationTime.self, from: data) {
 completion(preparationTime.prepTime)
 } else { completion(nil) }
 
 }
 task.resume()
 
 }
 }
 */
