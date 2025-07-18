//
//  NameScreen.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct NameScreen: View {
    
    @State var title = ""
    @State var name: String = ""
//    @Binding var username: String = ""
    @State var username: String = ""
    var nomeTest: String
    
    var body: some View {
        NavigationStack{
            ZStack {
                Image("BGNameScreen")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 244){
                    VStack {
                        Text("Olá \nprojetista!")
                            .font(.system(size: 60, weight: .bold, design: .rounded))
                            .padding(.trailing, 20)
                            .foregroundStyle(.azulTitulo)
                        
                        Text("como posso te chamar?")
                            .font(.system(size: 20, weight: .bold, design: .rounded))               .padding(.trailing,80)
                            .foregroundStyle(.azul)
                            .bold()
                    }
                    
                    VStack{
                        Text("digite seu nome")
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .foregroundStyle(.azulTitulo)
                        
                        VStack(spacing: 26){
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 29)
                                    .frame(width: 328, height: 54)
                                    .foregroundStyle(.colorNameView)
                                
                                
                                //                                VStack{
                                //                                    if !username.isEmpty {
                                //                                    MainButton(username: $username)
                                //                            }
                                
                                TextField("", text: $username)
                                    .padding(.leading, 60)
                                    .foregroundStyle(.calculus)
                                //
                                
                            }
                        
                        
                        NavigationLink {
                            homePage(nomeTeste: "nome")
                            .navigationBarBackButtonHidden()
                        }
                        label: {
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 29)
                                    .frame(width: 328, height: 54)
                                    .foregroundStyle(.colorNameView)
                                Text("continuar")
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .foregroundStyle(.azulTitulo)
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
    NameScreen(nomeTest: "nome")
}
