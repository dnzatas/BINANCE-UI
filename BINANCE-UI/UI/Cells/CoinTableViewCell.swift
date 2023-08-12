//
//  CoinTableViewCell.swift
//  BINANCE-UI
//
//  Created by deniz on 12.08.2023.
//

import UIKit

class CoinTableViewCell: UITableViewCell {

    
    @IBOutlet weak var coinLabel: UILabel!
    @IBOutlet weak var coinImage: UIImageView!
    @IBOutlet weak var sonfiyatBuyuk: UILabel!
    @IBOutlet weak var sonFiyatKucuk: UILabel!
    @IBOutlet weak var degisimOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
