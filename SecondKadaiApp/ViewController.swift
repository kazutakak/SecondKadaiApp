//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 鬼頭和孝 on 2020/06/13.
//  Copyright © 2020 kazutaka.kitou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.name = TextField.text!
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}
