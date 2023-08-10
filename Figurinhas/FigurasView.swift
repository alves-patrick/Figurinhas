//
//  FigurasView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 09/08/23.
//

import SwiftUI

struct FigurasView: View {
    
    
    var body: some View {
        List(figuras) {figura in
            NavigationLink(destination:
                    DetalheView()){
                HStack {
                    Image(figura.imagem+"_p")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(.gray)
                        .containerShape(Circle())
                    Text(figura.nome)
                }
                }
        
            }
        }
    }

struct FigurasView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasView()
    }
}
