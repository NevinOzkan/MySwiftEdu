//
//  ContentView.swift
//  TasarimCalismasi
//
//  Created by Nevin Özkan on 10.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Merhaba").frame(maxWidth: .infinity).background(.yellow)
            Rectangle().fill (.red) .frame (width: 100, height: 100)
            Rectangle().fill (.green).frame (width: 80, height: 80)
            Rectangle().fill (.blue).frame (width: 50, height: 50)
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
