//
//  DetalheView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 09/08/23.
//

import SwiftUI

struct DetalheView: View {
    
    @State var intensNaColecao: Int = 0
    var figura: Figura
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"\(figura.frase)\"")
            }
            HStack {
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                VStack(alignment: .leading){
                    PropriedadesView(valorInt: figura.vidas, tipo: .numeroInteiro)
                    PropriedadesView(imagem: "bolt", nome: "Potência", valorDecimal: figura.potencia, cor: .yellow, tipo: .numerodecimal)
                   
             
                }
                
            }
            .padding(30)
            
            HStack{
                Spacer()
                Text(figura.descricao)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    intensNaColecao += 1
                } label: {
                    
                    if intensNaColecao == 0 {
                        Text("Adicionar á coleção")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    } else {
                        Text("Na sua coleção:\(intensNaColecao)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                    }
                    .cornerRadius(30.0)
                    Spacer()
                    }.padding()
                }
                .navigationTitle(
                    Text(figura.nome)
                 )
        }
        }
struct DetalheView_Previews: PreviewProvider {
        static var previews: some View {
            DetalheView(figura: figuras[0])
        }
    }

