//
//  QuantidadeModelo.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

import SwiftUI

struct QuantidadeModelo: View {
    var produto: ProdutoData

    
    var body: some View {
        HStack {
            Button{
                if produto.quantidade > 0{
                    produto.quantidade -= 1
                    print(produto.quantidade)
                }
            }label: {
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.accentColor)
            }
            
            Text("\(produto.quantidade)")
                .foregroundColor(.green)
                .font(.system(size: 20))
                .fontWeight(.heavy)
            
            Button{
                if produto.quantidade > 0 || produto.quantidade < 100{
                    produto.quantidade += 1
                    print(produto.quantidade)
                }
            }label: {
                Image(systemName: "plus.square.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.accentColor)
            }
        }
    }
}

struct QuantidadeModelo_Previews: PreviewProvider {
    static var previews: some View {
        QuantidadeModelo(produto: Produtos[0])
    }
}

