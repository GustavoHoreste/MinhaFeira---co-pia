//
//  SheetModel.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

import SwiftUI

struct SheetModel: View {
    var produtos: ProdutoData
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(produtos.nome)
                .font(.system(size: 34))
                .fontWeight(.heavy)

            
            Text(produtos.descricao)
                .font(.system(size: 20))
                .fontWeight(.regular)
                .padding(.vertical)
                .opacity(0.7)
            Spacer()
        }.padding()
       
    }
}

struct SheetModel_Previews: PreviewProvider {
    static var previews: some View {
        SheetModel(produtos: Produtos[0])
    }
}
