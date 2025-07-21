//
//  CalculusView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct CalculusView: View {
    
    @State var inputDado: String = ""
    @State var inputDado2: String = ""
    @State var inputDado3: String = ""
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
                    
                    VStack (spacing: 15){
                        ZStack{
                            calculusBlanks(dado: "área de influência")
                            TextField("", text: $inputDado)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                            
                        }
                        ZStack {
                            calculusBlanks(dado: "número de pavimentos")
                            TextField("", text: $inputDado2)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                        }
                        ZStack {
                            calculusBlanks(dado: "dimensão do vão")
                            TextField("", text: $inputDado3)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                        }
                        
                        
                        
                        
                        NavigationLink{
                            ResultView1()
                        } label: {
                            calculusButton()
                        }
                    }
                    
                }
            }
            //        .ignoresSafeArea()
        }
        
    }
}

#Preview {
    CalculusView()
}
