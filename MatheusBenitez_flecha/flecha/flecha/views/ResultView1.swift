//
//  ResultView.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct ResultView1: View {
    
    @ObservedObject private var viewModel: CoreDataViewModel = CoreDataViewModel()
    @Environment(\.dismiss) var dismiss
    @Binding var dimensaoConcreto: Double
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Image("BGResultScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack(spacing: 8) {
                    Text("Aqui está!")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundStyle(.azulTexto)
                    
                    Image("ResultConcreto")
                        .resizable()
                        .frame(width: 245, height: 245)
                }.padding(.bottom, 320)
                
                VStack (spacing: 20){
                    Text("Concreto")
                        .font(.system(size: 25, weight: .bold, design: .rounded))
                        .foregroundStyle(.azulTexto)
                        .padding(.top, 400)
                    
                    VStack {
                        
                        ResultConcreto(tituloBlank: "seção transversal", resultConcreto: dimensaoConcreto, numberBlanks: "cm")
                        ResultBlanks(tituloBlank: "fck utilizado", numberBlanks: "3.5 KN/ cm²")
                        ResultBlanks(tituloBlank: "tensão admissível", numberBlanks: "2.125 KN/ cm²")
                    }
                    .padding(.horizontal, 40)
                    
                    HStack (spacing: 35){
                        
                        Button{
                            dismiss()
                            dismiss()
                            
                        } label: {
                            ResultButton()
                        }
                        
                        NavigationLink{
                            FavoriteView()
                        } label:{
                            ResultFavoriteButton()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            viewModel.createConcreto(secaoTransversal: dimensaoConcreto, favorite: true)
                            for concreto in viewModel.concretos{
                            }
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    ResultView1(dimensaoConcreto:.constant(0))
}
