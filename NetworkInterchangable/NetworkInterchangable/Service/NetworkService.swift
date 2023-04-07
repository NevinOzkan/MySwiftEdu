//
//  NetworkService.swift
//  NetworkInterchangable
//
//  Created by Nevin Özkan on 8.04.2023.
//

import Foundation

protocol NetworkService {
    func download(_ resourceName: String) async throws -> [User]
    var type : String { get }
}
