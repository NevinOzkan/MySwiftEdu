//
//  JokesData.swift
//  JokesSwiftUI
//
//  Created by Nevin Özkan on 6.04.2023.
//

import Foundation

// MARK: - Welcome
struct Welcome: Identifiable, Codable {
   let id = UUID()
   let type: String
   let value: [Value]
 }

 // MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}



