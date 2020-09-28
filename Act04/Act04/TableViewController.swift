//
//  TableViewController.swift
//  Act04
//
//  Created by Luis Felipe Alvarez Sanchez on 24/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocolAddItem{
    
    
    
    var listaItems = [
        Item(nombre: "AM", puntos: 275, foto: UIImage(named: "AM")),
        Item(nombre: "Pink Floyd", puntos: 300, foto: UIImage(named: "pfloyd")),
        Item(nombre: "Red Hot Chilli Peppers", puntos: 250, foto: UIImage(named: "rhot")),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Fotos"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listaItems[indexPath.row].nombre
        if let foto = listaItems[indexPath.row].foto{
            cell.imageView?.image = foto
        }else{
            cell.imageView?.image = UIImage(named: "user")
        }


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "view" {
            let vistaDetalle = segue.destination as! ViewController
                   let index = tableView.indexPathForSelectedRow!
                   vistaDetalle.item = listaItems[index.row]
        }else{
            let vistaAdd = segue.destination as! ViewControllerAdd
            vistaAdd.delegate = self
        }
       
    }
    // MARK: - Add item protocol
    func additem(it: Item) {
        listaItems.append(it)
        tableView.reloadData()//reloads data of the tableview
    }

}
