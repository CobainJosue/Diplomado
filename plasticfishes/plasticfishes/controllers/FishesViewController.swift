//
//  FishesViewController.swift
//  plasticfishes
//
//  Created by Josue Quiñones on 9/21/18.
//  Copyright © 2018 Josue Quiñones. All rights reserved.
//

import UIKit

class FishesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var fishesTableView: UITableView!
    
    var fishesArray: [Fish]? {
        didSet {
            self.fishesTableView.reloadData()
        }
    }
    
    //MARK: Views methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        doFishing()
        loadFishes()
    }
    
    func setupView() {
        navigationItem.title = "Plastic Fishes 🐟"
        fishesTableView.register(UINib(nibName: "FishesViewCellTableViewCell", bundle: nil), forCellReuseIdentifier: "fishCell")
        fishesTableView.delegate = self
        fishesTableView.dataSource = self
    }
    
    func doFishing() {
        //TODO
        //Service API
        //Falta consumir el servicio
        fishesTableView.reloadData()
    }
    
    
    func loadFishes() {
//        fishesArray = FishService.listAll()
        FishService.shared.all { (fishesArray) in
            debugPrint(fishesArray)
            self.fishesArray = fishesArray
        }
    }
    
    //MARK: Table View Protocol Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fishesArray?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "fishCell", for: indexPath) as? FishesViewCellTableViewCell else {return UITableViewCell() }
        
        let fish = fishesArray?[indexPath.row]
        
        cell.fishTitleLabel.text = fish?.name
        cell.fishSubtitleLabel.text = fish?.webUrl
        
        DispatchQueue.global(qos: .background).async {
            if let imgData = fish?.imageData {
                DispatchQueue.main.async {
                    cell.fishImageView.image = UIImage(data: imgData)
                }
                
            }
        }
        
        
        
       // cell.fishImageView.image = UIImage(named: "github-mark")
        
        //Flechita de la tabla:
        cell.accessoryType = .disclosureIndicator
        
       /* if let imgURL = URL(string: fish.imageURL) {
            
        }*/
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "FishesDetail", bundle: Bundle.main)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "detailVC")
        
        navigationController?.pushViewController(viewController, animated: true)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    

}
