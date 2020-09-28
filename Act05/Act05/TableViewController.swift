//
//  TableViewController.swift
//  Act05
//
//  Created by Luis Felipe Alvarez Sanchez on 28/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell{
    
    @IBOutlet weak var imgPhone: UIImageView!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var lblCapacidad: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
}

class TableViewController: UITableViewController {
    var listaIphones = [
        Iphone(tipo: "Iphone 12", capacidad: "128 Gb", precio: 24999, foto: UIImage(named: "iphone-12")),
        Iphone(tipo: "Iphone 11 pro", capacidad: "64 Gb", precio: 24999, foto: UIImage(named: "iphone-11-pro-max")),
        Iphone(tipo: "Iphone 11", capacidad: "64 Gb", precio: 17499, foto: UIImage(named: "iphone-11")),
        Iphone(tipo: "Iphone SE 2a gen", capacidad: "64 Gb", precio: 10999, foto: UIImage(named: "iphone-se-2")),
        Iphone(tipo: "Iphone XR", capacidad: "64 Gb", precio: 14999, foto: UIImage(named: "iphone-xr")),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         title = "Iphones"
         self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaIphones.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customTableViewCell

        cell.lblTipo.text = listaIphones[indexPath.row].tipo
        cell.lblCapacidad.text = listaIphones[indexPath.row].capacidad
        cell.lblPrecio.text = String(listaIphones[indexPath.row].precio)
        cell.imgPhone.image = listaIphones[indexPath.row].foto

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
            listaIphones.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let tmp = listaIphones[fromIndexPath.row]
        listaIphones[fromIndexPath.row] = listaIphones[to.row]
        listaIphones[to.row] = tmp

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
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
