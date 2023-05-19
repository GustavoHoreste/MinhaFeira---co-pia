//
//  MinhaFeiraApp.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 12/05/23.
//

import SwiftUI

@main
struct MinhaFeiraApp: App {
    @StateObject var carrinhoGernciador = CarrinhoGerenciador()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(carrinhoGernciador )
        }
    }
}
