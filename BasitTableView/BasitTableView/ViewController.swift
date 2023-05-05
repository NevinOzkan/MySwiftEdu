//
//  ViewController.swift
//  BasitTableView
//
//  Created by Nevin Özkan on 5.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ulkeler = ["Türkiye", "Almanya", "Japonya", "Rusya", "italya", "Güney" , "Kore", "Fransa", "Mısır"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    }

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi",
                                                 for: indexPath)
        
        cell.textLabel?.text = ulkeler[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
                   IndexPath) {
        print("Secilen Ülke : \(ulkeler[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath:
                   IndexPath) -> [UITableViewRowAction]? {
        
        let silAction = UITableViewRowAction (style: .normal, title: "Düzenle",
                                              handler: { (action:UITableViewRowAction,indexPath:IndexPath) ->
            Void in
            
            print ("\(self.ulkeler[indexPath.row]) yi sil")
        })
        
        let duzenleAction = UITableViewRowAction (style: .default, title: "Sil",
                                                  handler: { (action:UITableViewRowAction,indexPath:IndexPath) ->
            Void in
            
            print ("\(self.ulkeler[indexPath.row]) yi düzenle")
        })
        
        return [silAction,duzenleAction]
        
    }
}
