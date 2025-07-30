//
//  ResultBlanks.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultBlanks: View {
    
    var tituloBlank: String = ""
    var numberBlanks: String = ""
    var numeroVao: Double = 0
   
    var body: some View {
        
        HStack (spacing: 42){
            HStack () {
                Text("\(tituloBlank)")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundStyle(.azulTexto)
//                    .frame(width: 40)
//                    .border(.red)
                Spacer()
                
            }
                
                
            
            ZStack {
                Rectangle()
                    .fill(.clear)
                    .frame(width: 115, height: 46)
                    .overlay(
                        RoundedRectangle(cornerRadius: 29)
                            .stroke(Color.dataBlanks, lineWidth: 1)
                    )
                    
                
                HStack {
                    Text("\(numberBlanks)")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundStyle(.accent)
                    
                }
                
                
                
            }
        }
        
    }
}

#Preview {
    ResultBlanks(tituloBlank: "nome")
}
