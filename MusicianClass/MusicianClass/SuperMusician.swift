//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Nevin Özkan on 20.03.2023.
//

import Foundation

class SuperMusician : Musicians {
    
    func sing2() {
        print("enter night")
    }
    
    override func sing() {
        super.sing()
        print("exit light")
    }
}
