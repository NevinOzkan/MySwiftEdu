//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Nevin Özkan on 4.04.2023.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init() {
        
    }
    
    
}
