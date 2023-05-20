//
//  ViewC/Users/m.ibrahim/Desktop/Carfour/Carfour/Data/Models.plistontroller.swift
//  Carfour
//
//  Created by Demery on 09/03/2023.
//
import UIKit
class ModelsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    var lbl = ""
    var number: Int!
    var arrProduct = [Models]()
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = lbl
        let catCellNib = UINib(nibName: "ModelsCollViewCell", bundle:  nil)
        collectionView.register(catCellNib, forCellWithReuseIdentifier: "modCell")
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.itemSize = CGSize(width: self.view.frame.width/2.2, height: self.view.frame.width/2.2)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        collectionView!.collectionViewLayout = layout
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    @IBAction func backBtnAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "selectedCar") as! SelectedCarViewController
        self.navigationController?.pushViewController(vc, animated: true)
        if let title = titleLbl.text,
           let carNamesForTitle = carNames[title],
           let carOriginsForTitle = carOrigin[title],
           carNamesForTitle.indices.contains(indexPath.row) {
            vc.name = carNamesForTitle[indexPath.row]
            vc.origin = carOriginsForTitle
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        number
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "modCell", for: indexPath) as! ModelsCollViewCell
        let selectedMake = titleLbl.text ?? ""
        let selectedModel = carModels[selectedMake]?[indexPath.row]
        cell.lbl.text = selectedModel?.0 ?? ""
        cell.imgView.image = UIImage(named: selectedModel?.1 ?? "")
        return cell
    }
}
