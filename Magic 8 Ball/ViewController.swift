//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by SCL IT on 06/01/18.
//  Copyright © 2018 Nikhil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeBallImage: UIImageView!
    
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateImage()
    
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askQuestion(_ sender: UIButton) {
        
        updateImage()
        
    }
    
    func updateImage(){
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        changeBallImage.image = UIImage(named: "ball\(randomBallNumber+1)")
        
    }
    
}

