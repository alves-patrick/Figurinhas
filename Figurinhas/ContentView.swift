//
//  ContentView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 08/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Mingle")
                .font(.title)
                .bold()
                .padding()
            
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                
                Text("\"Problema em dobro\"")
            }
            
            HStack {
                
                Image("figura_01")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                VStack(alignment: .leading){
                    HStack {
                        
                        Image(systemName: "lifepreserver")
                            .foregroundColor(Color.green)
                            .frame(width: 30.0)
                            .font(.system(size: 30))
                        
                        Text("Vidas: ")
                        
                        
                        Text("2")
                            .padding(.leading)
                    }
                    HStack {
                        
                        Image(systemName: "bolt")
                            .foregroundColor(Color.yellow)
                            .frame(width: 30.0)
                            .font(.system(size: 30))
                        
                        Text("Potência: ")
                        
                        
                        Text("60%")
                    }
                }
                
            }
            .padding(30)
            
            HStack{
                Spacer()
                Text("O Mingle se destaca por fazer o dobro do trabalho na metade do tempo, com extema precisão. Essas habilidades são uteis para ela sem sua função de Analista de Dados Sênior para uma empresa internacional de computação em nuvem. Ela também tem uma propensão para dança de salão, dança de linha e praticamente qualquer tipo de atividade que a deixe dançar ao som da música.")
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    // acao
                } label: {
                    Text("Na sua coleção: 2")
                        .padding()
                        .background(.green)
                }
                .cornerRadius(30.0)
                Spacer()
                
                
            }.padding()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

