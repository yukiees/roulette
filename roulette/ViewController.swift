//
//  ViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/23.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rouletteView: UIImageView!
    @IBOutlet weak var rouletteButton: UIButton!
    @IBOutlet weak var selectList: UIButton!
    
    var listdatas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rouletteButton.layer.cornerRadius = 10
        selectList.layer.cornerRadius = 15
        
    }


    @IBAction func onTappedStartButton(){
        let listData = UserDefaults.standard
        if (listData.array(forKey: "WORD") != nil){
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
}

