//
//  ViewController.swift
//  HW04
//
//  Created by Luis Felipe Alvarez Sanchez on 03/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfDescripcion: UITextField!
    @IBOutlet weak var tfCantExistencia: UITextField!
    var articulo : Articulo!
    var editMode : Bool!
    var currIndex: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if(editMode){
            tfId.text = articulo.id
            tfDescripcion.text = articulo.descripcion
            tfCantExistencia.text = String(articulo.cantExistencia)
        }
      
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if tfId.text == "" || tfDescripcion.text == "" || tfCantExistencia.text == ""{
            let alerta = UIAlertController(title: "Error", message: "Coloca datos en los campos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
            return false
        }else{
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if editMode {
            let vistaIni = segue.destination as! TableViewController
            let articuloAux: Articulo = Articulo(id: tfId.text!, descripcion: tfDescripcion.text!, cantExistencia: Int(tfCantExistencia.text!)!)
            vistaIni.articulo = articuloAux
            vistaIni.currIndex = currIndex
            vistaIni.editMode = editMode
        }else{
            let vistaIni = segue.destination as! TableViewController
            let articuloAux: Articulo = Articulo(id: tfId.text!, descripcion: tfDescripcion.text!, cantExistencia: Int(tfCantExistencia.text!)!)
             vistaIni.editMode = editMode
            vistaIni.articulo = articuloAux
        
        }
    }
}

