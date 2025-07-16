//
//  FavoriteView.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        ZStack{
            
            Image("BGFavoriteView")
            
            
            VStack{
                Text("Favoritos")
                    .font(.system(size: 45.0, weight: .bold, design: .rounded))
                    .foregroundStyle(.azulTitulo)
                    .padding(.trailing, 95)
                
                VStack (spacing: 30){
                    FavoriteList()
                    FavoriteList()
                    FavoriteList()
                    FavoriteList()
                }
            } .padding(.bottom, 200)
        }
    }
}
#Preview {
    FavoriteView()
}
