//
//  ViewControllerImage.swift
//  HW02
//
//  Created by Luis Felipe Alvarez Sanchez on 03/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewControllerImage: UIViewController {

    @IBOutlet weak var Image1: UIButton!
    @IBOutlet weak var Image2: UIButton!
    @IBOutlet weak var Image3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // ImageOne.image = imagenViene
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if (sender as! UIButton) == Image1{
                      let vistaInit = segue.destination as! ViewController
                      vistaInit.imageRecieved = Image1.currentBackgroundImage
                 }else if(sender as! UIButton) == Image2{
                      let vistaInit = segue.destination as! ViewController
                      vistaInit.imageRecieved = Image2.currentBackgroundImage
                 }else if(sender as! UIButton) == Image3{
                      let vistaInit = segue.destination as! ViewController
                      vistaInit.imageRecieved = Image3.currentBackgroundImage
                 }
    }
}
