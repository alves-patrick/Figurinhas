//
//  PropriedadesView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 09/08/23.
//

import SwiftUI

enum TipoPropriedade {
    case numeroInteiro
    case numerodecimal
    case texto
}

struct PropriedadesView: View {
    
    var imagem: String = "lifepreserver"
    var nome: String = "Vidas: "
    var valor: String = "0.4"
    var valorInt: Int = 1
    var valorDecimal: Double = 1.0
    var cor: Color = .green
    var tipo: TipoPropriedade = .numeroInteiro
    
    @State var apresentado = false
    
    var body: some View {
        Button {
            apresentado = true
        } label: {
     
            HStack {
                
                Image(systemName: imagem)
                    .foregroundColor(cor)
                    .frame(width: 30.0)
                    .font(.system(size: 30))
                
                Text(nome)
                if tipo == .texto {
                    Text(valor)
                    .padding(.trailing)
            }
                if tipo == .numeroInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
                if tipo == .numerodecimal {
                    Text("\(valorDecimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)
                }
            }
        }
        .sheet(isPresented: $apresentado) {
            PropriedadeEditarView()
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView()
    }
}
