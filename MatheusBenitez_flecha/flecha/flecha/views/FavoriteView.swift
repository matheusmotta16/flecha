//
//  FavoriteView.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI



struct FavoriteView: View {
    
    @ObservedObject private var viewModel: CoreDataViewModel = CoreDataViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationView{
            ZStack{
                ZStack{
                                            
                        
                    List{
                        
                        ForEach(viewModel.concretos, id: \.self)
                        { concreto in
                            FavoriteList(dimensaoConcreto: concreto.secaoTransversal)
                                .swipeActions(content: {
                                    Button(role: .destructive) {
                                        viewModel.deleteConcreto(concreto: concreto)
                                        //            dismiss()
                                    } label: {
                                        VStack{
                                            Image(systemName: "trash.circle.fill")
                                                .foregroundStyle(.azulTexto)
                                        }
                                    }
                                    .tint(.red)
                                })
                            
                            
                            
                        }
                    
                        
//                        List{
//                            
//                            ForEach(viewModel.metais, id: \.self)
//                            { concreto in
//                                FavoriteListMetal(dimensaoVao: metal.vaoMetal)
//                                    .swipeActions(content: {
//                                        Button(role: .destructive) {
//                                            viewModel.deleteMetal(metal: metal)
//                                            //            dismiss()
//                                        } label: {
//                                            VStack{
//                                                Image(systemName: "trash.circle.fill")
//                                                    .foregroundStyle(.azulTexto)
//                                            }
//                                        }
//                                        .tint(.red)
//                                    })
//                                
//                            }
//                            
//                        }
                    }.background(Image("BGFavoriteView")
                                     
                            .resizable()
                            .ignoresSafeArea()
                            .toolbar{
                                ToolbarItem(placement: .topBarTrailing){
                                    Text("Favoritos")
                                        .font(.system(size: 45.0, weight: .bold, design: .rounded))
                                        .foregroundStyle(.azulTexto)
                                        .padding(.trailing, 150)
                                }
                            })
                        .scrollContentBackground(.hidden)
                        
                        
                    }
                    .onAppear{
                        viewModel.getConcretos()
                    }
                }
            }
            
        }
    }

#Preview {
    FavoriteView()
}
