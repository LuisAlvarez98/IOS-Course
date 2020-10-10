//
//  ViewController.swift
//  Reto02
//
//  Created by Luis Felipe Alvarez Sanchez on 10/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

protocol protocoloEditarCategoria{
    func editarCategoria(categoria: Categoria, indice: IndexPath,coloresParaElegir: [UIColor] )
}

class ViewController: UIViewController {

    var categoria: Categoria!
    var indice: IndexPath!
    var coloresParaElegir = [UIColor]()
    @IBOutlet weak var tfTitulo: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var delegado: protocoloEditarCategoria!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfTitulo.text = categoria.titulo
        tfTitulo.backgroundColor = categoria.color

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func viewWillDisappear(_ animated: Bool) {
        let cat = Categoria(titulo: tfTitulo.text!, color: tfTitulo.backgroundColor!)
        delegado.editarCategoria(categoria: cat, indice: indice, coloresParaElegir: coloresParaElegir)
    }

  
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return coloresParaElegir.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
          cell.backgroundColor = coloresParaElegir[indexPath.row]
   
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        let temp: UIColor =  coloresParaElegir[indexPath.row]
        coloresParaElegir[indexPath.row] = tfTitulo.backgroundColor!
        tfTitulo.backgroundColor = temp
    }
    
      
}
