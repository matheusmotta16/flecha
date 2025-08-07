//
//  NameField.swift
//  flecha
//
//  Created by Matheus Motta on 28/07/25.
//

import SwiftUI

struct NameField: View {
    
    var body: some View {
        
        ZStack{
            
            Text("digite seu nome")
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .foregroundStyle(.sub)
                .padding(.top, 105)
            
            VStack (spacing: -1){
                
                Image("Flecha")
                    .resizable()
                    .frame(width: 130, height: 190)
                    .padding(.leading, 240)
                
                RoundedRectangle(cornerRadius: 29)
                    .frame(width: 328, height: 54)
                    .foregroundStyle(.colorNameView)
                    .opacity(0.4)
            }
        }
    }
}

#Preview {
    NameField()
}
