
//
//  MainButton.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//
import SwiftUI

struct MainButton: View {
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 35){
                  
                    Text("Escolha \no material")
                        .font(.system(size: 45.0, weight: .bold, design: .rounded))
                        .padding(.trailing, 95)
                        .foregroundStyle(.azulTitulo)
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(.clear)
                            .frame(width: 290, height: 191)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color.azul, lineWidth: 1)
                            )
                        VStack {
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 97, height: 38)
                                    .foregroundStyle(.azulClaro)
                                    .padding(.trailing, 174)
                                
                                Text("concreto")
                                    .font(.system(size: 15, weight: .regular, design: .rounded))
                                    .padding(.trailing, 174)
                                    .foregroundStyle(.azulTexto)
                                
                            }
                            
                            NavigationLink {
                                CalculusView()
                            }
                            label: {
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 277, height: 128)
                                    .foregroundStyle(.azul)
                                
                            }
                            
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(.clear)
                            .frame(width: 290, height: 191)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color.azul, lineWidth: 1)
                            )
                        VStack {
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 97, height: 38)
                                    .foregroundStyle(.azulClaro)
                                    .padding(.trailing, 174)
                                
                                Text("metal")
                                    .font(.system(size: 15, weight: .regular, design: .rounded))
                                    .padding(.trailing, 174)
                                    .foregroundStyle(.azulTexto)
                                
                            }
                            
                            NavigationLink {
                                CalculusView()
                            }
                            label: {
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 277, height: 128)
                                    .foregroundStyle(.azul)
                                
                            }
                            
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    MainButton()
}
