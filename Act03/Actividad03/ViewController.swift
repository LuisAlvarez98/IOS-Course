//
//  ViewController.swift
//  Actividad03
//
//  Created by Luis Felipe Alvarez Sanchez on 14/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblAlbum: UILabel!
    
    
    var album: Album!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
        imgView.image = album.img
        lblAlbum.text = album.name
    }


}

