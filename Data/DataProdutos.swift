//
//  DataProdutos.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 12/05/23.
//

import SwiftUI

struct ProdutoData: Identifiable{
    var id = UUID()
    let nome: String
    let preco: Double
    let descricao: String
    let informacoesNutricionais: [String]
    let cor: [Color]
    let categoria: String
    let imagemProduto: String
    var quantidade: Int = 1
}


// let nutrientes: [String] = ["Calorias", "Carboidratos", "Proteínas", "Gorduras", "Vitaminas"]
var Produtos = [
    ProdutoData(
                nome: "Banana",
                preco: 2.0,
                descricao: "Deliciosa e nutritiva, a banana é uma fruta tropical versátil e cheia de benefícios. Com seu sabor adocicado e textura macia, ela é perfeita para matar a fome a qualquer momento do dia. Além de ser uma fonte natural de energia, a banana também é rica em potássio, vitaminas e fibras, contribuindo para a saúde do coração, do sistema digestivo e fortalecimento do sistema imunológico. Adicione essa fruta incrível à sua rotina diária e desfrute de todo o sabor e benefícios que a banana oferece!",
                informacoesNutricionais: ["96", "23.9g", "1.1g", "Gorduras: 0,3g", "Rica em vitamina C e vitamina B6"],
                cor: [Color("Amarelo"), Color("AmareloClaro")],
                categoria: "Frutas",
                imagemProduto: "Banana"),

    ProdutoData(nome: "Melancia",
                preco: 12.0,
                descricao: "A melancia é uma fruta suculenta e refrescante, perfeita para desfrutar nos dias quentes de verão. Com seu sabor adocicado e textura crocante, a melancia é um verdadeiro deleite para os sentidos. Além de ser deliciosa, a melancia também oferece uma variedade de benefícios nutricionais.",
                informacoesNutricionais: ["46", "11,6g", "0,9g", "0,2g", "Rica em vitamina C e vitamina A"],
                cor: [Color("Vermelho"), Color("VermelhoClaro")],
                categoria: "Frutas",
                imagemProduto: "Melancia"),
    
    ProdutoData(nome: "Laranja",
                preco: 1.80,
                descricao: "A laranja é uma fruta cítrica suculenta e refrescante, conhecida por seu sabor cítrico único e alto teor de vitamina C. Sua casca é vibrante e fácil de descascar, revelando uma polpa suculenta e cheia de benefícios para a saúde. Além da vitamina C, a laranja é uma excelente fonte de fibras, folato, potássio e antioxidantes. Ela ajuda a fortalecer o sistema imunológico, promove a saúde cardiovascular e auxilia na digestão saudável",
                informacoesNutricionais: ["43kcal", "9g", "1g", "0 g", "A, C"],
                cor: [Color("Laranja"), Color("LaranjaClaro")],
                categoria: "Frutas",
                imagemProduto: "Laranja"),
    
    ProdutoData(nome: "Maçã",
                preco: 2.00,
                descricao: "A maçã é uma fruta deliciosa e crocante, famosa por seu sabor adocicado e textura refrescante. Com sua casca colorida e variada, a maçã é uma excelente fonte de fibras e antioxidantes, promovendo a saúde digestiva e fortalecendo o sistema imunológico. Rica em vitamina C, potássio e fitonutrientes, a maçã ajuda a reduzir o risco de doenças cardiovasculares e tem propriedades anti-inflamatórias.",
                informacoesNutricionais: ["52kcal", "14g", "0 g", "0 g", "A, C"],
                cor: [Color("Laranja"), Color("LaranjaClaro")],
                categoria: "Frutas",
                imagemProduto: "Maca"),
    
    ProdutoData(nome: "Mamão",
                preco: 3.50,
                descricao: "O mamão é uma fruta tropical doce e suculenta, conhecida por sua polpa macia e sabor adocicado. Com sua rica cor laranja, o mamão é uma excelente fonte de vitamina C, betacaroteno e fibras solúveis, promovendo a saúde digestiva e protegendo contra o dano celular causado pelos radicais livres. Além disso, o mamão contém enzimas digestivas naturais que ajudam a aliviar a constipação e outros problemas digestivos.",
                informacoesNutricionais: ["51 Kcal", "13g", "1g", "0 g", "A, C"],
                cor: [Color("Verde"), Color("VerdeEscuro")],
                categoria: "Frutas",
                imagemProduto: "Mamao"),
    
    ProdutoData(nome: "Abacaxi",
                preco: 4.50,
                descricao: "O abacaxi é uma fruta tropical conhecida por seu sabor doce e suculento, além de seu aroma característico. Com sua polpa amarela e suculenta, o abacaxi é rico em vitamina C, bromelina e antioxidantes. Ele possui propriedades anti-inflamatórias, auxilia na digestão, fortalece o sistema imunológico e contribui para a saúde dos tecidos conjuntivos.",
                informacoesNutricionais: ["50 kcal", "13 g", "0.5 g", "0.2 g", "A, C"],
                cor: [Color("VerdeCherry"), Color("VerdeAmarelo")],
                categoria: "Frutas",
                imagemProduto: "Abacaxi"),
    
    ProdutoData(nome: "Manga",
                preco: 3.20,
                descricao: "A manga é uma fruta tropical suculenta e aromática, conhecida por seu sabor doce e textura macia. Com uma variedade de variedades, a manga é uma excelente fonte de vitamina C, vitamina A, fibras e antioxidantes. Ela promove a saúde ocular, fortalece o sistema imunológico, auxilia na digestão e contribui para a saúde da pele.",
                informacoesNutricionais: ["60 kcal", "15 g", "0.8 g", "0.4 g", "A, C"],
                cor: [Color("Azul"), Color("AzulClaro")],
                categoria: "Frutas",
                imagemProduto: "Manga"),
    
    ProdutoData(nome: "Uva",
                preco: 5.0,
                descricao: "O maracujá é uma fruta tropical de sabor único e aroma marcante. Ele é amplamente conhecido por sua polpa suculenta e suas sementes envoltas em uma casca resistente. O maracujá é uma excelente fonte de vitamina C, vitamina A e fibras dietéticas. A vitamina C atua como um antioxidante e fortalece o sistema imunológico, enquanto a vitamina A é essencial para a saúde da visão e da pele. As fibras presentes no maracujá auxiliam na digestão e contribuem para a sensação de saciedade. Além disso, o maracujá contém compostos naturais que podem promover um efeito calmante e auxiliar na redução do estresse e da ansiedade. Ele pode ser consumido fresco, em sucos, sorvetes, mousses e até mesmo em molhos para acompanhar pratos salgados.",
                informacoesNutricionais: ["69 kcal", "18 g", "0.7 g", "0.2 g", "C, K"],
                cor: [Color("Roxo"), Color("Roxo")],
                categoria: "Frutas",
                imagemProduto: "Uva"),
    
    ProdutoData(nome: "Maracuja",
                preco: 2.50,
                descricao: "O maracujá é uma fruta tropical de sabor único e aroma marcante. Ele é amplamente conhecido por sua polpa suculenta e suas sementes envoltas em uma casca resistente. O maracujá é uma excelente fonte de vitamina C, vitamina A e fibras dietéticas. A vitamina C atua como um antioxidante e fortalece o sistema imunológico, enquanto a vitamina A é essencial para a saúde da visão e da pele. As fibras presentes no maracujá auxiliam na digestão e contribuem para a sensação de saciedade. Além disso, o maracujá contém compostos naturais que podem promover um efeito calmante e auxiliar na redução do estresse e da ansiedade. Ele pode ser consumido fresco, em sucos, sorvetes, mousses e até mesmo em molhos para acompanhar pratos salgados.",
                informacoesNutricionais: ["97 kcal", "23 g", "2.2 g", "0.7 g", "A, C"],
                cor: [Color("VerdeLimao"), Color("VerdeLimaoClaro")],
                categoria: "Frutas",
                imagemProduto: "Maracuja"),
    
    ProdutoData(nome: "Goiaba",
                preco: 2.80,
                descricao: "A goiaba é uma fruta tropical suculenta e perfumada, conhecida por seu sabor doce e sua polpa macia. Ela é uma excelente fonte de vitamina C, vitamina A e fibras alimentares. A vitamina C é essencial para a saúde do sistema imunológico, enquanto a vitamina A contribui para a saúde da visão e da pele. As fibras presentes na goiaba auxiliam na digestão e promovem a sensação de saciedade. Além disso, a goiaba contém antioxidantes, como o licopeno, que ajudam a proteger as células dos danos causados pelos radicais livres. Essa fruta também possui baixo teor de calorias e gorduras, sendo uma opção saudável para incluir na dieta. A goiaba pode ser consumida in natura, adicionada a saladas, sucos, geleias e doces.",
                informacoesNutricionais: ["68 kcal", "14 g", "2.6 g", "0.9 g", "C"],
                cor: [Color("Azul"), Color("AzulClaro")],
                categoria: "Frutas",
                imagemProduto: "Goiaba"),
    
    ProdutoData(nome: "Caju",
                preco: 3.50,
                descricao: "O caju é uma fruta tropical com uma casca dura e suculenta polpa. É conhecido por seu sabor doce e levemente ácido. O caju é rico em vitamina C, antioxidantes e minerais como magnésio e ferro. A vitamina C é um antioxidante essencial para a saúde do sistema imunológico e auxilia na absorção de ferro. Os antioxidantes presentes no caju ajudam a combater o estresse oxidativo e protegem as células contra danos. Além disso, o caju é uma excelente fonte de fibras, que auxiliam na saúde digestiva e contribuem para a sensação de saciedade. Ele também contém gorduras saudáveis, como os ácidos graxos monoinsaturados, que são benéficos para o coração. O caju pode ser consumido fresco ou na forma de sucos, doces, sorvetes e até mesmo em pratos salgados.",
                informacoesNutricionais: ["45 kcal", "9 g", "0.9 g", "0.3 g", "C"],
                cor: [Color("Verdao"), Color("Verdin")],
                categoria: "Frutas",
                imagemProduto: "Caju"),
    
    ProdutoData(nome: "Melão",
                preco: 4.20,
                descricao: "O melão é uma fruta refrescante e suculenta, conhecida por seu sabor adocicado e sua polpa macia. Ele é rico em água, o que o torna uma excelente opção para hidratação. Além disso, o melão é uma boa fonte de vitaminas A e C, que são antioxidantes essenciais para a saúde da pele, dos olhos e do sistema imunológico. Ele também contém fibras, que auxiliam na digestão e contribuem para a sensação de saciedade. O melão é versátil e pode ser consumido tanto in natura como em saladas, sucos, sobremesas e smoothies. Existem diferentes variedades de melão, como o melão cantalupo, o melão orange e o melão honeydew, cada um com características e sabores únicos.",
                informacoesNutricionais: ["34 kcal", "8 g", "0.8 g", "0.2 g", "A, C"],
                cor: [Color("Roxo"), Color("Roxo")],
                categoria: "Frutas",
                imagemProduto: "Melao"),
    
    ProdutoData(nome: "Queijo",
                preco: 10.50,
                descricao: "O queijo  é um laticínio muito apreciado no Brasil. Ele tem uma textura macia e elástica, com um sabor suave e levemente adocicado. O queijo muçarela é conhecido por sua capacidade de derreter facilmente, tornando-o um ingrediente perfeito para pizzas, sanduíches e diversos pratos gratinados. Além disso, ele é uma boa fonte de cálcio e proteínas. O queijo muçarela é muito versátil e pode ser consumido frio, em fatias ou derretido em preparações culinárias quentes.",
                informacoesNutricionais: ["300 kcal", "2 g", "22 g", "22 g", "Cálcio, Fósforo"],
                cor: [Color("Black"), Color("Black")],
                categoria: "Laticínios",
                imagemProduto: "Queijo"),
    
    ProdutoData(nome: "Leite",
                preco: 5.50,
                descricao: "O leite é um alimento fundamental na alimentação dos brasileiros. É uma fonte rica de cálcio, proteínas, vitaminas e minerais essenciais. O leite pode ser consumido puro, quente ou frio, e também é utilizado como base para o preparo de diversas bebidas, como café com leite, chocolate quente e vitaminas. Além disso, o leite é um ingrediente versátil em receitas culinárias, sendo utilizado na produção de queijos, iogurtes, sorvetes e sobremesas deliciosas.",
                informacoesNutricionais: ["62 kcal", "4.8 g", "3.2 g", "3.6 g", "Cálcio, Fósforo, A, D"],
                cor: [Color("Black"), Color("Black")],
                categoria: "Laticínios",
                imagemProduto: "Leite"),
    
    ProdutoData(nome: "Iogurte",
                preco: 3.20,
                descricao: "O iogurte é um laticínio delicioso e saudável, obtido através da fermentação do leite com culturas bacterianas. É uma excelente fonte de cálcio, proteínas e probióticos benéficos para a saúde intestinal. O iogurte está disponível em diversas variedades, incluindo os naturais, com frutas, com adição de cereais e outros ingredientes. Pode ser consumido como lanche, utilizado em receitas de sobremesas ou como acompanhamento de pratos salgados. Além disso, o iogurte é uma opção refrescante e nutritiva para ser consumida no café da manhã ou em qualquer momento do dia.",
                informacoesNutricionais: ["120 kcal", "20 g", "5 g", "2 g", "Cálcio, Vitamina D"],
                cor: [Color("Black"), Color("Black")],
                categoria: "Laticínios",
                imagemProduto: "Iogurte"),
    
    ProdutoData(nome: <#T##String#>,
                preco: <#T##Double#>,
                descricao: <#T##String#>,
                informacoesNutricionais: <#T##[String]#>,
                cor: <#T##[Color]#>,
                categoria: <#T##String#>,
                imagemProduto: <#T##String#>)
]





