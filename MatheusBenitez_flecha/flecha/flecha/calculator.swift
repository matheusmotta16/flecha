//
//  calculator.swift
//  flecha
//
//  Created by Matheus Motta on 21/07/25.
//

import Foundation

struct Calculator {
    
    public var pesoPilar: Double
    public var pesoPavimento: Double = 10
//    public var cargaTotal: Double
    public var numPavimento: Double
    public var tensaoAdm: Double = 2.125
    public var pilarFinal: Double = 20
    
    init(pesoPilar: Double, numPavimento: Double) {
        self.pesoPilar = pesoPilar
//        self.cargaTotal = cargaTotal
        self.numPavimento = numPavimento

    }
    
    public func calcular(pesoPilar: Double, numPavimento: Double) -> Double {
        
        let pesoAplicado = pesoPilar * pesoPavimento
        
        let pesoCarga = pesoAplicado * numPavimento
        
        let carregamentoFinal = pesoCarga / tensaoAdm
        
        let resuladoFinal = carregamentoFinal / pilarFinal
        return resuladoFinal
        
    }
    
}

//var calculator = Calculator()
//calculator.pesoAplicado(pesoPilar: 11.12, pesoPavimento: 10)


struct metalCalculator {
    
    public var vaoMetal: Double
    
    
    init(vaoMetal: Double) {
        self.vaoMetal = vaoMetal
    }
    
    
    public func calcularMetal(vaoMetal: Double) -> Double {
        let vaoPilarMetal = vaoMetal * 0.3
        
        return vaoPilarMetal
    }
}
