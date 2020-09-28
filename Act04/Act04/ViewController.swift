//
//  ViewController.swift
//  Act04
//
//  Created by Luis Felipe Alvarez Sanchez on 24/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item : Item!
    @IBOutlet weak var imgItem: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPts: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Detalle de Item"
        imgItem.image = item.foto
        lblName.text = item.nombre
        lblPts.text = String(item.puntos)
    }


}

