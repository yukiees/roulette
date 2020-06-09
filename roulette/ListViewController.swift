//
//  ListViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/24.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit
    var makelistData: [String] = []
class ListViewController: UIViewController {

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
        makelistData = []
        
    
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
        
        
        
        if listfield2.text! != "" && listfield3.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!])
        }
        
        if listfield3.text! != "" && listfield4.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!])
        }
        
        if listfield4.text! != "" && listfield5.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!,listfield4.text!])
        }
        
        if listfield5.text! != "" && listfield6.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!,listfield4.text!,listfield5.text!])
        }
        
        if listfield6.text! != "" && listfield7.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!,listfield4.text!,listfield5.text!,listfield6.text!])
        }
        
        if listfield7.text! != "" && listfield8.text! == ""{
            makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!,listfield4.text!,listfield5.text!,listfield6.text!,listfield7.text!])
        }
        
        if listfield8.text! != ""{
             makelistData.append(contentsOf:[listfield1.text!,listfield2.text!,listfield3.text!,listfield4.text!,listfield5.text!,listfield6.text!,listfield7.text!,listfield8.text!])
        }
        
        listData = makelistData
        
        
    
        let preview = self.storyboard?.instantiateViewController(withIdentifier: "View1") as! ViewController
        self.present(preview, animated: true, completion: nil)
    }

   

}
