//
//  modeloDoProdutoNoCarrinho.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 17/05/23.
//

import SwiftUI

struct modeloDoProdutoNoCarrinho: View {
    var produtos: ProdutoData
    @EnvironmentObject var carrinhoGerenciador: CarrinhoGerenciador
    
    var body: some View {
        HStack(spacing: 15){
            ZStack {
                LinearGradient(gradient: Gradient(colors: produtos.cor), startPoint: .leading, endPoint: .trailing)
                Image("\(produtos.imagemProduto)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 100)
                    .padding()
                
            }.frame(width: 100, height: 100)
                .cornerRadius(13)
            
            VStack(alignment: .leading) {
                Text("\(produtos.nome)")
                    .font(.title2)
                
                Text("R$ \(produtos.preco, specifier: "%.2f") U")
                    .font(.body)
                    .foregroundColor(.gray)
               
                
                QuantidadeModelo(produto: produtos)
                
                
            }
            
            Spacer()
            
            Text("R$ \(produtos.preco * Double(produtos.quantidade), specifier: "%.2f")")
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

struct modeloDoProdutoNoCarrinho_Previews: PreviewProvider {
    static var previews: some View {
        modeloDoProdutoNoCarrinho(produtos: Produtos[0])
            .environmentObject(CarrinhoGerenciador())
    }
}
