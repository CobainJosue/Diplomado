//
//  MusicViewController.swift
//  LabTunes
//
//  Created by Josue Quiñones on 11/10/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {
    
    var songs: [Song] = []
    let searchController = UISearchController(searchResultsController: nil)
    @IBOutlet weak var tableView: UITableView!
    
    func downloadSongs() {
        Music.fetchSongs { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func downloadSongBy(songName: String) {
        Music.fetchSongs(songName: songName) { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func setUpSearchBar() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search Songs"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadSongs()
        setUpSearchBar()

        // Do any additional setup after loading the view.
    }

    
}

//MARK: Extensions:
extension MusicViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        cell.textLabel?.text = songs[indexPath.row].artist
        return cell
    }
}

extension MusicViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        downloadSongBy(songName: searchController.searchBar.text!)
    }
    
    
}
