//
//  ResultFavoriteButton.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultFavoriteButton: View {
    var body: some View {

        ZStack{
            Circle()
                .frame(width: 50)
                .foregroundColor(.azul)
            
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 25, height: 24)
                .foregroundStyle(.azulTexto)
        }

    }
}

#Preview {
    ResultFavoriteButton()
}
