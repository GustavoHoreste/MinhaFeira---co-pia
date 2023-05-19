//
//  PerfilButton.swift
//  MinhaFeira
//
//  Created by Gustavo Horestee Santos Barros on 17/05/23.
//

import SwiftUI

struct PerfilButton: View {
    var body: some View {
        ZStack(alignment: .center){
            Image("kanye")
                .resizable()
                .frame(width: 30, height: 30)
                .cornerRadius(200)
        }.frame(width: 40, height: 40)
            .background(Color(.black))
            .cornerRadius(150)
            
    }
}

struct PerfilButton_Previews: PreviewProvider {
    static var previews: some View {
        PerfilButton()
            
    }
}
