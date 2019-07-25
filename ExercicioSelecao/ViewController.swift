//
//  ViewController.swift
//  ExercicioSelecao
//
//  Created by Camile Ancines on 23/07/19.
//  Copyright © 2019 Camile Ancines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getTimeButton: UIButton!
    @IBOutlet weak var goImageView: UIImageView!
    @IBOutlet weak var lastNumberLabel: UILabel!
    
    @IBAction func getTimeButtonAction(_ sender: UIButton) {
        getTime()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.goImageView.image = UIImage(named: "go4all")
        self.getTimeButton.layer.cornerRadius = getTimeButton.bounds.height / 2
        self.getTimeButton.layer.masksToBounds = true
    }
    
    func getTime(){
        
        let time = Date().currentTimeMillis()

        let lastNumber = time % 10
        
        if lastNumber == 1 {
            view.backgroundColor = UIColor(red: 255/255, green: 216/255, blue: 216/255, alpha: 1.0)
        } else if lastNumber == 2 {
            view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 216/255, alpha: 1.0)
        } else if lastNumber == 3 {
            view.backgroundColor = UIColor(red: 255/255, green: 243/255, blue: 216/255, alpha: 1.0)
        } else if lastNumber == 4 {
            view.backgroundColor = UIColor(red: 239/255, green: 255/255, blue: 216/255, alpha: 1.0)
        } else if lastNumber == 5 {
            view.backgroundColor = UIColor(red: 216/255, green: 255/255, blue: 227/255, alpha: 1.0)
        } else if lastNumber == 6 {
            view.backgroundColor = UIColor(red: 216/255, green: 255/255, blue: 255/255, alpha: 1.0)
        } else if lastNumber == 7 {
            view.backgroundColor = UIColor(red: 216/255, green: 227/255, blue: 255/255, alpha: 1.0)
        } else if lastNumber == 8 {
            view.backgroundColor = UIColor(red: 225/255, green: 216/255, blue: 255/255, alpha: 1.0)
        } else if lastNumber == 9 {
            view.backgroundColor = UIColor(red: 245/255, green: 216/255, blue: 255/255, alpha: 1.0)
        } else if lastNumber == 0 {
            view.backgroundColor = UIColor(red: 237/255, green: 237/255, blue: 237/255, alpha: 1.0)
        }
        
        lastNumberLabel.text = "Last number: \(lastNumber)"
        
        print(time)
    }
}

extension Date {
    func currentTimeMillis() -> Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
}
