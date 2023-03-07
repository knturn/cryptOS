//
//  HomeView.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false
    @EnvironmentObject var viewModel: HomeViewModel
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            // content layer
            VStack {
                homeHeader
                columnTitles
                if !showPortfolio {
                   allCoinsList
                        .transition(.move(edge: .leading))
                } else {
                    porfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                Spacer()
                    
            }
        }
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
    private var columnTitles: some View {
        HStack(alignment: .firstTextBaseline) {
            Text("Coin")
            Spacer()
            showPortfolio ? Text("Holdings") : nil
            Text("Prices")
                .frame(width: UIScreen.main.bounds.width / 3.5)
        }
        .padding(.horizontal)
    }
    private var allCoinsList: some View {
        List {
            ForEach(viewModel.coins) { coin in
                CoinRowView(showHoldings: false, coin: coin)
                CoinRowView(showHoldings: false, coin: coin)
                  
            }
            .listRowInsets(.init(top: 10, leading: 2, bottom: 10, trailing: 10))
        }
        .listStyle(.plain)
    }
    private var porfolioCoinsList: some View {
        List {
            ForEach(viewModel.portfolioCoins) { coin in
                CoinRowView(showHoldings: true, coin: coin)
                CoinRowView(showHoldings: true, coin: coin)
                  
            }
            .listRowInsets(.init(top: 10, leading: 2, bottom: 10, trailing: 10))
        }
        .listStyle(.plain)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
        }
        .navigationBarHidden(true)
        .environmentObject(DeveloperPreview.instance.homeViewModel)
    }
}
