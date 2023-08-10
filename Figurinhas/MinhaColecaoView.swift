//
//  MinhaColecaoView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 10/08/23.
//

import SwiftUI

struct MinhaColecaoView: View {
    @EnvironmentObject var minhaColecao: MinhaColecao
    var body: some View {
        if minhaColecao.figuras.count == 0 {
            Text("Você não tem figuras na sua coleção")
        } else {
            List(minhaColecao.figuras) { figura in
                NavigationLink {
                    DetalheView(figura: figura)
                } label: {
                    FigurasLinhaView(figura: figura, cor: .green)
                }

                
            }
            .navigationTitle("Minha coleção")
        }
    }
}

struct MinhaColecaoView_Previews: PreviewProvider {
    static var previews: some View {
        MinhaColecaoView()
    }
}
