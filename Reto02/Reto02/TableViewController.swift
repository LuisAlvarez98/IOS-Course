//
//  TableViewController.swift
//  Reto02
//
//  Created by Luis Felipe Alvarez Sanchez on 10/10/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloEditarCategoria {

    var listaCategorias: [Categoria] = []
    
    var coloresParaElegir = [UIColor.blue, UIColor.green, UIColor.magenta, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        title = "Categoria"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].color
        // Configure the cell...

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            coloresParaElegir.append(listaCategorias[indexPath.row].color)
            listaCategorias.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let temp = listaCategorias[fromIndexPath.row]
        listaCategorias[fromIndexPath.row] = listaCategorias[to.row]
        listaCategorias[to.row] = temp
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vista1 = segue.destination as! ViewController
        let index = tableView.indexPathForSelectedRow!
        vista1.categoria = listaCategorias[index.row]
        vista1.coloresParaElegir = coloresParaElegir
        vista1.indice = index
        vista1.delegado = self
    }
    

    @IBAction func addBtn(_ sender: UIBarButtonItem) {
        if coloresParaElegir.count != 0{
            listaCategorias.append(Categoria(titulo:"Categoria", color: coloresParaElegir.first!))
                  coloresParaElegir.removeFirst()
                  
                  tableView.reloadData()
        }
    }
    
    func editarCategoria(categoria: Categoria, indice: IndexPath, coloresParaElegir: [UIColor]) {
        listaCategorias[indice.row] = categoria
        self.coloresParaElegir = coloresParaElegir
        tableView.reloadData()
      }
}
