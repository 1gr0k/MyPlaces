//
//  ViewController.swift
//  MyPlaces
//
//  Created by Андрей Калямин on 07.02.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    
    let places = Place.getPlaces()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
            
            cell.nameLabel.text = places[indexPath.row].name
            cell.locationLabel.text = places[indexPath.row].location
            cell.typeLabel.text = places[indexPath.row].type
            cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
            cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
            cell.imageOfPlace.clipsToBounds = true
            
            return cell
        }

    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}
}

