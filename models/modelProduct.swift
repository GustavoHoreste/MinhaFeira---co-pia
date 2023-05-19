//
//  modelProduct.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 12/05/23.
//

import SwiftUI

struct modelProduct: View {
    var produtos: ProdutoData
    let radius28: Double = 28
    let radius13: Double = 13
    @State var abaSheet: Bool = false
    @State var coracaoBool: Bool = false
    @State private var isAnimating: Bool = false
    @EnvironmentObject var carrinhoGerenciador: CarrinhoGerenciador
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ZStack(alignment: .center) {
                        LinearGradient(gradient: Gradient(colors: produtos.cor), startPoint: .leading, endPoint: .trailing)
                        .padding(.top, radius28)
                        .cornerRadius(radius28)
                        .padding(.top, -radius28)
                    
                    Image(produtos.imagemProduto)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .shadow(radius: 54)
    
                    
                }.frame(height: 320)
                    .onAppear {
                      withAnimation(.easeOut(duration: 1)) {
                        isAnimating = true
                      }
                    }
                
                VStack {
                    HStack{
                        Text(produtos.nome)
                            .font(.system(size: 34))
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                    
                        Button{
                            coracaoBool.toggle()
                        }label: {
                           Image(systemName: coracaoBool ? "heart.fill" : "heart")
                                    .resizable()
                                    .frame(width: 30, height: 29)
                                    .foregroundColor(.red)
                            }
                    }
                    
                    HStack{
                        Text("Preço")
                            .foregroundColor(.gray)
                            .font(.system(size: 20))
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Text("R$ \(produtos.preco, specifier: "%.2f")")
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                    }
                    
                    informacaoNutricionalModelo(produtos: produtos)
                        .padding(.top, -15)

                }.padding(EdgeInsets(top: 0, leading: 10, bottom: 2, trailing: 10))
                Spacer()
                
                ZStack(alignment: .leading){
        
                    VStack(alignment: .leading){
                        Text("Mais Sobre:")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                        
                        Text(produtos.descricao)
                            .lineLimit(3)
                            .padding(.top, 2)
                            .opacity(0.7)
                        
                        Button("Ver Mais"){
                            abaSheet.toggle()
                        }.sheet(isPresented: $abaSheet){
                            SheetModel(produtos: produtos)
                        }
                        
                        Spacer()
                        
                        Divider()
                            .frame(height: 5)
                        
                        Spacer()
                        
                        HStack(alignment: .top){
                            Text("Quantidade:")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                            
                            Spacer()
                        
                    
                            QuantidadeModelo(produto: produtos)
                            
                            
                            
                        }
                        
                        Button{
                            carrinhoGerenciador.add(produto: produtos)
                        }label: {
                            Text("Adicionar ao Carrinho")
                                .padding()
                                .background(Color.accentColor)
                                .foregroundColor(.white)
                                .font(.headline)
                                .cornerRadius(13)
                        }.frame(maxWidth: .infinity, alignment: .center)
                        
                    }.padding()
                }.background(Color("corDeFundo"))
                    .padding(.bottom, radius13)
                    .cornerRadius(radius13)
                    .padding(.bottom, -radius13)
                    
                
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}



struct modelProduct_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            modelProduct(produtos: Produtos[0])
                .environmentObject(CarrinhoGerenciador())
        }
    }
}
