//
//  HomeViewModel.swift
//  cryptOS
//
//  Created by Turan, Kaan on 2.03.2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var coins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            guard let self else {return}
            self.coins.append(DeveloperPreview.instance.sampleCoin)
            self.portfolioCoins.append(DeveloperPreview.instance.sampleCoin)
        }
    }
}
