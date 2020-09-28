//
//  Item.swift
//  Act04
//
//  Created by Luis Felipe Alvarez Sanchez on 24/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class Item: NSObject {
    var nombre: String
    var puntos: Int
    var foto: UIImage!
    
    init(nombre: String, puntos: Int, foto: UIImage!){
        self.nombre = nombre
        self.puntos = puntos
        self.foto = foto
    }
}
