//
//  ResultBlanks.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultBlanks: View {
    var body: some View {
        
        HStack (spacing: 42){
            Text("Seção transversal")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundStyle(.azulTitulo)
            
            Rectangle()
                .fill(.clear)
                .frame(width: 115, height: 46)
                .overlay(
                    RoundedRectangle(cornerRadius: 29)
                    .stroke(Color.azul, lineWidth: 1)
                )
        }
        
    }
}

#Preview {
    ResultBlanks()
}
