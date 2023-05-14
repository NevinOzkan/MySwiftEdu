//
//  OyunEkrani.swift
//  CalismaYapisi
//
//  Created by Nevin Özkan on 11.05.2023.
//

import SwiftUI

struct OyunEkrani: View {
    @Environment(\.presentationMode) var pm
    @State private var sonucEkraninaGecis = false
    
    var isim = ""
    var yas = 0
    var boy = 0.0
    var bekar = false
    
    var body: some View {
        VStack(spacing: 100){
            Text("\(isim) - \(yas) - \(boy) - \(String(bekar))")
            Button("BİTTİ") {
                sonucEkraninaGecis = true
                
            }
            
            Button("GERİ") {
                pm.wrappedValue.dismiss()
            }
            
        }.navigationTitle("Oyun Ekranı")
            .sheet(isPresented: $sonucEkraninaGecis) {
                SonucEkrani()
            }
    }
}

struct OyunEkrani_Previews: PreviewProvider {
    static var previews: some View {
        OyunEkrani()
    }
}
