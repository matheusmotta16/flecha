//
//  CoreDataViewModel.swift
//  flecha
//
//  Created by Matheus Motta on 22/07/25.
//

import Foundation
import CoreData
import SwiftUI


class CoreDataViewModel: ObservableObject {
    @Published public var concretos: [Concreto] = []
    
    public func getNotifications() {
        concretos = CoreDataModel.shared.fetchConcreto()
    }
    
    public func createConcreto(secaoTransversal: Double, tensaoAdm: Double, fckUtilizado: Double){
        let newConcreto: Concreto = CoreDataModel.shared.createConcreto(secaoTransversal: secaoTransversal, tensaoAdm: tensaoAdm, fckUtilizado: fckUtilizado)
        self.concretos.append(newConcreto)
    }
    
    public func deleteConcreto(concreto: Concreto) {
        CoreDataModel.shared.deleteConcreto(concreto: concreto)
    }
}
