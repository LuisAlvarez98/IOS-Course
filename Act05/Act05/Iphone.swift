//
//  Iphone.swift
//  Act05
//
//  Created by Luis Felipe Alvarez Sanchez on 28/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class Iphone: NSObject {

    var tipo: String
    var capacidad: String
    var precio: Float
    var foto: UIImage!
    
    init(tipo: String, capacidad: String, precio: Float, foto: UIImage!){
        self.tipo = tipo
        self.capacidad = capacidad
        self.precio = precio
        self.foto = foto
    }
}
