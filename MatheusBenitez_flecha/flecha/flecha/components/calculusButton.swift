//
//  calculusButton.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI

struct calculusButton: View {
    var body: some View {
        ZStack{
            
            
            Circle()
                .frame(width: 135)
                .foregroundStyle(.calculusButton)
            
            Image(systemName: "equal.circle")
                .resizable()
                .frame(width: 80 , height: 80)
                .foregroundStyle(.azulEscuro)
        }
    }
}

#Preview {
    calculusButton()
}
