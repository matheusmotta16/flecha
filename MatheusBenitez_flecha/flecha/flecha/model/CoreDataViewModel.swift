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
    
    public func getConcretos() {
        concretos = CoreDataModel.shared.fetchConcreto()
    }
    
    public func createConcreto(secaoTransversal: Double, favorite: Bool){
        let newConcreto: Concreto = CoreDataModel.shared.createConcreto(secaoTransversal: secaoTransversal, favorite: favorite)
        self.concretos.append(newConcreto)
    }
    
    public func deleteConcreto(concreto: Concreto) {
        CoreDataModel.shared.deleteConcreto(concreto: concreto)
    }
}
