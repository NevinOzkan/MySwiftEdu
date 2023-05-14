//
//  ContentView.swift
//  WidgetsKullanimi
//
//  Created by Nevin Özkan on 14.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderDurum = 30.0
    var body: some View {
        VStack{
            Slider(value: $sliderDurum, in: 0...100).padding()
            
            Text ("Sonuc: \(Int(sliderDurum))")
            
            Button("GÖSTER") {
                print("Slider durum: \(sliderDurum)")
               
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
