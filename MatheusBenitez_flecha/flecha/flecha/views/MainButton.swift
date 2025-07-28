
//
//  MainButton.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//
import SwiftUI

struct MainButton: View {
    
//    @Binding var username: String
    
    var body: some View {
        
            
            ZStack {
                
                VStack(spacing: 60){
                    
                    
                    
                    ZStack {
                        
                        Rectangle()
                            .fill(.clear)
                            .frame(width: 290, height: 191)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color.azulTexto, lineWidth: 1)
                            )
                        VStack (spacing: 5){
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 97, height: 38)
                                    .foregroundStyle(.azulMainbutton)
                                    .padding(.trailing, 174)
                                
                                Text("concreto")
                                    .font(.system(size: 15, weight: .bold, design: .rounded))
                                    .padding(.trailing, 174)
                                    .foregroundStyle(.labelMain)
                                
                            }
                            
                            NavigationLink {
                                CalculusView(dimensaoConcreto: 0)
                            }
                            label: {
                           
                                    Image("MainConcreto")
                                        .resizable()
                                        .frame(width: 277, height: 135)
                                        .opacity(0.8)
                                
                            }
                            
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .fill(.clear)
                            .frame(width: 290, height: 191)
                            .overlay(
                                RoundedRectangle(cornerRadius: 29)
                                    .stroke(Color.azulTexto, lineWidth: 1)
                            )
                        VStack (spacing: 10) {
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 28)
                                    .frame(width: 97, height: 38)
                                    .foregroundStyle(.azulMainbutton)
                                    .padding(.trailing, 174)
                                
                                Text("metal")
                                    .font(.system(size: 15, weight: .bold, design: .rounded))
                                    .padding(.trailing, 174)
                                    .foregroundStyle(.labelMain)
                                
                                
                            }
                            
                            NavigationLink {
                                CalculusViewMetal()
                            }
                            label: {
                                
                                Image("MainMetal")
                                    .resizable()
                                    .frame(width: 277, height: 135)
                                    .opacity(0.9)
                                
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
