//
//  FinalizarCompraSheet.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 19/05/23.
//

import SwiftUI

struct FinalizarCompraSheet: View {
    @EnvironmentObject var produtos: CarrinhoGerenciador
    
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .fill(.green)
          
            VStack(alignment: .leading) {
                Text("Sua Compra foi finalizada")
                    .font(.title)
                    .fontWeight(.heavy)
                
                HStack {
                    Text("Total:")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("R$ \(produtos.total, specifier: "%.2f")  ")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }.padding()
            
        }.ignoresSafeArea()
    }
}

struct FinalizarCompraSheet_Previews: PreviewProvider {
    static var previews: some View {
        FinalizarCompraSheet()
            .environmentObject(CarrinhoGerenciador())
    }
}
