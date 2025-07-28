//
//  userName.swift
//  flecha
//
//  Created by Matheus Motta on 17/07/25.
//

import SwiftUI

struct userName: View {
//    @Binding var username: String
    var nomeTeste: String = "nome"
    var body: some View {
       
        
        Text("Olá \(nomeTeste)!")
            .padding(.trailing, 210)
            .foregroundStyle(.dataBlanks)
            .font(.system(size: 20, weight: .bold, design: .rounded))
    }
}

#Preview {
    userName()
}
