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
    @State var dimensaoVaoBlank: Double = 0
    @State var dimensaoConcreto: Double = 0
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Image("BGCalculusScreen")
                    .resizable()
                    .ignoresSafeArea()
             
                    VStack (spacing: 60){
                        VStack {
                            Text("Dimensões")
                                .font(.system(size: 50, weight: .bold, design: .rounded))
                                .foregroundStyle(.azulTexto)
                                .bold()
                            
                            Text("preecnha os espaços com \n     os dados desejados")
                                .foregroundStyle(.sub)
                                .bold()
                            
                            
                        }
                        ScrollView {
                        VStack (spacing: 40){
                            
                            VStack{
                                ZStack{
                                    calculusBlanks(dado: "área de influência", unidadeMedida: "-m²-")
                                    TextField("", value: $areaDeInfluencia, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                    
                                }
                                ZStack {
                                    calculusBlanks(dado: "número de pavimentos", unidadeMedida: "-U.M-")
                                    TextField("", value: $numeroPavimento, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                }
                                ZStack {
                                    calculusBlanks(dado: "dimensão do vão", unidadeMedida: "-m-")
                                    TextField("", value: $dimensaoVaoBlank, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                }
                            }
                            
                            
                            VStack{
                                NavigationLink{
                                    ResultView1(dimensaoConcreto: $dimensaoConcreto)
                                        
                                }
                                label: {
                                    calculusButton()
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    let calculadora = Calculator(pesoPilar: areaDeInfluencia, numPavimento: numeroPavimento)
                                    dimensaoConcreto = calculadora.calcular(pesoPilar: areaDeInfluencia, numPavimento: numeroPavimento)
                                })
                            }
                        }
                        
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    CalculusView( dimensaoConcreto: 0)
}
