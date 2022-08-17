//
//  habit_oApp.swift
//  habit-o
//
//  Created by fausto.dassenno on 11/08/22.
//

import SwiftUI



@main
struct habit_oApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
