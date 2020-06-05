//
//  ViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/23.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

var listData: [String] = []

class ViewController: UIViewController {
    @IBOutlet weak var test1: UILabel!
    @IBOutlet weak var test2: UILabel!
    @IBOutlet weak var test3: UILabel!
    @IBOutlet weak var test4: UILabel!
    @IBOutlet weak var test5: UILabel!
    @IBOutlet weak var test6: UILabel!
    @IBOutlet weak var test7: UILabel!
    @IBOutlet weak var test8: UILabel!
    @IBOutlet weak var rouletteView: UIImageView!
    @IBOutlet weak var rouletteButton: UIButton!
    @IBOutlet weak var selectList: UIButton!
    @IBOutlet weak var rouletteSetButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rouletteButton.layer.cornerRadius = 10
        rouletteSetButton.layer.cornerRadius = 10
        selectList.layer.cornerRadius = 10
        rouletteView.layer.cornerRadius = 150
    
    }

    @IBAction func onTappedStartButton(){
        if (listData != []){
            roulette()
            //ルーレット回転の命令
        }else{
            let alert = UIAlertController(
                title: "お題が無い!",
                message:"まずは選択肢を作ろう!",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
         self.present (alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func onTappedSetButton(){
        if (listData != []){
            test1.text = listData[0]
            test2.text = listData[1]
            test3.text = listData[2]
            test4.text = listData[3]
            test5.text = listData[4]
            test6.text = listData[5]
            test7.text = listData[6]
            test8.text = listData[7]
            
        }
    }
    
     func roulette() {
        
        let number = Int.random(in: 0..<360)
        
        UIView.animate(withDuration: 5, animations: {
            for _ in 0...5 {
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*180)
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*360)
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*CGFloat(number))
            
                self.test1.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*180)
                self.test1.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*360)
                self.test1.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*CGFloat(number))
            }
    })
    }
}

