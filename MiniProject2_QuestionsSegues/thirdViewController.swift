//
//  thirdViewController.swift
//  MiniProject2_QuestionsSegues
//
//  Created by scholar on 7/28/22.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var judgementDisplay: UILabel!
    

    var youHaveTasteCount2 = 0
    var iAmSecretlyJudgingCount2 = 0
    var slipOrGrowthCount2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func hawaiian(_ sender: UIButton) {
        judgementDisplay.text = "Oh...you are one of those people..."
        slipOrGrowthCount2 += 1
    }
    @IBAction func pepAndMush(_ sender: UIButton) {
        judgementDisplay.text = "You are my type of person!!"
        youHaveTasteCount2 += 1
    }
    
    @IBAction func cheesePizza(_ sender: UIButton) {
        judgementDisplay.text = "I know you are a super boring person in real life"
        iAmSecretlyJudgingCount2 += 1
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! fourthViewController
        
        destinationVC.youHaveTasteCount3 = youHaveTasteCount2
        
        destinationVC.slipOrGrowthCount3 = slipOrGrowthCount2
        
        destinationVC.iAmSecretlyJudgingCount3 = iAmSecretlyJudgingCount2
         
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
