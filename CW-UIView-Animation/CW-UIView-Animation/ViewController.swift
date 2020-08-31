//
//  ViewController.swift
//  CW-UIView-Animation
//
//  Created by Luis Felipe Alvarez Sanchez on 27/08/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var appView: UIView!
    @IBOutlet weak var pinkBg: UIView!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func handleSlider(_ sender: UISlider) {
        let cValue = CGFloat(sender.value)
        
        pinkBg.frame.origin.y = cValue * img.frame.height + img.frame.origin.y
    }
    //355 max
    //94 min
    @IBAction func handleSwitch(_ sender: UISwitch) {
        if sender.isOn{
            print("on")
            UIView.animate(withDuration: 1) {
                self.appView.backgroundColor = UIColor.white
            }
        }else{
            print("off")
            UIView.animate(withDuration: 1) {
                self.appView.backgroundColor = UIColor.lightGray
            }
        }
    }
}

