//
//  CoreDataController.swift
//  flecha
//
//  Created by Matheus Motta on 22/07/25.
//


import Foundation
import CoreData

class CoreDataModel {
    public static let shared = CoreDataModel()
    
    private let persistentContainer: NSPersistentContainer
    
    public var viewContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "FlechaModel")
        persistentContainer.loadPersistentStores(completionHandler: { _,
            error in
            if let error = error {
                fatalError("[ERROR]: Could not load CoreData stack (\(error.localizedDescription)")
            }
        })
    }
    
    public func saveContext(){
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            }
            catch {
                print("[WARNING]: Failed to save container view context (\(error.localizedDescription))")
            }
        }
    }
    
    public func fetchConcreto() -> [Concreto] {
        let fetchRequest: NSFetchRequest<Concreto> = Concreto.fetchRequest()
        do {
            let result = try  viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Concrete (\(error.localizedDescription))")
            return []
        }
    }
    
    public func createConcreto(secaoTransversal: Double, favorite: Bool) -> Concreto {
        let concreto: Concreto = Concreto(context: viewContext)
        concreto.secaoTransversal = secaoTransversal
        concreto.favorite = favorite
        saveContext()
        return concreto
        
    }
    
    public func deleteConcreto(concreto: Concreto) {
        viewContext.delete(concreto)
        saveContext()
    }
    
    public func fetchMetal() -> [Metal] {
        let fetchRequest: NSFetchRequest<Metal> = Metal.fetchRequest()
        do {
            let result = try  viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch Concrete (\(error.localizedDescription))")
            return []
        }
    }
    
    public func createMetal(vaoMetal: Double, favorite: Bool, resultadoVao: Double) -> Metal {
        let metal: Metal = Metal(context: viewContext)
        metal.vaoMetal = vaoMetal
        metal.favorite = favorite
        metal.resultadoVao = resultadoVao
        saveContext()
        return metal
        
    }
    
    public func deleteMetal(metal: Metal) {
        viewContext.delete(metal)
        saveContext()
    }
    
    
    public func fetchScheduledNotifications() -> [ScheduledNotification] {
        let fetchRequest: NSFetchRequest<ScheduledNotification> = ScheduledNotification.fetchRequest()
        
        do {
            let result = try viewContext.fetch(fetchRequest)
            return result
        }
        catch {
            print("[WARNING]: Failed to fetch scheduled notifications (\(error.localizedDescription))")
            return []
        }
    }
    
    public func createScheduledNotification(id: UUID, date: Date) -> ScheduledNotification {
        let scheduledNotification: ScheduledNotification = ScheduledNotification(context: viewContext)
        scheduledNotification.id = id
        scheduledNotification.date = date
        saveContext()
        
        return scheduledNotification
    }
    
    public func deleteNotification(scheduledNotification: ScheduledNotification) {
        viewContext.delete(scheduledNotification)
        saveContext()
    }
}
