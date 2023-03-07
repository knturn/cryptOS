//
//  PreviewProvider.swift
//  cryptOS
//
//  Created by Turan, Kaan on 2.03.2023.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    private init () {}
    let homeViewModel = HomeViewModel()
    let sampleCoin = CoinModel(
        id: "bitcoin",
        symbol: "BTC",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 52345.00,
        marketCap: 981614473777.00,
        marketCapRank: 1,
        fullyDilutedValuation: 1100755334221.00,
        totalVolume: 50974030468,
        high24H: 52592,
        low24H: 49589,
        priceChange24H: 1811.98,
        priceChangePercentage24H: 3.57894,
        marketCapChange24H: 32225195004,
        marketCapChangePercentage24H: 3.38616,
        circulatingSupply: 18684962,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 64805,
        athChangePercentage: -19.11275,
        athDate: "2021-04-14T11:54:46.763Z",
        atl: 67.81,
        atlChangePercentage: 76944.08444,
        atlDate: "2013-07-06T00:00:00.000Z",
        lastUpdated: "2022-03-06T12:10:30.000Z",
        sparklineIn7D: nil,
        priceChangePercentage24HInCurrency: 3.5789381117341163,
        currentHoldings: 0.5
    )
   
}
