//
//  ViewControllerDetalle.swift
//  Actividad2
//
//  Created by Luis Felipe Alvarez Sanchez on 07/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewControllerDetalle: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPuntos: UILabel!
    @IBOutlet weak var foto: UIImageView!
    
    var unJugador: Jugador!
    override func viewDidLoad() {
        super.viewDidLoad()
        foto.image = unJugador.foto
        lblNombre.text = unJugador.nombre
        lblPuntos.text = String(unJugador.puntos)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
