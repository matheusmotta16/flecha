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
        persistentContainer = NSPersistentContainer(name: "Model")
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
    
    public func createConcreto(secaoTransversal: Double, tensaoAdm: Double, fckUtilizado: Double) -> Concreto {
        let concreto: Concreto =
        Concreto(context: viewContext)
        concreto.secaoTransversal = secaoTransversal
        concreto.tensaoAdm = tensaoAdm
        concreto.fckUtilizado = fckUtilizado
        saveContext()
        
        return concreto
        
    }
    
    public func deleteConcreto(concreto: Concreto) {
        viewContext.delete(concreto)
        saveContext()
    }
}
