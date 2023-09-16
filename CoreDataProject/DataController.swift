//
//  DataController.swift
//  CoreDataProject
//
//  Created by Никита Мартьянов on 13.09.23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name:"CoreDataProject")
    
    init() {
        container.loadPersistentStores {
            descriptoin, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

