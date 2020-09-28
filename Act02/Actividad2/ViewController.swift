//
//  ViewController.swift
//  Actividad2
//
//  Created by Luis Felipe Alvarez Sanchez on 07/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listaJugadores = [
        Jugador(nombre: "Mar", puntos: 3000, foto: UIImage(named: "mar")),
        Jugador(nombre: "Jungla", puntos: 3500, foto:UIImage(named: "jungla")),
        Jugador(nombre: "Bosque", puntos: 2500, foto: UIImage(named:"bosque")),
        Jugador(nombre: "Desierto", puntos: 2000, foto: UIImage(named:"desierto"))
    ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Personajes"
    }

   //MARK: - Metodos de protocolo de Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        
        cell.detailTextLabel?.text = String(listaJugadores[indexPath.row].puntos)
        
        cell.imageView?.image =  listaJugadores[indexPath.row].foto!
        return cell
       }
       
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.unJugador = listaJugadores[indice.row]
     }
     
}

