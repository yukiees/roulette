//
//  ListViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/24.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var makelistData: [String?] = [""]

    @IBOutlet weak var listfield1: UITextField!
    @IBOutlet weak var listfield2: UITextField!
    @IBOutlet weak var listfield3: UITextField!
    @IBOutlet weak var listfield4: UITextField!
    @IBOutlet weak var listfield5: UITextField!
    @IBOutlet weak var listfield6: UITextField!
    @IBOutlet weak var listfield7: UITextField!
    @IBOutlet weak var listfield8: UITextField!
    @IBOutlet weak var toRouletteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    
    func voidListAlert(){
        let alert = UIAlertController(
               title: "お題が無い!",
               message:"2つ以上選択肢を作ろう!",
               preferredStyle: .alert
           )
           alert.addAction(UIAlertAction(
               title: "OK",
               style: .default,
               handler: nil
           ))
        self.present (alert, animated: true, completion: nil)
    }
    
    
    func alertForList(){
        let alert = UIAlertController(
               title: "お題が無い!",
               message:"上から順に選択肢を作ろう!",
               preferredStyle: .alert
           )
           alert.addAction(UIAlertAction(
               title: "OK",
               style: .default,
               handler: nil
           ))
        self.present (alert, animated: true, completion: nil)
    }
    
    
    @IBAction func ontappedTorouletteButton(){
        if listfield1.text! == "" || listfield2.text! == "" {
            voidListAlert()
        }
        
        if listfield4.text! != "" && listfield3.text! == ""{
            alertForList()
        }
        
        if listfield5.text! != "" && listfield4.text! == ""{
            alertForList()
        }
        
        if listfield6.text! != "" && listfield5.text! == ""{
            alertForList()
        }
        
        if listfield7.text! != "" && listfield6.text! == ""{
            alertForList()
        }
        
        if listfield8.text! != "" && listfield7.text! == ""{
            alertForList()
        }
        
        listData[0] = listfield1.text!
        makelistData[1]?.append(listfield2.text!)
        makelistData[2]?.append(listfield3.text!)
        makelistData[3]?.append(listfield4.text!)
        makelistData[4]?.append(listfield5.text!)
        makelistData[5]?.append(listfield6.text!)
        makelistData[6]?.append(listfield7.text!)
        makelistData[7]?.append(listfield8.text!)
       
        listData = makelistData
        
    
        let preview = self.storyboard?.instantiateViewController(withIdentifier: "View1") as! ViewController
        self.present(preview, animated: true, completion: nil)
    }

   

}
