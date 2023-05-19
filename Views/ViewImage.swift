//
//  ViewImage.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 15/05/23.
//

import SwiftUI

struct ViewImage: View {
    let imagens: [String] = ["banner01", "banner02", "banner03"]
    var body: some View {
        TabView{
            ForEach(imagens, id: \.self){ i in
                Image("\(i)")
                    .resizable()
                    .scaledToFit()
//                    .padding()
                    .cornerRadius(13)
//                    .padding(.top, 10)
//                    .padding(.horizontal, 15)
//                    .frame(width: .infinity, height: 780)
                
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))

            
    }
}

struct ViewImage_Previews: PreviewProvider {
    static var previews: some View {
        ViewImage()
            .background(.black)
            
    }
}
