//
//  calculus.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI

struct calculusBlanks: View {
    
    var dado: String = ""
    var unidadeMedida: String = ""
    var body: some View {
        
        VStack (alignment: .leading, spacing: 2){
            Text("\(dado)")
                .foregroundStyle(.azulTexto)
                .padding()
                .bold()
            ZStack {
                Rectangle()
                    .fill(.clear)
                    .frame(width: 290, height: 56)
                    .overlay(
                        RoundedRectangle(cornerRadius: 29)
                            .stroke(Color.dataBlanks, lineWidth: 1)
                    )
                Text("\(unidadeMedida)")
                    .foregroundStyle(.azulTexto)
                    .padding(.leading, 200)
                    .opacity(0.5)
            }
        }
        .frame(width: 400)
    }
}
#Preview {
    calculusBlanks(dado: "área de influência")
}
