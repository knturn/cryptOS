//
//  cryptOSApp.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import SwiftUI

@main
struct cryptOSApp: App {
    @StateObject var viewModel = HomeViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(viewModel)
        }
    }
}
