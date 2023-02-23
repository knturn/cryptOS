//
//  CoinModel.swift
//  cryptOS
//
//  Created by Turan, Kaan on 23.02.2023.
//

import Foundation
// CoinGecko API Info
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h
 Json Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 24066,
     "market_cap": 464374360978,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 505284190149,
     "total_volume": 42253608564,
     "high_24h": 24632,
     "low_24h": 23634,
     "price_change_24h": 72.61,
     "price_change_percentage_24h": 0.30262,
     "market_cap_change_24h": 1116897707,
     "market_cap_change_percentage_24h": 0.2411,
     "circulating_supply": 19299756,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -65.15138,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 35383.71442,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-02-23T14:22:00.688Z",
     "sparkline_in_7d": {
       "price": [
         24570.76087838337,
         24414.38939258625,
         24417.15594972116,
         24679.83102850784,
         24919.806557855834,
         24898.768250686102,
         24960.697615793375,
         24873.073496952344,
         24565.916702871502,
         24481.160742965883,
         23949.132668696413,
         23756.907281577434,
         23679.49518405851,
         23742.054495436707,
         23842.082849916056,
         23845.30375829991,
         23775.31157866393,
         23729.67910921979,
         23666.448646465495,
         23703.093613200122,
         23678.593817716643,
         23740.379226044064,
         23736.204576697633,
         23786.930235267275,
         23863.610087653647,
         23814.44443817983,
         24095.652474385086,
         24142.469877098614,
         24067.364778676645,
         24330.357197477133,
         24331.661543019538,
         24525.93271860235,
         24783.677812278624,
         24668.836741008672,
         24597.1017002252,
         24628.82455217312,
         24659.08231684345,
         24615.8038139379,
         24566.260577050012,
         24607.373787840268,
         24635.531337984372,
         24626.35166081303,
         24641.39869550939,
         24546.551290305506,
         24565.60529365359,
         24554.071871374756,
         24485.68669967891,
         24513.838369547633,
         24623.47013567365,
         24582.52478838142,
         24695.038684187966,
         24673.84731568928,
         24649.21509744199,
         24646.50380828137,
         24694.124166222315,
         24643.997135346468,
         24605.578244340275,
         24617.398254219905,
         24614.831209774173,
         24635.850030004312,
         24718.557572152033,
         24663.438965439873,
         24671.987911703174,
         24682.455323172257,
         24701.586131454587,
         24715.397269922403,
         24611.235455459842,
         24607.19451392114,
         24584.204216706883,
         24597.992219855438,
         24648.182884953752,
         24680.414225768738,
         24688.44420706893,
         24680.35254689371,
         24722.665259136127,
         24941.421348504064,
         24811.629821453404,
         24575.718476823444,
         24447.433277864973,
         24535.41949302992,
         24517.17315319552,
         24525.046094321748,
         24480.53343383269,
         24322.563258356695,
         24228.784427258368,
         24235.936964705368,
         24330.874982208363,
         24429.71005966564,
         24512.16202462863,
         24462.198957935274,
         24515.33843564445,
         24518.962067453507,
         24453.928970153967,
         24885.053417947678,
         24890.781303644144,
         24916.2005783709,
         24803.7650001198,
         24864.151375677426,
         24972.047000210994,
         24923.84236428831,
         24889.483885081165,
         24868.74306697775,
         24791.713150868,
         24843.381417630946,
         24789.91562720742,
         24805.166669568982,
         24694.998348364225,
         24791.174738128513,
         24864.2572921906,
         24865.695679763776,
         24915.141860952826,
         24926.181458989326,
         24886.322731079672,
         24942.411853832433,
         24982.455934648817,
         24977.229588172384,
         24636.826151076795,
         24816.16991202087,
         24705.242314165407,
         24620.09851332096,
         24645.83935100631,
         24645.287313480385,
         24744.2704888648,
         24559.63045996503,
         24425.082151160153,
         24450.200388320085,
         24693.172169194302,
         24597.59208024316,
         24509.00495071723,
         24216.199314938425,
         24370.932550612804,
         24417.38703630947,
         24397.397744182686,
         24267.472839246897,
         24177.122052813782,
         24232.301096992152,
         24155.38913129515,
         24101.95979580724,
         23979.689917033713,
         24076.154678876246,
         23942.239790735774,
         24090.95415007665,
         24169.668962482414,
         24133.42080011329,
         24149.09812906485,
         24130.00537666956,
         24005.60066033856,
         23738.790027126597,
         23688.237675512464,
         23736.359875852024,
         23808.36149127166,
         23790.483047286212,
         23803.33475956488,
         23783.255767107872,
         24090.251960652262,
         24146.101364545222,
         24133.35362458213,
         24180.20245678518,
         24631.74748429756,
         24436.836955097122,
         24451.58460852732,
         24394.100220000757,
         24380.946288873587,
         24369.498250366214,
         24432.24273136602,
         24317.629788564882,
         24271.60002449245,
         23808.482425910828
       ]
     },
     "price_change_percentage_24h_in_currency": 0.3026230575230651
   }

 */

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Int?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Int?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image, currentHoldings
                case currentPrice = "current_price"
                case marketCap = "market_cap"
                case marketCapRank = "market_cap_rank"
                case fullyDilutedValuation = "fully_diluted_valuation"
                case totalVolume = "total_volume"
                case high24H = "high_24h"
                case low24H = "low_24h"
                case priceChange24H = "price_change_24h"
                case priceChangePercentage24H = "price_change_percentage_24h"
                case marketCapChange24H = "market_cap_change_24h"
                case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
                case circulatingSupply = "circulating_supply"
                case totalSupply = "total_supply"
                case maxSupply = "max_supply"
                case ath
                case athChangePercentage = "ath_change_percentage"
                case athDate = "ath_date"
                case atl
                case atlChangePercentage = "atl_change_percentage"
                case atlDate = "atl_date"
                case lastUpdated = "last_updated"
                case sparklineIn7D = "sparkline_in_7d"
                case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
