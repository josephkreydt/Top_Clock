//
//  Top_ClockApp.swift
//  Top Clock
//
//  Created by Joseph Kreydt on 2/22/23.
//

import SwiftUI

@main
struct Top_ClockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(.hiddenTitleBar)
        .defaultSize(width: 300.0, height: 300.0)
        .windowResizability(.contentMinSize)
    }
}
