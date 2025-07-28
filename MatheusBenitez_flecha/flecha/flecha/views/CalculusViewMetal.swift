//
//  CalculusView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct CalculusViewMetal: View {
    
    
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
                ScrollView {
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
                        
                        VStack (spacing: 40){
                            
                            VStack{
                                ZStack{
                                    calculusBlanks(dado: "área de influência")
                                    TextField("", value: $areaDeInfluencia, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                    
                                }
                                ZStack {
                                    calculusBlanks(dado: "número de pavimentos")
                                    TextField("", value: $numeroPavimento, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                }
                                ZStack {
                                    calculusBlanks(dado: "dimensão do vão")
                                    TextField("", value: $dimensaoVao, format: .number)
                                        .padding(.leading, 80)
                                        .padding(.top, 50)
                                    //                                .border(.red)
                                        .foregroundStyle(.calculus)
                                        .keyboardType(.numberPad)
                                }
                            }
                            
                            
                            VStack{
                                NavigationLink{
                                    ResultView2(dimensaoVao:  $dimensaoVao)
                                }
                                label: {
                                    calculusButton()
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    let calculadora = metalCalculator(vaoMetal: dimensaoVao)
                                    let dimensao = calculadora.calcularMetal(vaoMetal: dimensaoVao)
                                    dimensaoVao = calculadora.calcularMetal(vaoMetal: dimensaoVao)
                                    
                                })
                            }
                        }
                        
                    }
                }
                .padding(.top, 50)
            }
        }
        
    }
}

#Preview {
    CalculusViewMetal(dimensaoVao: 0)
}
