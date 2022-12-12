//
//  MYNTAppApp.swift
//  MYNTApp
//
//  Created by Lachlan Ryan on 13/12/2022.
//

import SwiftUI

@main
struct MYNTAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
