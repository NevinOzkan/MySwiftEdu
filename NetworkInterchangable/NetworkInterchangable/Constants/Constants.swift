//
//  Constants.swift
//  NetworkInterchangable
//
//  Created by Nevin Özkan on 8.04.2023.
//

import Foundation


struct Constants {
    
    //https://raw.githubusercontent.com/atilsamancioglu/UsersJSONPlaceHolder/main/users.json
    //https://jsonplaceholder.typicode.com/users
    
    struct Paths {
        static let baseUrl = "users"
    }
    
    struct Urls {
        static let baseUrl = "https://jsonplaceholder.typicode.com"
        static let usersExtension = "\(baseUrl)/users"
    }
    
    
}
