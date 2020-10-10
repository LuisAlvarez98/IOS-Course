//
//  Categoria.swift
//  Reto02
//
//  Created by Luis Felipe Alvarez Sanchez on 10/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class Categoria: NSObject {

    var titulo: String
    var color: UIColor
    
    init(titulo: String, color: UIColor){
        self.titulo = titulo
        self.color = color
    }
}
