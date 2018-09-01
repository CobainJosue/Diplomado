//
//  ViewController.swift
//  iTunesTable
//
//  Created by Josue on 01/09/18.
//  Copyright © 2018 Josue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tablita: UITableView!
    var tracks: [Tracks] = []
    let BaseURL = URL(string: "https://itunes.apple.com/search?")!
    
    let query: [String: String] = [
        "term" : "LNG/SHT",
        "limit" : "40"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = tracks[indexPath.row].trackName
        
        do{
            
            let urlImage = URL(string: tracks[indexPath.row].artworkUrl100)
            let dataImage = try Data(contentsOf: urlImage!)
            
            cell.imageView?.image = UIImage(data: dataImage)
            
        }catch{
            print(error)
        }
        
        return cell
    }
    
    //Esta funcion ya no aplicara porque el Delegate tendra mas peso
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tracks.remove(at: indexPath.row)
            tablita.reloadData()
        }
    }
    
    //Esta es la funcion que aplica el Delegate
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completion) in
            self.tracks.remove(at: indexPath.row)
            self.tablita.deleteRows(at: [indexPath], with: .fade)
            
            completion(true)
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceView, completionHandler) in
            let text = "Listening : " + self.tracks[indexPath.row].trackName
            
            let activityController = UIActivityViewController(activityItems: [text], applicationActivities: nil)
            
            self.present(activityController, animated: true)
        }
        
        shareAction.backgroundColor = UIColor.orange
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        return swipeConfiguration
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond" {
            
            let indexPath = tablita.indexPathForSelectedRow
            
            let destination = segue.destination as! SecondViewController
            
            destination.fromFirstView = tracks[(indexPath?.row)!].trackName
            destination.originImage = tracks[(indexPath?.row)!].artworkUrl100
            
        }
    }
    
    func fetchData() {
        
        let url = BaseURL.withQueries(query)
        let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
            let jsondecoder = JSONDecoder()
            if let data = data, let trackList = try? jsondecoder.decode(Results.self, from: data) {
                
                var temp: [Tracks] = []
                trackList.results.forEach({ (track) in
                    temp.append(track)
                })
                
                 self.tracks = temp
                 self.tablita.reloadData()
            } else {
                print(error.debugDescription)
            }
           
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}

