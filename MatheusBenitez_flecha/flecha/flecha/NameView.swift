//
//  NameScreen.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct NameScreen: View {
    
    @State var title = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("BGNameScreen")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 244){
                    VStack {
                        Text("Olá \nprojetista!")
                            .font(.system(size: 60))
                            .padding(.trailing, 20)
                            .foregroundStyle(.azulTitulo)
                            .bold()
                        
                        Text("como posso te chamar?")
                            .font(.system(size: 20))
                            .padding(.trailing,80)
                            .foregroundStyle(.azul)
                            .bold()
                    }
                    
                    VStack{
                        Text("digite seu nome")
                            .foregroundStyle(.azulTitulo)
                            .bold()
                        VStack(spacing: 30){
                            RoundedRectangle(cornerRadius: 29)
                                .frame(width: 328, height: 54)
                                .foregroundStyle(.colorNameView)
                           
                            
                            NavigationLink {
                                ContentView()
                            }
                            label: {
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 29)
                                        .frame(width: 328, height: 54)
                                        .foregroundStyle(.colorNameView)
                                    Text("continuar")
                                        .font(.title)
                                        .foregroundStyle(.azulTitulo)
                                        .bold()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    NameScreen()
}
