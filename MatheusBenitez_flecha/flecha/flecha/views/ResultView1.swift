//
//  ResultView.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultView1: View {
    
    @ObservedObject private var viewModel: CoreDataViewModel = CoreDataViewModel()
    
    @Binding var dimensaoConcreto: Double
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Image("BGResultScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                
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
                    Text("Concreto")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundStyle(.azul)
                        .padding(.top, 400)
                    
                    VStack {
                        
                        ResultConcreto(tituloBlank: "seção transversal", resultConcreto: dimensaoConcreto, numberBlanks: "cm")
                        ResultBlanks(tituloBlank: "fck utilizado", numberBlanks: "3.5 KN/ cm²")
                        ResultBlanks(tituloBlank: "tensão admissível", numberBlanks: "2.125 KN/ cm²")
                    }
                    .padding(.horizontal, 40)
                    
                    
                    HStack (spacing: 35){
                        NavigationLink{
                            homePage(nomeTeste: "a")
                        } label:{
                            ResultButton()
                        }
                        
                        NavigationLink{
                            FavoriteView()
                        } label:{
                            ResultFavoriteButton()
                            //                        }  .simultaneousGesture(TapGesture().onEnded {
                            //                            viewModel.createConcreto(secaoTransversal: <#T##Double#>, tensaoAdm: tensaoAdm, fckUtilizado: <#T##Double#>)
                            //
                            //                        })
                        }
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    ResultView1(dimensaoConcreto:.constant(0))
}
