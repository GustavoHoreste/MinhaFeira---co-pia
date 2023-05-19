//
//  CarrinhoGerenciador.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 17/05/23.
//

import SwiftUI

class CarrinhoGerenciador: ObservableObject{
    @Published  var produtoNoCarrinho: [ProdutoData] = []
    
    var total: Double {
        return produtoNoCarrinho.reduce(0) { $0 + $1.preco * Double($1.quantidade) }
    }
    
    func add(produto: ProdutoData) {
        if let index = produtoNoCarrinho.firstIndex(where: { $0.id == produto.id }) {
            produtoNoCarrinho[index].quantidade += 1
        } else {
            var newProduto = produto
            newProduto.quantidade = 1
            produtoNoCarrinho.append(newProduto)
        }
    }
    
    func remover(at indexSet: IndexSet){
        produtoNoCarrinho.remove(atOffsets: indexSet)
    }
}
