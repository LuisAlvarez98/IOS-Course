//
//  ViewControllerMsg.swift
//  HW02
//
//  Created by Luis Felipe Alvarez Sanchez on 03/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewControllerMsg: UIViewController {


    var messageEdit: String!
    var emailEdit: String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       // tfMessage.text = messageEdit!
        //tfEmail.text = emailEdit!
        // Do any additional setup after loading the view.
    }
    
    

    
    // MARK: - Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
//        if tfMessage.text! == "" || tfEmail.text! == ""{
//            let alert = UIAlertController(title: "Error", message: "Errororor", preferredStyle: .alert)
//            let action = UIAlertAction(title:"ok", style: .cancel, handler: nil)
//
//            alert.addAction(action)
//            present(alert, animated: true, completion: nil)
//            return false
//        }
//        return true
//
        return false
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (sender as! UIButton) == btnSave{
//            let vistaInit = segue.destination as! ViewController
//
//            vistaInit.message = tfMessage.text!
//            vistaInit.email =  tfEmail.text!
//        }
        
        
    }
    

}
