//
//  Kisiler.swift
//  SayfalarArasıGecis
//
//  Created by Nevin Özkan on 3.05.2023.
//

import Foundation

class Kisiler {
    var kisiId:Int?
    var kisiAd:String?
    
    init() {
        
    }
    
    init(kisiId:Int, kisiAd:String) {
        self.kisiId = kisiId
        self.kisiAd = kisiAd
    }
}
