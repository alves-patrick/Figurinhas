//
//  ContentView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 08/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            Text("Mingle")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
                .bold()
                .textCase(/*@START_MENU_TOKEN@*/.lowercase/*@END_MENU_TOKEN@*/)
            Text("Frase: ")
                .bold()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
