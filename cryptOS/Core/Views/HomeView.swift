//
//  HomeView.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            // content layer
            VStack {
                Text("Hello")
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
        .navigationBarHidden(true)
    }
}
