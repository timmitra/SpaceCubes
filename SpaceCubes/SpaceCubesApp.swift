//
//  SpaceCubesApp.swift
//  SpaceCubes
//
//  Created by Tim Mitra on 2023-08-19.
//

import SwiftUI

@main
struct SpaceCubesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
