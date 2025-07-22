//
//  CalculusView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct CalculusView: View {
    
    
    @ObservedObject private var viewModel: CoreDataViewModel = CoreDataViewModel()
    
    
    @State var areaDeInfluencia: Double = 0
    @State var numeroPavimento: Double = 0
    @State var dimensaoVao: Double = 0
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
                            TextField("", value: $areaDeInfluencia, format: .number)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                            
                        }
                        ZStack {
                            calculusBlanks(dado: "número de pavimentos")
                            TextField("", value: $numeroPavimento, format: .number)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                        }
                        ZStack {
                            calculusBlanks(dado: "dimensão do vão")
                            TextField("", value: $dimensaoVao, format: .number)
                                .padding(.leading, 80)
                                .padding(.top, 50)
//                                .border(.red)
                                .foregroundStyle(.calculus)
                        }
                        
                        
                        
                        
                        NavigationLink{
                            ResultView1()
                        }
                        label: {
                            calculusButton()
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            let calculadora = Calculator(pesoPilar: areaDeInfluencia, numPavimento: numeroPavimento)
                            let dimensao = calculadora.calcular(pesoPilar: areaDeInfluencia, numPavimento: numeroPavimento)
                            
                        })
                    }
                    
                }
            }
           
        }
        
    }
}

#Preview {
    CalculusView()
}
