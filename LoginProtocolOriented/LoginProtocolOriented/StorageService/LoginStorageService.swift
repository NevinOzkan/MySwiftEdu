//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Nevin Özkan on 10.04.2023.
//

import Foundation

protocol LoginStorageService {
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token: String)
    func getUserAccessToken () -> String?
    
}
