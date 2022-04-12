//
//  CafeApp.swift
//  Cafe
//
//  Created by 김민지 on 2022/04/12.
//

import SwiftUI

@main
struct CafeApp: App {   // AppDelegate, SceneDelegate 역할
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .accentColor(.green)
        }
    }
}
