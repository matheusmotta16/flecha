//
//  NameField.swift
//  flecha
//
//  Created by Matheus Motta on 28/07/25.
//

import SwiftUI

struct NameField2: View {
    
    var body: some View {
        
        ZStack{
            
            
            
            VStack (spacing: -26){
                
//                GifImage("flechaNameView")
//                    .frame(width: 130, height: 190)
//                    .padding(.leading, 240)
//                
//                    .border(.red)
                
                RoundedRectangle(cornerRadius: 29)
                    .frame(width: 328, height: 54)
                    .foregroundStyle(.colorNameView)
                    .opacity(0.4)
            }
        }
    }
}

#Preview {
    NameField2()
}
