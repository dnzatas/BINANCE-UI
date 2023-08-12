//
//  Coins.swift
//  BINANCE-UI
//
//  Created by deniz on 12.08.2023.
//

import Foundation

class Coins {
    
    var coinName:String?
    var coinImageName:String?
    var coinLastPrice:String?
    var coinDayChange:String?
    var coinColor:String?
    
    init(coinName: String, coinImageName: String, coinLastPrice: String, coinDayChange: String, coinColor:String) {
        self.coinName = coinName
        self.coinImageName = coinImageName
        self.coinLastPrice = coinLastPrice
        self.coinDayChange = coinDayChange
        self.coinColor = coinColor
    }
}
