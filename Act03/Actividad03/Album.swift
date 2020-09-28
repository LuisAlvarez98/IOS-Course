//
//  Album.swift
//  Actividad03
//
//  Created by Luis Felipe Alvarez Sanchez on 14/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class Album: NSObject {
       var img: UIImage!
       var name: String
       
       init( img: UIImage!, name: String) {
           self.img = img
           self.name = name
       }
}
