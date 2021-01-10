//
//  RandomizerViewController.swift
//  Randomizer
//
//  Created by Наджафов Араз on 10.01.2021.
//

import UIKit

enum UserActivityType: String {
    case generateRandomNumber = "Myself.Randomizer.generateRandomNumber"
}

class RandomizerViewController: UIViewController {
    
    @IBOutlet weak var numberLabelView: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func getRandomNumber() {
        randomNumberGenerate()
    }
    
    func randomNumberGenerate() {
        numberLabelView.text = String(Int.random(in:1...100))
        createUserActivityType()
    }
    
    private func createUserActivityType() {
        let activity = NSUserActivity(activityType: UserActivityType.generateRandomNumber.rawValue)
        activity.title = "Generate Random Number"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }

}
