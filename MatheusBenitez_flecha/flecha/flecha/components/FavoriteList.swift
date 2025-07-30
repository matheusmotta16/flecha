//
//  FavoriteList.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

//TODO:
import SwiftUI

struct FavoriteList: View {
    
    var dimensaoConcreto: Double
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(.clear)
                    .foregroundStyle(.sub)
                    .frame(width: 57)
                    .overlay(
                        Circle()
                            .stroke(Color.azulList, lineWidth: 1)
                    )
                
                Image("botaoConcreto1")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 230, height: 56)
                    .foregroundStyle(.sub)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.azulList, lineWidth: 1)
                    )
                
                VStack{
                    HStack {
                        Text("\(dimensaoConcreto, format: .number)")
                            .font(.system(size: 14, weight: .medium, design: .default))
                            .foregroundColor(.azulEscuro)
                        Text(" ||  fck: 3.5 KN/ cm²")
                            .font(.system(size: 14, weight: .medium, design: .default))
                            .foregroundColor(.azulEscuro)
                    }
                    Text(" tensão adm: 2.125 KN/ cm²")
                        .font(.system(size: 14, weight: .medium, design: .default))
                        .foregroundColor(.azulEscuro)

                }
            }
        }
        
    }
}

#Preview {
    FavoriteList(dimensaoConcreto: 0)
}
