//
//  ContentView.swift
//  CalismaYapisi
//
//  Created by Nevin Özkan on 11.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sayac = 0
    var body: some View {
        VStack {
            Text("Sayac : \(sayac)")
            Button ("Tikla"){
                sayac = sayac + 1
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
