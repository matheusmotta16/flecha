//
//  ResultConcreto.swift
//  flecha
//
//  Created by Matheus Motta on 23/07/25.
//

import SwiftUI

struct ResultConcreto: View {
    var tituloBlank: String = ""
    var resultConcreto: Double = 0.0
    
    var body: some View {
        HStack (spacing: 42){
            HStack () {
                Text("\(tituloBlank)")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundStyle(.azulTitulo)
                Spacer()
                
            }
                
                
            
            ZStack {
                Rectangle()
                    .fill(.clear)
                    .frame(width: 115, height: 46)
                    .overlay(
                        RoundedRectangle(cornerRadius: 29)
                            .stroke(Color.azul, lineWidth: 1)
                    )
                    
                
                Text("\(resultConcreto, format: .number)")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundStyle(.accent)
                
                
                
            }
        }
    }
}

#Preview {
    ResultConcreto()
}

