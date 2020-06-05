//
//  SelectViewController.swift
//  roulette
//
//  Created by 松島優希 on 2020/05/24.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {
    
    var listedData: [String] = []
    
    
    @IBOutlet weak var makeListButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var list1Button: UIButton!
    @IBOutlet weak var list2Button: UIButton!
    @IBOutlet weak var list3Button: UIButton!
    @IBOutlet weak var list4Button: UIButton!
    @IBOutlet weak var list5Button: UIButton!
    @IBOutlet weak var list6Button: UIButton!
    @IBOutlet weak var list7Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeListButton.layer.cornerRadius = 10
        list1Button.layer.cornerRadius = 10
        list2Button.layer.cornerRadius = 10
        list3Button.layer.cornerRadius = 10
        list4Button.layer.cornerRadius = 10
        list5Button.layer.cornerRadius = 10
        list6Button.layer.cornerRadius = 10
        list7Button.layer.cornerRadius = 10
    }
    
    func toRouletteDisplay(){
        let preview = self.storyboard?.instantiateViewController(withIdentifier: "View1") as! ViewController
        self.present(preview, animated: true, completion: nil)
    }
    
    @IBAction func onTapped1Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["カレー","シチュー","うどん"] )
        listData = listedData
    }



}
