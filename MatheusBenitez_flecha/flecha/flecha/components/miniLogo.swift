//
//  miniLogo.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct miniLogo: View {
    var body: some View {
        
            ZStack {
                
                Circle()
                    .frame(width: 40)
                    .foregroundStyle(.accent)
                    .opacity(0.2)
                
                Image("miniLogo")
                    .resizable()
                    .frame(width: 20, height: 30)
                
            }
            
            
        
//        .padding(.trailing, 300)
//        .padding(.bottom, 700)
//        
        
    }
}

#Preview {
    miniLogo()
}
