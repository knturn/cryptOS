//
//  HomeView.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            // content layer
            VStack {
               homeHeader
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
extension HomeView {
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus": "info")
                .background(
                CirclebuttonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio": "Live Prices")
                .animation(.none)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
