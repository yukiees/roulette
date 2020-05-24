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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rouletteButton.layer.cornerRadius = 20
        selectList.layer.cornerRadius = 20
        
    
    }


}

