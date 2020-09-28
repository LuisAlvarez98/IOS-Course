//
//  ViewController.swift
//  HW02
//
//  Created by Luis Felipe Alvarez Sanchez on 03/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var lbMsg: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    //variables used for tfields
    var message: String!
    var color: UIColor!
    var imageRecieved: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //When view goes back in msg view
    @IBAction func unwindMsg(segue: UIStoryboardSegue){
        lbMsg.text = message!
    }
    //When view goes back in color view
      @IBAction func unwindColors(segue: UIStoryboardSegue){
        self.view.backgroundColor = color
      }
    //When view goes back in image view
    @IBAction func unwindImg(segue: UIStoryboardSegue){
        img.image = imageRecieved!
    }
}

