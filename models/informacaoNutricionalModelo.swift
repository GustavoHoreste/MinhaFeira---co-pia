//
//  informacaoNutricionalModelo.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

//Calorias , Carboidratos, Proteínas, Gorduras , Vitaminas

import SwiftUI

struct informacaoNutricionalModelo: View {
    var produtos: ProdutoData
    let nutrientes: [String] = ["Calorias", "Carboidratos", "Proteínas", "Gorduras", "Vitaminas"]
    
    var body: some View {
        GroupBox() {
          DisclosureGroup{
              ForEach(0..<nutrientes.count, id: \.self){ i in
                  Divider()
                  HStack{
                      Group{
                          Image(systemName: "info.circle")
                                
                          Text(nutrientes[i])
                      }.foregroundColor(.blue)
                      
                      Spacer()
                      
                      Text(produtos.informacoesNutricionais[i])
                  }
              }
          }label: {
              Group{
                  Image(systemName: "info.circle")
                  Text("Informações Nutricionais por 100g")
                  
              }.foregroundColor(.blue)
          }
        }
    }
}

struct informacaoNutricionalModelo_Previews: PreviewProvider {
    static var previews: some View {
        informacaoNutricionalModelo(produtos: Produtos[0])
    }
}
