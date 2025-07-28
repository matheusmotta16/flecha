//
//  FavoriteView.swift
//  flecha
//
//  Created by Matheus Motta on 15/07/25.
//

import SwiftUI



struct FavoriteView: View {
    
    @ObservedObject private var viewModel: CoreDataViewModel = CoreDataViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                
                Image("BGFavoriteView")
                    .resizable()
                    .ignoresSafeArea()
                //                    .opacity(50/100)
                    .toolbar{
                        ToolbarItem(placement: .topBarTrailing){
                            Text("Favoritos")
                                .font(.system(size: 45.0, weight: .bold, design: .rounded))
                                .foregroundStyle(.azulTexto)
                                .padding(.trailing, 150)
                        }
                    }
                ScrollView{
                    VStack{
                        
                        
                        
                        
                        ForEach(viewModel.concretos, id: \.self)
                        { concreto in
                            FavoriteList(dimensaoConcreto: concreto.secaoTransversal)
                            
                            //                VStack (spacing: 30){
                            //                    FavoriteList()
                            //                    FavoriteList()
                            //                    FavoriteList()
                            //                    FavoriteList()
                            //                }
                                .padding(.bottom, 200)
                        }
                    }
                }
            }
            .onAppear{
                viewModel.getConcretos()
            }
        }
    }
    }

#Preview {
    FavoriteView()
}
