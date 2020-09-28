//
//  ViewControllerDos.swift
//  PrimerParcialV1A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
// Luis Felipe Alvarez Sanchez A01194173
// Parcial 1

import UIKit

class ViewControllerDos: UIViewController {

    // outlet del label 
    @IBOutlet weak var lbNumero: UILabel!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    
    var numero: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNumero.text = String(numero)
    
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender as! UIButton) == sumButton{
            let vistaIni = segue.destination as! ViewController
            numero = numero + 1
            lbNumero.text = String(numero)
            vistaIni.numeroMain = numero
            
        } else if (sender as! UIButton) == subtractButton{
            let vistaIni = segue.destination as! ViewController
            numero = numero - 1
            lbNumero.text = String(numero)
            vistaIni.numeroMain = numero
        }
    }
    

}
