//
//  ResultViewController.swift
//  poly
//
//  Created by english on 2023-11-09.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var navLabel: UILabel!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var passOrFailLabel: UILabel!
    
    public var endGame : Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        navLabel.text = Context.fetchedVerb?.word
        resultsLabel.text = "It took you \(endGame!.attemptCounter) many times to get it right."
        if(endGame!.attemptCounter > 3) {
            passOrFailLabel.text = "Keep practicing!"
        } else {
            passOrFailLabel.text = "Great job!"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func returnToVerbSelection(_ sender: Any) {
//        navigationController?.unwind(for: <#T##UIStoryboardSegue#>, towards: <#T##UIViewController#>)
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
