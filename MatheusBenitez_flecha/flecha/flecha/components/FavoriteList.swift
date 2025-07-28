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
                
                Circle()
                    .foregroundStyle(.sub)
                    .frame(width: 49)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 230, height: 56)
                    .foregroundStyle(.sub)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.azulList, lineWidth: 1)
                    )
                Text("\(dimensaoConcreto)")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.azulEscuro)
                
            }
        }
        
    }
}

#Preview {
    FavoriteList(dimensaoConcreto: 0)
}
