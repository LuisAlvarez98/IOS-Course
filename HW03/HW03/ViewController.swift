//
//  ViewController.swift
//  HW03
//
//  Created by Luis Felipe Alvarez Sanchez on 10/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // variables used for the labels
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblMonth: UILabel!
    @IBOutlet weak var lblDay: UILabel!
    @IBOutlet weak var lblWeekDay: UILabel!
    // init the date, formatter, calendar and date components
    var fecha: Date = Date();
    var formatter = DateFormatter()
    let calendar = Calendar.current
    var dateComponents: DateComponents = DateComponents()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // setup the right swipe and left swipe
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector (handleSwipe(sender:)))
        rightSwipe.direction = .right
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector (handleSwipe(sender:)))
             rightSwipe.direction = .left
        // add the gestures to the view
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
        
        // set the format of the date
        formatter.dateStyle = .long
            
        // get the init date components
        dateComponents = calendar.dateComponents([.year, .month, .day, .weekday], from: fecha)
        // set the init date components to the labels
        lblYear.text = String(dateComponents.year!)
        lblDay.text = String(dateComponents.day!)
        lblWeekDay.text = getWeekdayString(day: dateComponents.weekday!)
        lblMonth.text = getMonthString(month: dateComponents.month!)
    }
    /**
       Function that handles the right and left swipe
     */
    @objc func handleSwipe(sender: UISwipeGestureRecognizer){
        if sender.state == .ended{
            switch sender.direction{
            case .right:
                doLeft()
                break;
            case .left:
                doRight()
                break;
            default:
                break;
            }
        }
    }
    /**
        Function that handles the right swipe
     */
    func doRight ()->Void{
        // get the tomorrow date
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: fecha)
                fecha = tomorrow!
                 dateComponents = calendar.dateComponents([.year, .month, .day, .weekday], from: fecha)
        // set the date to the labels
              lblYear.text = String(dateComponents.year!)
                      lblDay.text = String(dateComponents.day!)
                      lblWeekDay.text = getWeekdayString(day: dateComponents.weekday!)
                      lblMonth.text = getMonthString(month: dateComponents.month!)
    }
    /**
        Function that handles the left swipe
     */
    func doLeft () -> Void{
        // get the yesterday date
        let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: fecha)
                    fecha = yesterday!
                     dateComponents = calendar.dateComponents([.year, .month, .day, .weekday], from: fecha)
        // set the date to the labels
                  lblYear.text = String(dateComponents.year!)
                         lblDay.text = String(dateComponents.day!)
                         lblWeekDay.text = getWeekdayString(day: dateComponents.weekday!)
                         lblMonth.text = getMonthString(month: dateComponents.month!)
    }
    /**
        Function used to get the weekday string
        return String
     */
    func getWeekdayString(day: Int)->String{
        switch day{
        case 1:
            return "Domingo"
        case 2:
            return "Lunes"
        case 3:
            return "Martes"
        case 4:
            return "Miercoles"
        case 5:
            return "Jueves"
        case 6:
            return "Viernes"
        case 7:
            return "Sabado"
        default:
            return "Lunes"
        }
    }
    /**
        Function used to get the month string
        return String
     */
    func getMonthString(month: Int)-> String{
        switch month{
        case 1:
              return "Enero"
        case 2:
              return "Febrero"
        case 3:
              return "Marzo"
        case 4:
              return "Abril"
        case 5:
              return "Mayo"
        case 6:
              return "Junio"
        case 7:
              return "Julio"
        case 8:
              return "Agosto"
        case 9:
              return "Septiembre"
        case 10:
              return "Octubre"
        case 11:
              return "Noviembre"
        case 12:
            return "December"
        default:
              return "August"
        }
    }
}
