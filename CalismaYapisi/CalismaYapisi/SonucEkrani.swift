//
//  SonucEkrani.swift
//  CalismaYapisi
//
//  Created by Nevin Özkan on 11.05.2023.
//

import SwiftUI

struct SonucEkrani: View {
    @Environment(\.presentationMode) var pm
    var body: some View {
        VStack(spacing: 100) {
            Text("Sonuç Ekranı").font(.system(size: 50))
            Button("KAPAT"){
                pm.wrappedValue.dismiss()
            }
           
        }
    }
}

struct SonucEkrani_Previews: PreviewProvider {
    static var previews: some View {
        SonucEkrani()
    }
}
