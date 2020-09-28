//
//  ViewControllerColors.swift
//  HW02
//
//  Created by Luis Felipe Alvarez Sanchez on 03/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewControllerColors: UIViewController {

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if (sender as! UIButton) == Button1{
                 let vistaInit = segue.destination as! ViewController
                 vistaInit.color = Button1.backgroundColor!
                
            }else if(sender as! UIButton) == Button2{
                let vistaInit = segue.destination as! ViewController
                                vistaInit.color = Button2.backgroundColor!
            }else if(sender as! UIButton) == Button3{
                let vistaInit = segue.destination as! ViewController
                                vistaInit.color = Button3.backgroundColor!
            }else if(sender as! UIButton) == Button4{
                let vistaInit = segue.destination as! ViewController
                                vistaInit.color = Button4.backgroundColor!
            }else{
                let vistaInit = segue.destination as! ViewController
                vistaInit.color = UIColor.white
            }
             
    }
    

}
