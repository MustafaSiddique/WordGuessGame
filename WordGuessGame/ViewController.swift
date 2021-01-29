//
//  ViewController.swift
//  WordGarden
//
//  Created by Mustafa on 1/29/21.
//  Copyright © 2021 Mustafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var wordGuessedLbl: UILabel!
    @IBOutlet weak var wordRemainingLbl: UILabel!
    @IBOutlet weak var wordMissedLbl: UILabel!
    @IBOutlet weak var wordInGameLbl: UILabel!
    @IBOutlet weak var wordBeingRevealedLbl: UILabel!
    @IBOutlet weak var gameStatusMessageLbl: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessedLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guessedLetterButton.isEnabled = false
    }

    @IBAction func guessLetterBtnPressed(_ sender:UIButton){
        //this will dismisses the keyboard
        self.updateUIAfterGuess()
    }
    
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        //this will dismisses the keyboard
        self.updateUIAfterGuess()
    }
    
    
    @IBAction func gussedLetterTextFieldChanged(_ sender: UITextField) {
//        let text = guessedLetterField.text!
//        guessedLetterButton.isEnabled = !(text.isEmpty)
//        if let letter = guessedLetterField.text?.last{
//            wordGuessedLbl.text = String(letter).trimmingCharacters(in: .whitespaces)
//            guessedLetterButton.isEnabled = true
//        }else{
//            //handling nil case...
//            guessedLetterButton.isEnabled = false
//            wordGuessedLbl.text = ""
//        }
        
        sender.text = String(sender.text?.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessedLetterButton.isEnabled = !(sender.text!.isEmpty)
        
    }
    
    @IBAction func playAginBtnPressed(_ sender:UIButton){
        
    }
    
    
    private func updateUIAfterGuess(){
        guessedLetterField.text = ""
        guessedLetterField.resignFirstResponder()
        guessedLetterButton.isEnabled = false
    }
    

}

