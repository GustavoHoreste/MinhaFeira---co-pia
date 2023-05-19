//
//  ViewHome.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

import SwiftUI

struct ViewHome: View {
    var produtos: [ProdutoData] = Produtos
    
    var gridColunas = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack{
            
            ScrollView(.vertical, showsIndicators: false){
                
                VStack {
                    ViewImage()
                        .frame(minHeight: 256)
                  
                    
                    VStack(alignment: .leading) {
                        Text("Top 10")
                            .font(.system(.title))
                            .fontWeight(.heavy)
                            .padding(.leading, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack() {
                                ForEach(1...10, id: \.self) { number in
                                        Text("\(number)")
                                                .font(.system(.title))
                                                .fontWeight(.heavy)
                                                .offset(y: -20)
            
                                                            
                                    if let randomProduct = produtos.randomElement() {
                                        NavigationLink{
                                            modelProduct(produtos: randomProduct)
                        
                                        }label: {
                                            MaisVendidosView(produtos: randomProduct)
                                                .frame(width: 150)
                                        }
                                    }
                                }.padding(.leading, 10)
                            }
                        }
                    }.background(Color("corDeFundo"))
                    
    
                    

                    
                    
                    VStack(alignment: .leading) {
                        VStack{
                            Text("Mais Vendidos")
                                .font(.system(.title))
                                .fontWeight(.heavy)
                                
                        }
                        LazyVGrid(columns: gridColunas, spacing: 20){
                            ForEach(produtos.shuffled()) { produto in
                                NavigationLink{
                                    modelProduct(produtos: produto)
                                }label: {
                                    MaisVendidosView(produtos: produto)
                                }
                            }
                        }
                    }.padding()
                }.navigationTitle("Home")
                
            }.toolbar {
                PerfilButton()
            }
        }
    }
}

struct ViewHome_Previews: PreviewProvider {
    static var previews: some View {
        ViewHome()
    }
}
