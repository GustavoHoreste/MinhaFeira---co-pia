//
//  MaisVendidosView.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 16/05/23.
//

import SwiftUI

struct MaisVendidosView: View {
    var produtos: ProdutoData
    @EnvironmentObject var carrinhoGerenciador: CarrinhoGerenciador
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading){
       
                Image("\(produtos.imagemProduto)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 140, height: 100)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: produtos.cor), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(13)
                
                Text("\(produtos.nome)")
                    .bold()
                    .font(.system(.title2))
                
                Text("R$ \(produtos.preco, specifier: "%.2f")")
                    .foregroundColor(.gray)
                    .font(.body)
            }
        }
    }
}

struct MaisVendidosView_Previews: PreviewProvider {
    static var previews: some View {
        MaisVendidosView(produtos: Produtos[0])
            .environmentObject(CarrinhoGerenciador() )
            
    }
}
