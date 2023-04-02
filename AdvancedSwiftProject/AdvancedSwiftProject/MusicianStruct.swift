//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Nevin Özkan on 2.04.2023.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    mutating func happyBirthday() {
        self.age += 1
    }
}
