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
        listedData.append(contentsOf: ["カレー","焼肉","お寿司","中華","パスタ","鍋","ラーメン"] )
        listData = listedData
    }
    
    @IBAction func onTapped2Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["やる!","後でやる!","現実逃避..."] )
        listData = listedData
    }
    
    @IBAction func onTapped3Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["国語","数学","理科","社会","英語"] )
        listData = listedData
    }
    
    @IBAction func onTapped4Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["J-POP","邦楽","洋楽","K-POP","ジャズ","クラシック","ロック","演歌"] )
        listData = listedData
    }
    
    @IBAction func onTapped5Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["デコピン","しっぺ","変顔","モノマネ","語尾を変える","10分間英語禁止","スクワット10回","早口言葉"] )
        listData = listedData
    }
    
    @IBAction func onTapped6Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["全力で国歌斉唱","一発ギャグ","腹筋500回","10kmマラソン","すべらない話","ラップで自己紹介","黒歴史公表"] )
        listData = listedData
    }
    
    @IBAction func onTapped7Button(){
        toRouletteDisplay()
        listedData.append(contentsOf: ["読書","ジョギング","YouTube","映画観賞","ショッピング","お菓子作り","筋トレ","昼寝"] )
        listData = listedData
    }



}
