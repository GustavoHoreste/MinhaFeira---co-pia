//
//  ViewExplorar.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

import SwiftUI

struct ViewExplorar: View {
    @State var pesquisa = ""
    @State var precoFiltro: Double = 0.0
    @State var nomeFiltro: String = ""
    @State var categoriaFiltro: String = ""
    var gridColunas = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
//    var produtosFiltrados: [ProdutoData]{
//        return Produtos.filter { produto in
//                    let NomePassouFiltro = nomeFiltro.isEmpty || produto.nome.lowercased().contains(nomeFiltro.lowercased())
//                    let PrecoPassouFiltro = precoFiltro == 0.0 || produto.preco <= precoFiltro
//                    let CategoriasPassouFiltro = categoriaFiltro.isEmpty || produto.categoria.lowercased().contains(categoriaFiltro.lowercased())
//
//                    return NomePassouFiltro && PrecoPassouFiltro
//                }
//    }
    
    var produtosFiltrados: [ProdutoData] {
            if pesquisa.isEmpty && precoFiltro == 0.0 && nomeFiltro.isEmpty {
                return Produtos
            } else {
                return Produtos.filter { produto in
                    let categoriaPassouFiltro = nomeFiltro.isEmpty || produto.nome.lowercased().contains(nomeFiltro.lowercased())
                    let precoPassouFiltro = precoFiltro == 0.0 || produto.preco <= precoFiltro
                    
                    if pesquisa.isEmpty {
                        return categoriaPassouFiltro && precoPassouFiltro
                    } else {
                        let pesquisaPassouFiltro = produto.nome.lowercased().contains(pesquisa.lowercased())
                        return categoriaPassouFiltro && precoPassouFiltro && pesquisaPassouFiltro
                    }
                }
            }
        }
    
    var body: some View {
        NavigationStack{
            
            ScrollView{
                LazyVGrid(columns: gridColunas, spacing: 20){
                    ForEach(produtosFiltrados) { produto in
                        NavigationLink{
                            modelProduct(produtos: produto)
                        }label: {
                            MaisVendidosView(produtos: produto)
                        }
                    }
                }
            }.navigationTitle("Explorar")
                .toolbar {
                    PerfilButton()
                }
        }
        .searchable(text: $pesquisa, prompt: "Categorias, Nome, Preço")
    }
}

struct ViewExplorar_Previews: PreviewProvider {
    static var previews: some View {
        ViewExplorar()
            .environmentObject(CarrinhoGerenciador())
    }
}
