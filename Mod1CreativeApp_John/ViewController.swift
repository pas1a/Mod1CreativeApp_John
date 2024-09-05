//
//  ViewController.swift
//  Mod1CreativeApp_John
//
//  Created by JOHN GARIEPY on 8/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextFieldOne: UITextField!
    @IBOutlet weak var TextFieldTwo:
        UITextField!
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var labelOne: UILabel!
    var first: String!
    var second: String!
    var answer: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSub(_ sender: Any) {
        imageOne.image = UIImage(systemName: "minus")
        var build = getNumebrs()
         if build == true {
             answer = (Double(first) ?? 0) - (Double(second) ?? 0)
             labelOne.text = String(answer)
         }else{
             labelOne.text = "Please enter numbers in both boxes"
         }
    }
    @IBAction func buttonAdd(_ sender: Any) {
        imageOne.image = UIImage(systemName: "plus")
        var build = getNumebrs()
         if build == true {
             answer = (Double(first) ?? 0) + (Double(second) ?? 0)
             labelOne.text = String(answer)
         }else{
             labelOne.text = "Please enter numbers in both boxes"
         }
    }
    @IBAction func buttonMulti(_ sender: Any) {
        imageOne.image = UIImage(systemName: "multiply")
        var build = getNumebrs()
         if build == true {
             answer = (Double(first) ?? 0) * (Double(second) ?? 0)
             labelOne.text = String(answer)
         }else{
             labelOne.text = "Please enter numbers in both boxes"
         }
    }
    @IBAction func buttonDivide(_ sender: Any) {
        imageOne.image = UIImage(systemName: "divide")
       var build = getNumebrs()
        if build == true {
            answer = (Double(first) ?? 0) / (Double(second) ?? 0)
            labelOne.text = String(answer)
        }else{
            labelOne.text = "Please enter numbers in both boxes"
        }
        
    }
    
    func getNumebrs() -> Bool {
        first = TextFieldOne.text ?? "0.0001"
        second = TextFieldTwo.text ?? "0.0001"
        if first == "0.0001" || second == "0.0001" {
        return false
        } else{
        return true
        }
        
    }
    
    
    
    
    
    
    
    
    
}

