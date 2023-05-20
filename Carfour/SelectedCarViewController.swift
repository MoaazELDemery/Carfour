//
//  SelectedCarViewController.swift
//  Carfour
//
//  Created by Demery on 18/03/2023.
//
import UIKit

class SelectedCarViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var name = "", origin = ""
    var arrProduct = [Models]()
    @IBOutlet var imgViewCollView: UICollectionView!
    @IBOutlet var modelNameLbl: UILabel!
    @IBOutlet var originLbl: UILabel!
    @IBOutlet var indicatorForImages: UIPageControl!
    @IBOutlet var typeLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgCellNib = UINib(nibName: "ImageCollViewCell", bundle:  nil)
        imgViewCollView.register(imgCellNib, forCellWithReuseIdentifier: "imgCell")

        modelNameLbl.text = name
        originLbl.text = origin
    
        originForCars()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: self.view.frame.width, height: self.view.frame.width/1.8)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        imgViewCollView!.collectionViewLayout = layout
        
        imgViewCollView.delegate = self
        imgViewCollView.dataSource = self
        
    }
    @IBAction func backBtnAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        indicatorForImages.numberOfPages = cars[modelNameLbl.text!]!.count
        return cars[modelNameLbl.text!]?.count ?? 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCell", for: indexPath) as! ImageCollViewCell
        let selectedMake = modelNameLbl.text ?? ""
        let selectedModel = cars[selectedMake]?[indexPath.row]
        cell.imgView.image = UIImage(named: selectedModel ?? "")
        return cell
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        indicatorForImages?.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    func originForCars(){
        let type = modelNameLbl.text
        if type == "Alfa Romeo Guilia" || type == "Audi A6" || type == "Audi A7" || type == "BMW M5" || type == "Dodge Charger" || type == "Ford Taurus" || type == "Honda City" || type == "Honda Civic" || type == "Hyundai Elantra" || type == "Jaguar Xj" || type == "Kia Cerato" || type == "Mercedes AMG C63 SE" || type == "Mercedes AMG SL 55" || type == "Mercedes C-Class" || type == "Mercedes E300" || type == "Toyota Corolla" || type == "Volkswagen Arteon"{
            typeLbl.text = "Sedan"
        }else if type == "Alfa Romeo Stelvio" || type == "Alfa Romeo Tonale" || type == "Audi Q8" || type == "BMW X6" ||  type == "Ford Explorer" || type == "Hyundai Tucson" || type == "Jeep Cherokee" || type == "Jeep Compass" || type == "Jeep Wrangler" || type == "Kia Sportage" || type == "McLaren 720s" || type == "McLaren Artura" || type == "Mercedes G-Class" || type == "Porsche Panamera" || type == "Seat Cupra"{
            typeLbl.text = "SUV"
        }else if type == "Audi R8" || type == "BMW i8" || type == "BMW M4" || type == "BMW M8" || type == "BMW Z4" || type == "Bugatti Chiron" || type == "Chevrolet Camaro" || type == "Chevrolet Corvette" || type == "Dodge Challenger" || type == "Ferrari F8 Tributo" || type == "Ferrari 296 GTB" || type == "Ford Mustang" || type == "Jaguar F-Type" || type == "Nissan GTR" || type == "Porsche 911" || type == "Toyota Supra MK4" || type == "Toyota Supra MK5"{
            typeLbl.text = "Coupe"
        }else if type == "Kia Ceed" || type == "Mercedes A200" || type == "Seat Ibiza" || type == "Seat Leon" || type == "Volkswagen Golf"{
            typeLbl.text = "Hatchback"
        }
    }
}

