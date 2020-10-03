//
//  Articulo.swift
//  HW04
//
//  Created by Luis Felipe Alvarez Sanchez on 03/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class Articulo: Codable {
    var id: String
    var descripcion: String
    var cantExistencia: Int
    
    init(id: String, descripcion: String, cantExistencia: Int){
        self.id = id
        self.descripcion = descripcion
        self.cantExistencia = cantExistencia
    }
}
