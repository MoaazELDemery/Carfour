import UIKit

class Onboarding3ViewController: UIViewController {

    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var getStartedBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView3.backgroundColor = UIColor.white
        imageView3.borderWidth = 1
        imageView3.borderColor = UIColor(rgb: 0x707070)
        
    }
    @IBAction func getStartedBtnAction(_ sender: Any) {
    }
}

