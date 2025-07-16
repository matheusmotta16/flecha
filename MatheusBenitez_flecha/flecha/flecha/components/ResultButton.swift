//
//  ResultButton.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultButton: View {
    var body: some View {

        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 237, height: 47)
                .foregroundStyle(.azul)
            
            Text("novo cálculo")
                .font(.system(size: 25))
                .foregroundStyle(.azulTexto)
                .bold()
        }

    }
}

#Preview {
    ResultButton()
}
