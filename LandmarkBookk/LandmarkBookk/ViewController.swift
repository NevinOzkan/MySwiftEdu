//
//  ViewController.swift
//  LandmarkBookk
//
//  Created by Nevin Özkan on 20.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    var choenLandmarkName = ""
    var choenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonhenge")
        landmarkNames.append("Taj Mahal")
        
        
        landmarkImages.append(UIImage(named: "colosseum.jpeg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpeg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpeg")!)
        landmarkImages.append(UIImage(named: "tacmahal.jpeg")!)
        
        
        
     
     
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choenLandmarkName = landmarkNames[indexPath.row]
        choenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = choenLandmarkName
            destinationVC.selectedLandmarkImage = choenLandmarkImage
            
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}

