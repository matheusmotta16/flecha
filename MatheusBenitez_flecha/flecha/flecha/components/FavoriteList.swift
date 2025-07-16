//
//  FavoriteList.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct FavoriteList: View {
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(.clear)
                    .foregroundStyle(.azulClaro)
                    .frame(width: 57)
                    .overlay(
                        Circle()
                            .stroke(Color.azulList, lineWidth: 1)
                    )
                
                Circle()
                    .foregroundStyle(.azulList)
                    .frame(width: 49)
            }
            
            ZStack{ RoundedRectangle(cornerRadius: 30)
                    .frame(width: 230, height: 56)
                    .foregroundStyle(.azulClaro)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.azulList, lineWidth: 1)
                    )
                
                
            }
        }
    }
}

#Preview {
    FavoriteList()
}
