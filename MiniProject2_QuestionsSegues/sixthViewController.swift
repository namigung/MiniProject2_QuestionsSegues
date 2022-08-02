//
//  sixthViewController.swift
//  MiniProject2_QuestionsSegues
//
//  Created by scholar on 7/29/22.
//

import UIKit

class sixthViewController: UIViewController {
    
    var youHaveTasteCount5 = 0

    var iAmSecretlyJudgingCount5  = 0
    
    var slipOrGrowthCount5 = 0
    
    @IBOutlet weak var finalJudge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func output(_ sender: UIButton) {
        if (youHaveTasteCount5 >= 3){
            finalJudge.text = "Overall, you have great taste. You make socially acceptable judgments"
        }
        else if (youHaveTasteCount5 >= 2 && slipOrGrowthCount5 >= 2){
            finalJudge.text = "You make interesting choice. Obviously you are picking the safe option, but I respect it"
        }
        else if (slipOrGrowthCount5 >= 3){
            finalJudge.text = "You are trying to be unique, but you aren't getting anywhere"
        }
        else if (iAmSecretlyJudgingCount5 >= 2 && slipOrGrowthCount5 >= 2){
            finalJudge.text = "I see your growth. But personally, I can't tell if you are like a 2 year old or 50"
        }
        else{
            finalJudge.text = "You are one of the most intersting people I ever met. I don't mean that in a good way"
        }
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
