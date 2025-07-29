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
    
    public func createMetal(vaoMetal: Double, favorite: Bool) -> Metal {
        let metal: Metal = Metal(context: viewContext)
        metal.vaoMetal = vaoMetal
        metal.favorite = favorite
        saveContext()
        return metal
        
    }
    
    public func deleteMetal(metal: Metal) {
        viewContext.delete(metal)
        saveContext()
    }
}
