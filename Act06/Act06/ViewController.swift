//
//  ViewController.swift
//  Act06
//
//  Created by Luis Felipe Alvarez Sanchez on 08/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIApplicationDelegate{

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var switchSound: UISwitch!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var volumeSlider: UISlider!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // User
        let user = defaults.string(forKey: "user")
        
        if user != nil{
            textField.text = user
        }
        // Bg
        let bg = defaults.integer(forKey: "indexBg")
        print(bg)
        segmentedControl.selectedSegmentIndex = bg
        setColor(index: bg)
        
        // Volume
        let volume = defaults.float(forKey: "volume")
        volumeSlider.value = volume
        // Sound
        let sound = defaults.bool(forKey: "sound")
        switchSound.isOn = sound
        
    }
    
    func setColor(index: Int){
        if index == 0{
             self.view.backgroundColor = UIColor.green
        }else if index == 1{
             self.view.backgroundColor = UIColor.yellow
        }else{
                self.view.backgroundColor = UIColor.blue
        }
    }


    @IBAction func switchBackground(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0{
            self.view.backgroundColor = UIColor.green
            defaults.setValue(0, forKey: "indexBg")
        }else if segmentedControl.selectedSegmentIndex == 1{
               self.view.backgroundColor = UIColor.yellow
            defaults.setValue(1, forKey: "indexBg")
        }else if segmentedControl.selectedSegmentIndex == 2{
               self.view.backgroundColor = UIColor.blue
            defaults.setValue(2, forKey: "indexBg")
        }
    }
    
    @IBAction func movedSlider(_ sender: UISlider) {
        defaults.setValue(sender.value, forKey: "volume")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        defaults.setValue(textField.text!, forKey: "user")
    }
    
    @IBAction func switchElement(_ sender: UISwitch) {
         defaults.setValue(switchSound.isOn, forKey: "sound")
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        defaults.setValue(textField.text!, forKey: "user")
        defaults.setValue(switchSound.isOn, forKey: "sound")
        defaults.setValue(volumeSlider.value, forKey: "volume")
        if segmentedControl.selectedSegmentIndex == 0{
                 self.view.backgroundColor = UIColor.green
                 defaults.setValue(0, forKey: "indexBg")
             }else if segmentedControl.selectedSegmentIndex == 1{
                    self.view.backgroundColor = UIColor.yellow
                 defaults.setValue(1, forKey: "indexBg")
             }else if segmentedControl.selectedSegmentIndex == 2{
                    self.view.backgroundColor = UIColor.blue
                 defaults.setValue(2, forKey: "indexBg")
             }
    }
  
}

