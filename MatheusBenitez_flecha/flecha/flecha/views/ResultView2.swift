//
//  ResultView2.swift
//  flecha
//
//  Created by Matheus Motta on 21/07/25.
//

//
//  ResultView.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultView2: View {
    
    @Binding var dimensaoVao: Double
    
    var body: some View {
        NavigationStack{
           
            ZStack{
                Image("BGResultScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                
                VStack (spacing: 10){
                    Text("Aqui está!")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundStyle(.azulTexto)
                    
//                    Circle()
//                        .frame(width: 245)
//                        .padding(.bottom, 280)
//                        .foregroundStyle(.calculusButton)
                    
                    Image("ResultMetal")
                        .resizable()
                        .frame(width: 245, height: 245)
                }.padding(.bottom, 310)
                
                VStack (spacing: 40){
                    Text("Metal")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundStyle(.azulTexto)
                        .padding(.top, 400)
                    
                    VStack (spacing: 18) {
                        ResultMetal(tituloBlank: "altura máxima(viga)", resultMetal: dimensaoVao)
                        ResultBlanks(tituloBlank: "vão máximo")
                    }
                    .padding(.horizontal, 40)
                    HStack (spacing: 35){
                        NavigationLink{
                            homePage(nomeTeste: "matheus")
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
    ResultView2(dimensaoVao: .constant(0))
}
