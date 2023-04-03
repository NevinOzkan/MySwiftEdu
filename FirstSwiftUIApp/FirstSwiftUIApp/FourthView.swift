//
//  FourthView.swift
//  FirstSwiftUIApp
//
//  Created by Nevin Özkan on 3.04.2023.
//

import SwiftUI

struct FourthView: View {
    
    @State var myName = "Nevin"
    
    var body: some View {
        VStack{
            Text(myName)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                myName = "James"
            }) {
                Text("MyButton")
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
