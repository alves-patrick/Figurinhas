//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 09/08/23.
//

import SwiftUI

struct FigurasView: View {
    
    var body: some View {
    
        List(figuras) { figura in
            NavigationLink(destination: DetalheView(figura: figura)) {
                FigurasLinhaView(figura: figura)
            }
        }
        .navigationTitle("Figuras")
    }
}

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}

