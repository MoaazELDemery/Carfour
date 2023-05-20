//
//  ModelsCollViewCell.swift
//  Carfour
//
//  Created by M.Ibrahim on 07/05/2023.
//

import UIKit

class ModelsCollViewCell: UICollectionViewCell {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(name:String, photos:[String]){
        
        imgView.image = UIImage(named: photos[0])
        lbl.text = name
        
    }
}
