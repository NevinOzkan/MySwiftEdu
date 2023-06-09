//
//  FeedVC.swift
//  SnapchatClone
//
//  Created by Nevin Özkan on 4.04.2023.
//

import UIKit
import Firebase


class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let fireStoreDatabase = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        getUserInfo()
    }
    
    

    func getUserInfo() {
        fireStoreDatabase.collection("UserInfo").whereField("email", isEqualTo: Auth.auth().currentUser!.email!).getDocuments { (snapshot, error) in
                   if error != nil {
                       self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                   } else {
                       if snapshot?.isEmpty == false && snapshot != nil {
                           for document in snapshot!.documents {
                               if let username = document.get("username") as? String {
                                   UserSingleton.sharedUserInfo.email = Auth.auth().currentUser!.email!
                                   UserSingleton.sharedUserInfo.username = username
                                   
                               }
                           }
                       }
                   }
               }
    }
    
    func makeAlert(title: String, message: String) {
              let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
              let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
              alert.addAction(okButton)
              self.present(alert, animated: true, completion: nil)
          }
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FeedCell
        cell.feedUserNameLabel.text = "test"
        return cell
    }
}
