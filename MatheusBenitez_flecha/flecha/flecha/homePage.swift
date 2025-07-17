//
//  homePage.swift
//  flecha
//
//  Created by Matheus Motta on 17/07/25.
//

import SwiftUI

struct homePage: View {
//    @Binding var username: String
    var nomeTeste: String
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    
                    HStack (spacing: 280){
                        NavigationLink{
                            NameScreen(nomeTest: "nome")
                        } label: {
                            miniLogo()
                        }
                        
                        NavigationLink{
                            FavoriteView()
                        } label: {
                            brushButton()
                        }
                    }
                   
                    userName()
                        .padding(.top, 20)
                    Text("Escolha \no material")
                        .font(.system(size: 45.0, weight: .bold, design: .rounded))
                        .padding(.trailing, 95)
                        .foregroundStyle(.azulTitulo)
                    
                    MainButton()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    homePage(nomeTeste: "Matheus")
}
