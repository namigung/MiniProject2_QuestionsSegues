//
//  fifthViewController.swift
//  MiniProject2_QuestionsSegues
//
//  Created by scholar on 7/28/22.
//

import UIKit

class fifthViewController: UIViewController {


    
    @IBOutlet weak var judgementDisplay: UILabel!
    
    var youHaveTasteCount4 = 0
    var iAmSecretlyJudgingCount4 = 0
    var slipOrGrowthCount4 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func python(_ sender: UIButton) {
        judgementDisplay.text = "Oh you are either a newbie or you just hate semicolons. But I like you"
        slipOrGrowthCount4 += 1
    }
    
    @IBAction func java(_ sender: UIButton) {
        judgementDisplay.text = "Got enough to pass the AP Exam?"
        youHaveTasteCount4 += 1
    }
    
    @IBAction func ccpp(_ sender: UIButton) {
        judgementDisplay.text = "I'm sorry but you are probably like 50+ years old"
        iAmSecretlyJudgingCount4 += 1
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! sixthViewController
        
        destinationVC.youHaveTasteCount5 = youHaveTasteCount4
        
        destinationVC.slipOrGrowthCount5 = slipOrGrowthCount4
        
        destinationVC.iAmSecretlyJudgingCount5 = iAmSecretlyJudgingCount4
         
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
