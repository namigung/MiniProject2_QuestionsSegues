//
//  fourthViewController.swift
//  MiniProject2_QuestionsSegues
//
//  Created by scholar on 7/28/22.
//

import UIKit

class fourthViewController: UIViewController {

    @IBOutlet weak var judgementDisplay: UILabel!
    

    var youHaveTasteCount3 = 0
    var iAmSecretlyJudgingCount3 = 0
    var slipOrGrowthCount3 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func album1989(_ sender: UIButton) {
        judgementDisplay.text = "You are so basic...but if you're fav on the album is \"I Know Places\" I will forgive you."
        iAmSecretlyJudgingCount3 += 1
    }
    
    @IBAction func rep(_ sender: UIButton) {
        judgementDisplay.text = "This is what I call TASTE"
        youHaveTasteCount3 += 1
    }
    
    @IBAction func lover(_ sender: UIButton) {
        judgementDisplay.text = "You are trying to be unique, but I respect you. BTW be jealous I've been to Cornelia Street"
        slipOrGrowthCount3 += 1
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! fifthViewController
        
        destinationVC.youHaveTasteCount4 = youHaveTasteCount3
        
        destinationVC.slipOrGrowthCount4 = slipOrGrowthCount3
        
        destinationVC.iAmSecretlyJudgingCount4 = iAmSecretlyJudgingCount3
         
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
