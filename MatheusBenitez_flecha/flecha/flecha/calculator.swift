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
    public var cargaTotal: Double
    public var numPavimento: Double
    public var tensaoAdm: Double = 2.125
    public var pilarFinal: Double = 20
    
    init(pesoPilar: Double, pesoPavimento: Double, cargaTotal: Double, numPavimento: Double, tensaoAdm: Double, pilarFinal: Double) {
        self.pesoPilar = pesoPilar
        self.pesoPavimento = pesoPavimento
        self.cargaTotal = cargaTotal
        self.numPavimento = numPavimento
        self.tensaoAdm = tensaoAdm
        self.pilarFinal = pilarFinal
    }
    
    public func pesoAplicado(pesoPilar: Double, pesoPavimento: Double) -> Double {
        
        let resultado = pesoPilar * pesoPavimento
        return resultado
    }
    
    
    public func pesoCarga( pesoPilar: Double, pesoPavimento: Double, numPavimento: Double) -> Double {
        
        let resultado = pesoAplicado(pesoPilar: pesoPilar, pesoPavimento: pesoPavimento) / numPavimento
        return resultado
    }
  
    
    public func carregamentoFinal (pesoPilar: Double, pesoPavimento: Double, numPavimento: Double, tensaoAdm: Double) -> Double {
        let resultado = pesoCarga(pesoPilar: pesoPilar, pesoPavimento: pesoPavimento, numPavimento: numPavimento) / tensaoAdm
        return resultado
    }
    
    
    public func calculoFinal (pesoPilar: Double, pesoPavimento: Double, numPavimento: Double, cargaFinal: Double, tensaoAdm: Double, pilarFinal: Double) -> Double {
        let resultado = carregamentoFinal (pesoPilar: pesoPilar, pesoPavimento: pesoPavimento, numPavimento: numPavimento, tensaoAdm: tensaoAdm) / pilarFinal
        return resultado
        
    }
}
