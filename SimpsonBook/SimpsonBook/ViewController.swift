//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Nevin Özkan on 20.03.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Objects
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nucklear Safety", simpsonImage: UIImage(named: "homersimpson.png")!)
        
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonImage: UIImage(named: "margesimpson.png")!)
        
        let lisa = Simpson(simpsonName: " Lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "lisasimpson.png")!)
        
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "maggiesimpson.png")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
        
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return mySimpsons.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = mySimpsons[indexPath.row].name
            return cell
    }
    
       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           chosenSimpson = mySimpsons[indexPath.row]
           self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
       }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "toDetailsVC" {
               let destinationVC = segue.destination as! detailsVC
               destinationVC.selectedSimpson = chosenSimpson
           }
        }
        
        
        }
    
