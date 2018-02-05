//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 上田　護 on 2017/10/16.
//  Copyright © 2017年 上田　護. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["死にそうなとき", "お腹痛いとき", "腹が立ったとき", "嬉しいとき", "遅刻しそうなとき"]

    let dokodeArray: [String] = ["海辺で", "砂漠で", "お腹の中で", "みんなの前で", "満員電車の中で"]

    let daregaArray: [String] = ["稲村さんが", "上田が", "平田が", "勝間が", "榊原さんが"]
    
    let doshitaArray: [String] = ["オナラした", "告白した", "気絶した", "帰った", "絶望した", "カレーを食べた",]
    
    var index: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加する
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        itsuLabel.text = "____"
        daregaLabel.text = "____"
        dokodeLabel.text = "____"
        doshitaLabel.text = "____"
        
        index = 0
    }
    
    @IBAction func random() {
        let itsuIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let doshitaIndex = Int(arc4random_uniform(4))
        
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokodeIndex)")
        print("だれが: \(daregaIndex)")
        print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
    }

}

