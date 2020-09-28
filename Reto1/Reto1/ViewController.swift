//
//  ViewController.swift
//  Reto1
//
//  Created by Luis Felipe Alvarez Sanchez on 02/09/20.
//  Copyright © 2020 Luis Felipe Alvarez Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    

    @IBOutlet weak var counterTwo: UILabel!
    @IBOutlet weak var counterThree: UILabel!
    @IBOutlet weak var counterFour: UILabel!
    @IBOutlet weak var counterFive: UILabel!
    @IBOutlet weak var counterSix: UILabel!
    @IBOutlet weak var counterSeven: UILabel!
    @IBOutlet weak var counterEight: UILabel!
    @IBOutlet weak var counterNine: UILabel!
    @IBOutlet weak var counterTen: UILabel!
    @IBOutlet weak var counterEleven: UILabel!
    @IBOutlet weak var counterTwelve: UILabel!
    
    @IBOutlet weak var progressTwo: UIProgressView!
    @IBOutlet weak var progressThree: UIProgressView!
    @IBOutlet weak var progressFour: UIProgressView!
    @IBOutlet weak var progressFive: UIProgressView!
    @IBOutlet weak var progressSix: UIProgressView!
    @IBOutlet weak var progressSeven: UIProgressView!
    @IBOutlet weak var progressEight: UIProgressView!
    @IBOutlet weak var progressNine: UIProgressView!
    @IBOutlet weak var progressTen: UIProgressView!
    @IBOutlet weak var progressEleven: UIProgressView!
    @IBOutlet weak var progressTwelve: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollTheDice(_ sender: UIButton) {
        let randNumberOne = Int.random(in: 1...6)
        let randNumberTwo = Int.random(in: 1...6)
        
        setImageDiceOne(number: randNumberOne)
        setImageDiceTwo(number: randNumberTwo)
        setCounter(number: randNumberOne + randNumberTwo)
    }
    
    func setImageDiceOne(number: Int){
        switch number {
        case 1:
            diceOne.image = UIImage(named: "one")
            break
        case 2:
            diceOne.image = UIImage(named: "two")
            break
        case 3:
            diceOne.image = UIImage(named: "three")
            break
        case 4:
            diceOne.image = UIImage(named: "four")
            break
        case 5:
            diceOne.image = UIImage(named: "five")
            break
        case 6:
            diceOne.image = UIImage(named: "six")
            break
        default:
            diceOne.image = UIImage(named: "one")
        }
    }
    
    func setImageDiceTwo(number: Int){
       switch number {
          case 1:
              diceTwo.image = UIImage(named: "one")
              break
          case 2:
              diceTwo.image = UIImage(named: "two")
              break
          case 3:
              diceTwo.image = UIImage(named: "three")
              break
          case 4:
              diceTwo.image = UIImage(named: "four")
              break
          case 5:
              diceTwo.image = UIImage(named: "five")
              break
          case 6:
              diceTwo.image = UIImage(named: "six")
              break
          default:
              diceOne.image = UIImage(named: "one")
          }
    }
    
    func setCounter(number: Int){
        switch number {
        case 2:
            var num:Int = Int(counterTwo.text!)!
            num+=1
            counterTwo.text = String(num)
            
            var cProgress: Float = progressTwo.progress
            cProgress+=0.01
            progressTwo.setProgress(cProgress, animated:true)
            
            break
        case 3:
            var num:Int = Int(counterThree.text!)!
            num+=1
            counterThree.text = String(num)
            
            var cProgress: Float = progressThree.progress
            cProgress+=0.01
            progressThree.setProgress(cProgress, animated:true)
            
            break
        case 4:
            var num:Int = Int(counterFour.text!)!
            num+=1
            counterFour.text = String(num)
            
            var cProgress: Float = progressFour.progress
            cProgress+=0.01
            progressFour.setProgress(cProgress, animated:true)
            break
        case 5:
            var num:Int = Int(counterFive.text!)!
            num+=1
            counterFive.text = String(num)
            
            var cProgress: Float = progressFive.progress
            cProgress+=0.01
            progressFive.setProgress(cProgress, animated:true)
            break
        case 6:
            var num:Int = Int(counterSix.text!)!
            num+=1
            counterSix.text = String(num)
            
            var cProgress: Float = progressSix.progress
            cProgress+=0.01
            progressSix.setProgress(cProgress, animated:true)
            break
        case 7:
            var num:Int = Int(counterSeven.text!)!
            num+=1
            counterSeven.text = String(num)
            
            var cProgress: Float = progressSeven.progress
            cProgress+=0.01
            progressSeven.setProgress(cProgress, animated:true)
            break
        case 8:
           var num:Int = Int(counterEight.text!)!
           num+=1
           counterEight.text = String(num)
           
           var cProgress: Float = progressEight.progress
           cProgress+=0.01
           progressEight.setProgress(cProgress, animated:true)
           break
        case 9:
           var num:Int = Int(counterNine.text!)!
           num+=1
           counterNine.text = String(num)
           
           var cProgress: Float = progressNine.progress
           cProgress+=0.01
           progressNine.setProgress(cProgress, animated:true)
           break
        case 10:
           var num:Int = Int(counterTen.text!)!
           num+=1
           counterTen.text = String(num)
           
           var cProgress: Float = progressTen.progress
           cProgress+=0.01
           progressTen.setProgress(cProgress, animated:true)
           break
        case 11:
           var num:Int = Int(counterEleven.text!)!
           num+=1
           counterEleven.text = String(num)
           
           var cProgress: Float = progressEleven.progress
           cProgress+=0.01
           progressEleven.setProgress(cProgress, animated:true)
           break
        case 12:
           var num:Int = Int(counterTwelve.text!)!
           num+=1
           counterTwelve.text = String(num)
           
           var cProgress: Float = progressTwelve.progress
           cProgress+=0.01
           progressTwelve.setProgress(cProgress, animated:true)
           break
        default:
            print("Error")
        }
    }
    
}
