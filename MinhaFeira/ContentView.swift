//
//  ContentView.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 12/05/23.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CarrinhoGerenciador())
    }
}
