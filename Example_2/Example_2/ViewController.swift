//
//  ViewController.swift
//  Example_2
//
//  Created by YADAV Gaurav[FRJP:IT Store IT & RFID](Yadav Gaurav) on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var Scoreboard: UILabel!
    
    var countries = [String]()
    var score = 0
    var correctAns = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
        // Do any additional setup after loading the view.
    }

    func askQuestion(action: UIAlertAction! = nil){
        countries.shuffle();
        correctAns = Int.random(in: 0...2)
        title = countries[correctAns].uppercased()
        Scoreboard.text = "The current score is \(score)."
        Scoreboard.isEnabled = true
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var msg = "Your score is "
        if(sender.tag == correctAns){
            title = "Correct"
            score += 1
            msg = msg + "\(score)"
        }
        else{
            title = "Wrong"
            score -= 1
            msg = msg + "\(score)"
        }
        
        let ac = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac, animated: true)
        
    }
}

