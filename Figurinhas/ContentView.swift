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
           
            Text("Minglle")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
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
