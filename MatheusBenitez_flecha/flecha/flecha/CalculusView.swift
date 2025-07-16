//
//  CalculusView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct CalculusView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("BGCalculusScreen")
                    .resizable()
                    .ignoresSafeArea()
                VStack (spacing: 60){
                    VStack {
                        
                        Text("Dimensões")
                            .font(.largeTitle)
                            .foregroundStyle(.azulTitulo)
                            .bold()
                        
                        Text("preecnha os espaços com \n     os dados desejados")
                            .foregroundStyle(.azul)
                            .bold()
                        
                        
                    }
                    
                    VStack (spacing: 10){
                        calculusBlanks()
                        calculusBlanks()
                        calculusBlanks()
                        calculusBlanks()
                       
                    }
                    NavigationLink{
                     ResultView()
                    } label: {
                        calculusButton()
                    }
                }
                
            }
        }
//        .ignoresSafeArea()
    }
    
}


#Preview {
    CalculusView()
}
