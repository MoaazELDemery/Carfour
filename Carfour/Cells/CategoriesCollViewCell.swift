//
//  CategoriesCollViewCell.swift
//  Carfour
//
//  Created by Demery on 09/03/2023.
//

import UIKit

class CategoriesCollViewCell: UICollectionViewCell {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(name:String, photo:String){
        
        imgView.image = UIImage(named: photo)
        lbl.text = name
        
    }
}
