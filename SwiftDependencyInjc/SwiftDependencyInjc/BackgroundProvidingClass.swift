//
//  BackgroundProvidingClass.swift
//  SwiftDependencyInjc
//
//  Created by Nevin Özkan on 8.04.2023.
//

import Foundation
import UIKit

class BackgroundProvidingClass : BackgroundProviderProtocol {
    var backgroundColor: UIColor {
    let backgroundColors : [UIColor] = [.systemGray,.systemRed,.systemMint,.systemCyan]
        return backgroundColors.randomElement()!
    }
 }
