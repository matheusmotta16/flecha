//
//  FavoriteListMetal.swift
//  flecha
//
//  Created by Matheus Motta on 29/07/25.
//

import SwiftUI

struct FavoriteListMetal: View {
    
    var vaoMetal: Double
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
                
                Image("botaoMetal")
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
                Text("\(vaoMetal, format: .number)")
                    .font(.system(size: 14, weight: .medium, design: .default))
                    .foregroundColor(.azulEscuro)
                
            }
        }
        
    }
}

#Preview {
    FavoriteListMetal(vaoMetal: 0)
}
