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
                VStack{
                    
                    List{
                        Section(header: Text("Concreto")) {
                            
                            ForEach(viewModel.concretos, id: \.self)
                            { concreto in
                                FavoriteList(dimensaoConcreto: concreto.secaoTransversal)
                                    .swipeActions(content: {
                                        Button(role: .destructive) {
                                            viewModel.deleteConcreto(concreto: concreto)
                                        } label: {
                                            VStack{
                                                Image(systemName: "trash.circle.fill")
                                                    .foregroundStyle(.azulTexto)
                                            }
                                        }
                                        .tint(.accentColor)
                                    })
                            }
                        } .headerProminence(.increased)
                        Section(header: Text("Metal")) {
                            
                            ForEach(viewModel.metais, id: \.self)
                            { metal in
                                
                                FavoriteListMetal(vaoMetal: metal.resultadoVao)
                                    .swipeActions(content: {
                                        Button(role: .destructive) {
                                            viewModel.deleteMetal(metal: metal)
                                            
                                        } label: {
                                            VStack{
                                                Image(systemName: "trash.circle.fill")
                                                    .foregroundStyle(.azulTexto)
                                            }
                                        }
                                        .tint(.accentColor)
                                    })
                            }
                        }
                    }
                    .listRowBackground(Color.clear)
                    .listStyle(.insetGrouped)
                    .background(Image("BGFavoriteView")
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
                    viewModel.getMetais()
                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
