//
//  ViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/23.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

var listData: [String] = []
var listelement: String = ""
var number = Int.random(in: 1..<360)
var turnnumber: Int = 0
let randomnumber = Int.random(in: 0..<10)

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
        
        rouletteButton.isEnabled = false

    
    }

    @IBAction func onTappedStartButton(){
        if (listData != []){
            roulette()//ルーレット回転の命令
            resultfunc()
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
        rouletteButton.isEnabled = true
    }
    
    func turn(){
        
        switch listData.count{
        case 2:
            turnnumber = 180
        case 3:
            turnnumber = 120
        case 4:
            turnnumber = 90
        case 5:
            turnnumber = 72
        case 6:
            turnnumber = 60
        case 7:
            turnnumber = 52
        case 8:
            turnnumber = 45
        
        default: break
            
            
        }
    }
    
     func roulette() {
        turn()
        
        UIView.animate(withDuration: 5, animations: {
            for _ in 0...7{
            
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*180)
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*360)
        }
            self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*CGFloat(number))
        })
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.3){
                UIView.animate(withDuration: 1, animations: {
                    if (randomnumber == 0){
                        self.rouletteView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/180*CGFloat(number-turnnumber))
                    }
                })
            }
        
        rouletteButton.isEnabled = false

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
        number = Int.random(in: 1..<360)
    }
    
    func resultfunc(){
        if (randomnumber != 0){
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.3){
                self.numberlist()
                let result = UIAlertController(
                       title: "結果",
                       message:"\(listelement)",
                       preferredStyle: .alert
                   )
                   result.addAction(UIAlertAction(
                       title: "OK",
                       style: .default,
                       handler: nil
                   ))
                self.present (result, animated: true, completion: nil)
            
            }
        }else{
            DispatchQueue.main.asyncAfter(deadline: .now() + 6.3){
                self.numberlist()
                let result = UIAlertController(
                       title: "結果",
                       message:"\(listelement)",
                       preferredStyle: .alert
                   )
                   result.addAction(UIAlertAction(
                       title: "OK",
                       style: .default,
                       handler: nil
                   ))
                self.present (result, animated: true, completion: nil)
            
            }
        }
        
    }
    
    func numberlist(){
        if (randomnumber != 0){
            switch listData.count{
            case 2:
                if (number >= 0 && number < 181){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 3:
                if (number >= 0 && number < 121){
                    listelement = listData[2]
                }else if (number >= 121 && number < 241){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 4:
                if (number >= 0 && number < 91){
                    listelement = listData[3]
                }else if (number >= 91 && number < 181){
                    listelement = listData[2]
                }else if (number >= 181 && number < 271){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 5:
                if (number >= 0 && number < 73){
                    listelement = listData[4]
                }else if (number >= 73 && number < 145){
                    listelement = listData[3]
                }else if (number >= 145 && number < 217){
                    listelement = listData[2]
                }else if (number >= 217 && number < 289){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 6:
                if (number >= 0 && number < 61){
                    listelement = listData[5]
                }else if (number >= 61 && number < 121){
                    listelement = listData[4]
                }else if (number >= 121 && number < 181){
                    listelement = listData[3]
                }else if (number >= 181 && number < 241){
                    listelement = listData[2]
                }else if (number >= 241 && number < 301){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 7:
                if (number >= 0 && number < 52){
                    listelement = listData[6]
                }else if (number >= 52 && number < 103){
                    listelement = listData[5]
                }else if (number >= 103 && number < 155){
                    listelement = listData[4]
                }else if (number >= 155 && number < 206){
                    listelement = listData[3]
                }else if (number >= 206 && number < 258){
                    listelement = listData[2]
                }else if (number >= 258 && number < 309){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            case 8:
                if (number >= 0 && number < 46){
                    listelement = listData[7]
                }else if (number >= 46 && number < 91){
                    listelement = listData[6]
                }else if (number >= 91 && number < 136){
                    listelement = listData[5]
                }else if (number >= 136 && number < 181){
                    listelement = listData[4]
                }else if (number >= 181 && number < 226){
                    listelement = listData[3]
                }else if (number >= 226 && number < 271){
                    listelement = listData[2]
                }else if (number >= 271 && number < 316){
                    listelement = listData[1]
                }else{
                    listelement = listData[0]
                }
                
            
            default: break
                
                
            }
            
        }else{
            switch listData.count{
            case 2:
                if (number >= 0 && number < 181){
                    listelement = listData[0]
                }else{
                    listelement = listData[1]
                }
                
            case 3:
                if (number >= 0 && number < 121){
                    listelement = listData[0]
                }else if (number >= 121 && number < 241){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            case 4:
                if (number >= 0 && number < 91){
                    listelement = listData[0]
                }else if (number >= 91 && number < 181){
                    listelement = listData[3]
                }else if (number >= 181 && number < 271){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            case 5:
                if (number >= 0 && number < 73){
                    listelement = listData[0]
                }else if (number >= 73 && number < 145){
                    listelement = listData[4]
                }else if (number >= 145 && number < 217){
                    listelement = listData[3]
                }else if (number >= 217 && number < 289){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            case 6:
                if (number >= 0 && number < 61){
                    listelement = listData[0]
                }else if (number >= 61 && number < 121){
                    listelement = listData[5]
                }else if (number >= 121 && number < 181){
                    listelement = listData[4]
                }else if (number >= 181 && number < 241){
                    listelement = listData[3]
                }else if (number >= 241 && number < 301){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            case 7:
                if (number >= 0 && number < 52){
                    listelement = listData[0]
                }else if (number >= 52 && number < 103){
                    listelement = listData[6]
                }else if (number >= 103 && number < 155){
                    listelement = listData[5]
                }else if (number >= 155 && number < 206){
                    listelement = listData[4]
                }else if (number >= 206 && number < 258){
                    listelement = listData[3]
                }else if (number >= 258 && number < 309){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            case 8:
                if (number >= 0 && number < 46){
                    listelement = listData[0]
                }else if (number >= 46 && number < 91){
                    listelement = listData[7]
                }else if (number >= 91 && number < 136){
                    listelement = listData[6]
                }else if (number >= 136 && number < 181){
                    listelement = listData[5]
                }else if (number >= 181 && number < 226){
                    listelement = listData[4]
                }else if (number >= 226 && number < 271){
                    listelement = listData[3]
                }else if (number >= 271 && number < 316){
                    listelement = listData[2]
                }else{
                    listelement = listData[1]
                }
                
            
            default: break
                
                
            }
        }
        
    
    }

}
