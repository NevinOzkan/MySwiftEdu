//
//  UlkeDetaySayfa.swift
//  ListelemeKullanimi
//
//  Created by Nevin Özkan on 14.05.2023.
//

import SwiftUI

struct UlkeDetaySayfa: View {
    var ulke = Ulkeler()
    
    var body: some View {
        Text (ulke.ad!).font(.system(size: 50))
    }
}

struct UlkeDetaySayfa_Previews: PreviewProvider {
    static var previews: some View {
        UlkeDetaySayfa()
    }
}
