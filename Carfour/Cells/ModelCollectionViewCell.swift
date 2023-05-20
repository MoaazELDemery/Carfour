//
//  ModelCollectionViewCell.swift
//  Carfour
//
//  Created by Demery on 08/04/2023.
//

import UIKit

class ModelCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var imgView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imgView.image = nil
    }
    
    func configure(with urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.imgView.image = image
            }
        }
        task.resume()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
