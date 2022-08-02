//
//  SecondViewController.swift
//  MiniProject2_QuestionsSegues
//
//  Created by scholar on 7/28/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var judgementDisplay: UILabel!
   
    var youHaveTasteCount1 = 0

    var iAmSecretlyJudgingCount1 = 0
    
    var slipOrGrowthCount1 = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func jeansButton(_ sender: UIButton) {
        judgementDisplay.text = "You are whack. Get something more comfortable..."
        iAmSecretlyJudgingCount1 = iAmSecretlyJudgingCount1 + 1
    }
    

    @IBAction func leggingsButton(_ sender: UIButton) {
        judgementDisplay.text = "Ok athleisure. Thats normal, buts its not the best option"
        slipOrGrowthCount1 = slipOrGrowthCount1 +  1
    }
    
    
    @IBAction func sweatpantsButton(_ sender: UIButton) {
        judgementDisplay.text = "THATS RIGHT. SWEATPANTS DAY AND NIGHT"
        youHaveTasteCount1 = youHaveTasteCount1 + 1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! thirdViewController
        
        destinationVC.youHaveTasteCount2 = youHaveTasteCount1
        
        destinationVC.slipOrGrowthCount2 = slipOrGrowthCount1
        
        destinationVC.iAmSecretlyJudgingCount2 = iAmSecretlyJudgingCount1
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
