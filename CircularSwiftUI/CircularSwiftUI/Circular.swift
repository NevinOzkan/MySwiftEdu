//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Nevin Özkan on 7.04.2023.
//

import Foundation
import SwiftUI

struct Circular: View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                CircularShape ()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                
                CircularShape (percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth:lineWidth))
                    .fill(foregroundColor)
                
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/2)
        }
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backgroundColor: .red, foregroundColor: .green, percentage: 50)
    }
}
