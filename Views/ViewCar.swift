import SwiftUI


struct  ViewCar: View{
    @EnvironmentObject var produtos: CarrinhoGerenciador
    @State var abaSheet: Bool = false

    var body: some View{
        VStack {
            NavigationStack {
                List{
                    ForEach(produtos.produtoNoCarrinho){ produto in
                        modeloDoProdutoNoCarrinho(produtos: produto)
                    }
                    .onDelete(perform: produtos.remover)
                    .disabled(produtos.produtoNoCarrinho.isEmpty)
                    
                }.navigationTitle("Meu Carrinho")
                    .toolbar {
                        EditButton()
                            .buttonStyle(.borderedProminent)
                    }
            }
            
           
            HStack{
                Text("Total")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("R$ \(produtos.total, specifier: "%.2f")")
                    .font(.title2)
                    .fontWeight(.bold)
                
            }.padding()
            
            VStack {
                Button{
                    abaSheet.toggle()

                }label: {
                    Text("Finalizar Compra")
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(13)
                }.frame(maxWidth: .infinity, alignment: .center)
                    .sheet(isPresented: $abaSheet) {
                        if produtos.total == 0{
                            Text("Selecione os produtos primeiro")
                            
                        }else{
                            FinalizarCompraSheet()
                        }
                }
            }
        }
    }
}


struct ViewCar_Previews: PreviewProvider{
    static var previews: some View{
        ViewCar()
            .environmentObject(CarrinhoGerenciador())
    }
}
