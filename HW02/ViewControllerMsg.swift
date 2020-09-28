//
//  ViewControllerMsg.swift
//  HW02
//
//  Created by Luis Felipe Alvarez Sanchez on 03/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewControllerMsg: UIViewController {

    @IBOutlet weak var tfMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

     // MARK: - Navigation
        override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            
            if tfMsg.text! == "" {
                let alert = UIAlertController(title: "Error", message: "Input a message!", preferredStyle: .alert)
                let action = UIAlertAction(title:"Ok", style: .cancel, handler: nil)
    
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                return false
            }
            return true
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
                let vistaInit = segue.destination as! ViewController
    
                vistaInit.message = tfMsg.text!
        }
}
