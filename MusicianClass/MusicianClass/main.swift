//
//  main.swift
//  MusicianClass
//
//  Created by Nevin Özkan on 20.03.2023.
//

import Foundation

let james = Musicians(nameInit: "James", ageInit: 50, instrumentInit: "Guitar", typeInit: .Vocalist)
james.sing()

let kirk = SuperMusician(nameInit: "Kirk", ageInit: 55, instrumentInit: "Guitar", typeInit: .LeadGuitar)
kirk.sing()
kirk.sing2()


