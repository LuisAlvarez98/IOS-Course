//
//  ViewControllerAdd.swift
//  Act04
//
//  Created by Luis Felipe Alvarez Sanchez on 24/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

protocol protocolAddItem {
    func additem(it: Item)
}

class ViewControllerAdd: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPts: UITextField!
    
    var delegate: protocolAddItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func savePlayer(_ sender: UIButton) {
        let item = Item(nombre: tfName.text!, puntos: Int(tfPts.text!)!, foto: img.image )
        delegate.additem(it: item)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addUserImage(_ sender: UITapGestureRecognizer) {
           let imagePicker = UIImagePickerController()
           imagePicker.delegate = self
           imagePicker.sourceType = .photoLibrary
           
           present(imagePicker, animated: true, completion: nil)
        
        
       }
       
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // MARK - UI Image Picker
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let imgObt = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        img.image = imgObt
        
        dismiss(animated: true, completion: nil)
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
