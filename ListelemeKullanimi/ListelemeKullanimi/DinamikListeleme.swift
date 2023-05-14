//
//  DinamikListeleme.swift
//  ListelemeKullanimi
//
//  Created by Nevin Özkan on 14.05.2023.
//

import SwiftUI

struct DinamikListeleme: View {
    @State private var ulkelerListesi = [Ulkeler]()
    
    func sil(at offsets: IndexSet) {
        let ulke = ulkelerListesi[offsets.first!]
        print ("\(ulke.ad!) silindi")
        ulkelerListesi.remove(at: offsets.first!)
        
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(ulkelerListesi){ ulke in
                    NavigationLink(destination: UlkeDetaySayfa(ulke: ulke)) {
                        UlkeItem(ulke: ulke)
                            .onTapGesture {
                                print("\(ulke.ad!) seçildi")
                            }
                        
                    }
                }.onDelete(perform: sil)
                
            }.listStyle(PlainListStyle())
            .navigationTitle("Ülkeler")
        }.onAppear{
            var liste = [Ulkeler]()
            let u1 = Ulkeler(ad: "Türkiye")
            let u2 = Ulkeler(ad: "italya")
            let u3 = Ulkeler(ad: "Japonya")
            let u4 = Ulkeler(ad: "Almanya")
            liste.append(u1)
            liste.append(u2)
            liste.append(u3)
            liste.append(u4)
            
            ulkelerListesi = liste
        }
    }
}

struct UlkeItem: View {
    var ulke = Ulkeler()
    var body: some View {
        HStack {
            Text(ulke.ad!)
            Spacer()
            Text("Seç")
                .foregroundColor(.red)
                .onTapGesture {
                    print("Text : \(ulke.ad!) seçildi")
                }
        }
    }
}

struct DinamikListeleme_Previews: PreviewProvider {
    static var previews: some View {
        DinamikListeleme()
    }
}
