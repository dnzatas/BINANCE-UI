//
//  ViewController.swift
//  BINANCE-UI
//
//  Created by deniz on 11.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTextField: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var scanImage: UIImageView!
    @IBOutlet weak var headphoneImage: UIImageView!
    @IBOutlet weak var notificationImage: UIImageView!
    @IBOutlet weak var handcoinImage: UIImageView!
    @IBOutlet weak var coinTableView: UITableView!
    
    var coinsList = [Coins]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coinTableView.delegate = self
        coinTableView.dataSource = self
        
        mainTextField.layer.cornerRadius = 18
        mainTextField.layer.masksToBounds = true
        
        let c1 = Coins(coinName: "BNB", coinImageName: "fire", coinLastPrice: "240,8", coinDayChange: "+%0,71", coinColor:"greencolor")
        let c2 = Coins(coinName: "BTC", coinImageName: "fire", coinLastPrice: "29.449,26", coinDayChange: "+%0,17", coinColor:"greencolor")
        let c3 = Coins(coinName: "ETH", coinImageName: "fire", coinLastPrice: "1.853,84", coinDayChange: "-%0,38", coinColor:"redcolor")
        let c4 = Coins(coinName: "XRP", coinImageName: "", coinLastPrice: "0.6308", coinDayChange: "-%0,65", coinColor:"redcolor")
        let c5 = Coins(coinName: "SOL", coinImageName: "", coinLastPrice: "24,72", coinDayChange: "-%0,82", coinColor:"redcolor")
        coinsList.append(c1)
        coinsList.append(c2)
        coinsList.append(c3)
        coinsList.append(c4)
        coinsList.append(c5)
    }
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coinsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "coincell", for: indexPath) as! CoinTableViewCell
        let coin = coinsList[indexPath.row]
        cell.coinLabel.text = coin.coinName
        cell.coinImage.image = UIImage(named: coin.coinImageName!)
        cell.sonfiyatBuyuk.text = coin.coinLastPrice
        cell.sonFiyatKucuk.text = "$\(coin.coinLastPrice!)"
        cell.degisimOutlet.backgroundColor = UIColor(named: coin.coinColor!)
        cell.degisimOutlet.frame = CGRect(x: 100, y: 100, width: 200, height: 40)
        
        
        let font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .foregroundColor: UIColor.white
        ]
        let attributedTitle = NSAttributedString(string: coin.coinDayChange!, attributes: attributes)
        cell.degisimOutlet.setAttributedTitle(attributedTitle, for: .normal)
        
        return cell
    }
    
    
}
