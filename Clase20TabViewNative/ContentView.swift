//
//  ContentView.swift
//  Clase20TabViewNative
//
//  Created by Escurra Colquis on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ListView()
                .tabItem {
                    Label("Lista", systemImage: "list.star")
                }
                .tag(0)
            
            Text("Pagar")
                .bold()
                .font(.system(size: 50))
                .tabItem {
                    Label("Pagar", systemImage: "dollarsign")
                }
                .tag(1)
            
            Text("Calendario")
                .bold()
                .font(.system(size: 50))
                .tabItem {
                    Label("Calendario", systemImage: "calendar")
                }
                .tag(2)
            
            Text("Mi Perfil")
                .bold()
                .font(.system(size: 50))
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
                .tag(3)
        }
        .onAppear {
            UITabBar.appearance().barTintColor = .white
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) {
                index in
                HStack {
                    Text("Celda: ")
                    Text("\(index)")
                        .bold()
                        .font(.system(size: 20))
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Lista TabView")
        }
    }
}

#Preview {
    ContentView()
}
