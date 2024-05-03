//
//  GameViewController.swift
//  poly
//
//  Created by english on 2023-11-09.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var verbLabel: UILabel!
    
    @IBOutlet weak var phraseLabel: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var tenseSelected : String?
    
    public var game : Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game(verb: Context.fetchedVerb!, tense: tenseSelected!)
        print("Verb phrase: \(game!.phrase)")
        verbLabel.text = Context.fetchedVerb?.word
        phraseLabel.text = createDisplayPhrase(phrase: game!.phrase)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleQuit(_ sender: Any) {
        navigationController!.popViewController(animated: true)
    }
    
    
    @IBAction func handleNextQuestion(_ sender: Any) {
        if userInput.text!.isEmpty {
            Toast.ok(view: self, title: "Invalid", message: "Text field must not be empty")
        }
        
        if userInput.text! != isolateVerb(completeVerb: game?.phrase ?? ""){
            game?.attemptCounter += 1
            resultLabel.text = "Please try again."
            print(isolateVerb(completeVerb: game?.phrase ?? ""))
        } else {
            performSegue(withIdentifier: Segue.toResultViewController, sender: self)
        }
        print(userInput.text!)
        
        print(game!.attemptCounter)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.toResultViewController{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.endGame = game
        }
    }

}
