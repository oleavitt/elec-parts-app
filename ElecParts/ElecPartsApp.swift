//
//  ElecPartsApp.swift
//  ElecParts
//
//  Created by Oren Leavitt on 10/4/24.
//

import SwiftUI
import SwiftData

@main
struct ElecPartsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
