//
//  ResultView.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        NavigationStack{
           
            ZStack{
                Image("BGResultScreen")
                
                
                VStack {
                    Text("Aqui está!")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundStyle(.azulTitulo)
                    
                    Circle()
                        .frame(width: 245)
                        .padding(.bottom, 280)
                        .foregroundStyle(.calculusButton)
                    
                }
                
                VStack (spacing: 20){
                    Text("Material")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundStyle(.azul)
                        .padding(.top, 400)
                    
                    VStack (spacing: 18) {
                        ResultBlanks()
                        ResultBlanks()
                        ResultBlanks()
                    }
                    HStack (spacing: 35){
                        NavigationLink{
                            ContentView()
                        } label:{
                            ResultButton()
                        }
                        
                        NavigationLink{
                            FavoriteView()
                        } label:{
                            ResultFavoriteButton()
                        }
                    }
                }
                
                
            } 
        }
        
    }
}

#Preview {
    ResultView()
}
