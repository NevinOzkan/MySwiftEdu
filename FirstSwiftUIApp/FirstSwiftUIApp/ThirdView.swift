//
//  ThirdView.swift
//  FirstSwiftUIApp
//
//  Created by Nevin Özkan on 3.04.2023.
//

import SwiftUI

struct ThirdView: View {
    
    let myArray = ["Çağrı", "Kurthan", "Hazar", "Mustafa", "Besim", "Kıvanç"]
    
    var body: some View {
        
         List (myArray, id: \.self) { element in
         Image("dedüblüman")
         .resizable()
         .aspectRatio(contentMode: .fit)
         .frame(width: 30, height: 30)
         Text(element).font(.largeTitle)
         
         }
         
         }
         /*
        List {
            ForEach(myArray, id: \.self) { element in
                Text(element)
                
            }
            
        }
    */
    }



struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
