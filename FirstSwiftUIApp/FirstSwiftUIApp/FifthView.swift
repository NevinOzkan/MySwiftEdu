//
//  FifthView.swift
//  FirstSwiftUIApp
//
//  Created by Nevin Özkan on 3.04.2023.
//

import SwiftUI

struct FifthView: View {
    
    @State var myName = "James"

    var body: some View {
        VStack{
            Text(myName)
                .font(.largeTitle)
                .padding()
            
            TextField("placeholder", text: $myName)
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
