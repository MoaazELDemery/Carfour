//
//  SplashViewController.swift
//  Carfour
//
//  Created by Demery on 12/03/2023.
//

import UIKit

class SplashViewController: UIViewController {

    var imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        imageView.image = UIImage(named: "splash")
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()){
            self.animation()
        }
    }
    func animation(){
        UIView.animate(withDuration: 1){
            let size = self.view.frame.size.width * 2
            let xpos = size - self.view.frame.width
            let ypos = self.view.frame.height - size
            
            self.imageView.frame = CGRect(x: -(xpos/2), y: ypos/2, width: size, height: size)
            self.imageView.alpha = 0
        }
    }
}
