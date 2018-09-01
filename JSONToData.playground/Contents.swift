//: Playground - noun: a place where people can play

import UIKit

//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
import Foundation

let BaseURL = URL(string: "https://itunes.apple.com/search?")!

struct Results: Codable {
    var resultCount: Int
    var results: [Tracks]
}


struct Tracks: Codable {
    var artistName: String
    var collectionName: String
    var trackName: String
}

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

let query: [String: String] = [
    "term" : "LNG/SHT",
    "limit" : "10"
]

let url = BaseURL.withQueries(query)
let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
    let jsondecoder = JSONDecoder()
    if let data = data, let trackDictionary = try? jsondecoder.decode(Results.self, from: data) {
        trackDictionary.results.forEach({ (track) in
            print(track.artistName, track.trackName)
        })
    } else {
        print(error.debugDescription)
    }
}

task.resume()

PlaygroundPage.current.needsIndefiniteExecution = true


