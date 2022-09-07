//
//  ViewController.swift
//  magic 8 ball
//
//  Created by Chris Hand on 9/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var ball: UIImageView!
    private let balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askClicked(_ sender: Any) {
        askButton.isEnabled = false
        for i in 0...9 {
            Timer.scheduledTimer(timeInterval: TimeInterval(Double(i) * 0.25), target: self, selector: #selector(showRandom), userInfo: nil, repeats: false)
        }
        
        Timer.scheduledTimer(timeInterval: TimeInterval(10.0 * 0.25), target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
    }
    
    @objc
    private func showRandom() {
        let selected = Int.random(in: 0...4)
        ball.image = UIImage(named: balls[selected])
        print(selected)
    }
    
    @objc
    private func enableButton() {
        askButton.isEnabled = true
        print("enabled")
    }
}

