//
//  Anasayfa.swift
//  CalismaYapisi
//
//  Created by Nevin Özkan on 11.05.2023.
//

import SwiftUI

struct Anasayfa: View {
    @State private var oyunEkraninaGecis = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("BAŞLA") {
                    oyunEkraninaGecis = true
                }
                
            }.navigationTitle("Anasayfa")
                .navigationDestination(isPresented: $oyunEkraninaGecis) {
                    OyunEkrani(isim: "Ahmet", yas: 23,boy: 1.78, bekar: true)
                }
        }
    }

}

struct Anasayfa_Previews: PreviewProvider {
    static var previews: some View {
        Anasayfa()
    }
}
