//
//  secretIngredientsApp.swift
//  secretIngredients
//
//  Created by Sreekanth PS on 25/11/20.
//

import SwiftUI

@main
struct secretIngredientsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
            SpalshView()
        }
    }
}
