//
//  ViewController.swift
//  Carfour
//
//  Created by Demery on 09/03/2023.
//
import UIKit

class CarsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var arrProduct = [Data]()
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let catCellNib = UINib(nibName: "CategoriesCollViewCell", bundle:  nil)
        collectionView.register(catCellNib, forCellWithReuseIdentifier: "catCell")
        getPlistData()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: self.view.frame.width/2.2, height: self.view.frame.width/2.2)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        collectionView!.collectionViewLayout = layout
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    func getPlistData() {
        let plistPath = Bundle.main.path(forResource: "Data", ofType: "plist")
        if let plistDataArray = NSArray(contentsOfFile: plistPath!) as? [[String:Any]] {
            for dictionary in plistDataArray {
                let name = dictionary["name"] as? String
                let photo = dictionary["photo"] as? String
                arrProduct.append(Data(name: name, photo: photo))
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "carCollView") as! ModelsViewController
        self.navigationController?.pushViewController(vc, animated: true)
        if data.indices.contains(indexPath.row) {
            vc.lbl = data[indexPath.row].0
            vc.number = data[indexPath.row].1
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrProduct.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "catCell", for: indexPath) as! CategoriesCollViewCell
            let data = arrProduct[indexPath.row]
            cell.setupCell(name: data.name ?? "BMW", photo: data.photo ?? "bmw")
            return cell
    }
}
