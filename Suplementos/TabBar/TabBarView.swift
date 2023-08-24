//
//  TabBarView.swift
//  Suplementos
//
//  Created by leonardo Moreira on 24/08/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            BuscarView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Buscar")
                }
            
            
           CarrinhoView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Pedidos")
                }
            
            
            PerfilView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
