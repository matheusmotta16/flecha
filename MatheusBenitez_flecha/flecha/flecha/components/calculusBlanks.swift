//
//  calculus.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI

struct calculusBlanks: View {
    var body: some View {
        
        VStack (spacing: 2){
            
            Text("dado")
                .foregroundStyle(.azulTitulo)
                .padding(.trailing, 200)
                .bold()
            
            Rectangle()
                .fill(.clear)
                .frame(width: 290, height: 56)
                .overlay(
                    RoundedRectangle(cornerRadius: 29)
                        .stroke(Color.calculus, lineWidth: 1)
                )
            
        }
    }
}
#Preview {
    calculusBlanks()
}
