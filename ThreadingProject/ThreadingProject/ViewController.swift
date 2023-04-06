//
//  ViewController.swift
//  ThreadingProject
//
//  Created by Nevin Özkan on 6.04.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    
    let urlStrings =
    ["https://hdwallsource.com/img/2014/7/large-40567-41517-hd-wallpapers.jpg", "https://upload.wikimedia.org/wikipedia/commons/7/74/Earth_poster_large.jpg"]
     
       var data = Data()
       var tracker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        DispatchQueue.global().async {
        self.data = try! Data(contentsOf: URL(string: self.urlStrings[self.tracker])!)
        DispatchQueue.main.async {
        self.imageView.image = UIImage(data: self.data)
    }
}
             
        
        data = try! Data (contentsOf: URL(string: urlStrings [tracker])!)
        
        imageView.image = UIImage (data: data)
        
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(changeImage))
    }
    
    @objc func changeImage() {
        
        if tracker == 0 {
            tracker += 1
            } else {
            tracker -= 1
        }
        data = try! Data(contentsOf: URL (string: urlStrings [tracker])!)
        imageView.image = UIImage (data: data)
        
           }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Threading Test"
    return cell
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 25
       }
    


}

