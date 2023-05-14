//
//  ContentView.swift
//  ListelemeKullanimi
//
//  Created by Nevin Özkan on 14.05.2023.
//

import SwiftUI

struct DateAndTimePickerSayfa: View {
    @State private var time = Date()
    @State private var date = Date()
    @State private var alinanTarih = ""
    @State private var alinanSaat = ""
    var body: some View {
        VStack(spacing: 100) {
            DatePicker("Saat", selection: $time, displayedComponents: [.hourAndMinute])
            .padding()
            DatePicker("Tarih", selection: $date, displayedComponents: [.date])
                .padding()
            
            Text(alinanSaat)
            
            Text(alinanTarih)
            
            Button("Göster") {
                let tf = DateFormatter()
                tf.dateFormat = "HH: mm"
                alinanSaat = tf.string(from: time)
                
                let df = DateFormatter()
                df.dateFormat = "MM/dd/yyyy"
                alinanTarih = df.string(from: date)
                
            }
           
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DateAndTimePickerSayfa()
    }
}
