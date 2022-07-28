//
//  learnplanApp.swift
//  learnplan
//
//  Created by putri as on 27/07/22.
//

import SwiftUI

@main
struct learnplanApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
