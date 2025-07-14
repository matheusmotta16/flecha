
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
                        .font(.largeTitle)
                        .padding(.trailing, 135)
                        .foregroundStyle(.azulTitulo)
                        .bold()
                    
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
