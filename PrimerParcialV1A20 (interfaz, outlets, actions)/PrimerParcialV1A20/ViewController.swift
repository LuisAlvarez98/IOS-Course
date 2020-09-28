//
//  ViewController.swift
//  PrimerParcialV1A20
//
//  Created by Yolanda Martinez on 15/09/20.
//  Copyright © 2020 com.itesm. All rights reserved.
// Luis Felipe Alvarez Sanchez A01194173
// Parcial 1

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
          //set the gesture into the label
          self.setLabelTap()
    }

    // MARK: - Parte 1 (Rosa)
    
    @IBOutlet weak var lbMensaje: UILabel!
    /**
          text to the left method
     */
    @IBAction func textoIzquierda(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            self.lbMensaje.frame.origin.x = 60
        }
    }
    /**
         text to the right method
     */
    @IBAction func textoDerecha(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            self.lbMensaje.frame.origin.x = self.view.frame.size.width - 60
        }
    }
    
    
    // MARK: - Parte 2 (Verde)
    
    @IBOutlet weak var progressView: UIProgressView!
    //used to control the progress of the progressView
    var pr: Float = 0.5
    /**
         subtract method
     */
    @IBAction func botonResta(_ sender: UIButton) {
        pr = progressView.progress
        pr = pr - 0.1
        progressView.setProgress(pr, animated: true)
    }
    /**
         sum method
     */
    @IBAction func botonSuma(_ sender: UIButton) {
        pr = progressView.progress
        pr = pr + 0.1
        progressView.setProgress(pr, animated: true)
    }
    
    
    // MARK: - Parte 3 (Amarilla)
    
    @IBOutlet weak var lbNumero: UILabel!
    var numeroMain: Int = 0;
    /**
            unwind method
     */
    @IBAction func unwindEditar(segue: UIStoryboardSegue){
        lbNumero.text = String(numeroMain)
    }
    /**
           prepare method
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "suma"{
            let viewDos = segue.destination as! ViewControllerDos
            
            viewDos.numero = Int(lbNumero.text!)
            
        }
    }
    // MARK: - Parte 4 (Azul)
    
    @IBOutlet weak var tfDato1: UITextField!
    @IBOutlet weak var tfDato2: UITextField!
    @IBOutlet weak var tfSuma: UITextField!
    @IBOutlet weak var label: UILabel!
    /**
        function to determine when label is pressed
     */
    @objc func labelPressed(_ sender: UITapGestureRecognizer) {
        if(tfDato1.text != nil && tfDato2.text != nil){
            let valueOne = Int(tfDato1.text!)
            let valueTwo = Int(tfDato2.text!)
            if(valueOne != nil && valueTwo != nil){
                let total = valueOne! + valueTwo!
                tfSuma.text = String(total)
            }else{
                print("Input something!")
            }
           
        }
    }
    /**
         function used to insert the Gesture Recognizer into the  label
     */
    func setLabelTap(){
        let labelOprime = UITapGestureRecognizer(target: self, action: #selector(self.labelPressed(_:)))
        self.label.isUserInteractionEnabled = true
        self.label.addGestureRecognizer(labelOprime)
    }
    
}

