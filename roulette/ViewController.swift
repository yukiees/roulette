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
    @IBOutlet weak var rouletteView: UIImageView!
    @IBOutlet weak var rouletteButton: UIButton!
    @IBOutlet weak var selectList: UIButton!
    @IBOutlet weak var SetButton: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rouletteButton.layer.cornerRadius = 10
        selectList.layer.cornerRadius = 10
        SetButton.layer.cornerRadius = 10
        rouletteView.layer.cornerRadius = 150
        
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""

    
    }

    @IBAction func onTappedStartButton(){
        if (listData != []){
            roulette()
            //ルーレット回転の命令
        }else{
           Voidalert()
        }
    }
    
    @IBAction func onTappedSetButton(){
        if (listData != []){
            
            label1.text = listData[0]
            label2.text = listData[1]
            
            switch listData.count{
            case 2:
                rouletteView.image = UIImage(named: "twoItems")
                
            case 3:
                rouletteView.image = UIImage(named: "threeItems")
                label3.text = listData[2]
            case 4:
                rouletteView.image = UIImage(named: "fourItems")
                label3.text = listData[2]
                label4.text = listData[3]
            case 5:
                rouletteView.image = UIImage(named: "fiveItems")
                label3.text = listData[2]
                label4.text = listData[3]
                label5.text = listData[4]
            case 6:
                rouletteView.image = UIImage(named: "sixItems")
                label3.text = listData[2]
                label4.text = listData[3]
                label5.text = listData[4]
                label6.text = listData[5]
            case 7:
                rouletteView.image = UIImage(named: "sevenItems")
                label3.text = listData[2]
                label4.text = listData[3]
                label5.text = listData[4]
                label6.text = listData[5]
                label7.text = listData[6]
            case 8:
                rouletteView.image = UIImage(named: "eightItems")
                label3.text = listData[2]
                label4.text = listData[3]
                label5.text = listData[4]
                label6.text = listData[5]
                label7.text = listData[6]
                label8.text = listData[7]
            
            default: break
                
                
            }
        }else{
            Voidalert()
        }
    }
    

    
     func roulette() {
        
        let number = Int.random(in: 1..<360)
        
        
        UIView.animate(withDuration: 5, animations: {
            for _ in 0...7{
            
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*180)
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*360)
        }
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*CGFloat(number))
        })
        
    }
    
    func Voidalert(){
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
    
    @IBAction func toListselectBtn(){
        listData = []
    }
}


