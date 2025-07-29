//
//  homePage.swift
//  flecha
//
//  Created by Matheus Motta on 17/07/25.
//

import SwiftUI

struct homePage: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var username: String
//    var nomeTeste: String
    var body: some View {
        NavigationStack{
            
            ZStack{
                
                Image("BGMainScreen")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                    ZStack {
                       
                        VStack (spacing: -10){
                            HStack (alignment: .center, spacing: -10){
                                Text("Olá")
                                    .foregroundStyle(.dataBlanks)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                    .fixedSize(horizontal: true, vertical: false)
                                
                                Text("\(username)!")
    //                                .frame(width: 15, height: 10)
                                    .padding(/*.trailing, 130*/)
                                    .foregroundStyle(.dataBlanks)
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
    //                                .padding(.bottom, 106)
//                                    .lineLimit(1)
//                                    .fixedSize(horizontal: true, vertical: false)
                                Spacer()
                            }.padding(.horizontal, 50)
                                
                            Text("Escolha \no material")
                                .font(.system(size: 45.0, weight: .bold, design: .rounded))
                                .padding(.trailing, 95)
                                .foregroundStyle(.azulTexto)
                        }
                            
                      
                    }
                    
                    
                    MainButton()
                    Spacer()
                }
                    
            }
            .toolbar{
                ToolbarItem(placement: . cancellationAction) {
                    Button  {
                        
                        dismiss()
                    } label: {
                        miniLogo()
                    }
                }
                ToolbarItem(placement: .confirmationAction){
                    NavigationLink{
                        FavoriteView()
                    } label: {
                        brushButton()
                    }
                    
                }
            }
        }
    }
}

#Preview {
    homePage(/*nomeTeste: "matheus"*/ username: .constant(""))
}
