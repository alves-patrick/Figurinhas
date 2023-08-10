//
//  ContentView.swift
//  Figurinhas
//
//  Created by Patrick Alves on 08/08/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        TabView {
            NavigationView {
                FigurasView()
            }
            .tabItem {
            Label("Figuras", systemImage: "face.smiling")
                    }              
        DetalheView(figura: figuras[0])
            .tabItem {
                Label("Minha Coleção", systemImage: "face.dashed")
            }
                }
        }
        
    }

        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }

