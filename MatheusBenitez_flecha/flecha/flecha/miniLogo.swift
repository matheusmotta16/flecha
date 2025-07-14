//
//  miniLogo.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct miniLogo: View {
    var body: some View {
       
            
            HStack(spacing: 250){
                ZStack {
                                        
                        Circle()
                            .frame(width: 40)
                            .foregroundStyle(.accent)
                            .opacity(0.2)
                        
                        Image("miniLogo")
                            .resizable()
                            .frame(width: 20, height: 30)
                    
                }
                    
                    Image(systemName: "paintbrush.pointed.fill")
                        .foregroundStyle(.accent)
                
            }
            
            
        
    }
}

#Preview {
    miniLogo()
}
