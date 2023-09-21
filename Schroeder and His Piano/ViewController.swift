//
//  ViewController.swift
//  Schroeder and His Piano
//
//  Created by Min Hu on 2023/8/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var snoopyImageView: UIImageView!
    @IBOutlet weak var lucy: UIImageView!
    @IBOutlet weak var schroedersPiano: UIImageView!
    @IBOutlet weak var schroeder: UIImageView!
    // 上一次的滑塊值
        var previousSliderValue: Float = 0.0
        // 初始位置
        var initialX: CGFloat = 700.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // sender 後面指定為 UISlider ，或是透過拉 IBAction 時選擇 Type 為 Slider 得到的
    @IBAction func sliderOnSchroederAndPiano(_ sender: UISlider) {
        let speed = sender.value
        
        //謝樂德
        schroeder.frame.origin.x = CGFloat(-5 + speed * 1.4)
        schroeder.alpha = CGFloat(sender.value / 200 + 0.5)
        
        //鋼琴
        schroedersPiano.frame.origin.x = CGFloat(375 - speed)
        schroedersPiano.alpha = CGFloat(sender.value / 200 + 0.1)
        schroedersPiano.frame.size = CGSize(width: CGFloat(240 + speed * 1.2), height: CGFloat(128 + speed * 1.2))
        
        // 露西
        if speed <= Float(150){
            lucy.frame.origin.x = CGFloat(700 - speed / 2)
                }else {
                    lucy.frame.origin.x = CGFloat(700 - 2 * speed)
                }
    }
    
    @IBAction func snoopySlider(_ sender: UISlider) {
    }
    
}

