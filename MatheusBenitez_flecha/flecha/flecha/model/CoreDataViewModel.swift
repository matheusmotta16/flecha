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
    @Published public var  metais: [Metal] = []
    @Published public var scheduledNotifications: [ScheduledNotification] = []
    
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
    
    
    
    
    public func getMetais() {
        metais = CoreDataModel.shared.fetchMetal()
    }
    
    public func createMetal(vaoMetal: Double, favorite: Bool, resultadoVao: Double){
        let newMetal: Metal = CoreDataModel.shared.createMetal(vaoMetal: vaoMetal, favorite: favorite, resultadoVao: resultadoVao)
        self.metais.append(newMetal)
    }
    
    public func deleteMetal(metal: Metal) {
        CoreDataModel.shared.deleteMetal(metal: metal)
    }
    
    
    
    
   
    
    public func getNotifications() {
        scheduledNotifications = CoreDataModel.shared.fetchScheduledNotifications()
    }
    
    public func createScheduledNotification(id: UUID, date: Date) {
        let newScheduledNotification: ScheduledNotification = CoreDataModel.shared.createScheduledNotification(id: id, date: date)
        self.scheduledNotifications.append(newScheduledNotification)
    }
    
    public func deleteScheduledNotification(scheduledNotification: ScheduledNotification) {
        CoreDataModel.shared.deleteNotification(scheduledNotification: scheduledNotification)
    }
    
}
