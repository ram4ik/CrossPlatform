//
//  CrossPlatformApp.swift
//  WatchOSCrossPlatform Extension
//
//  Created by Ramill Ibragimov on 12.05.2021.
//

import SwiftUI

@main
struct CrossPlatformApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
