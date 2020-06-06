//
//  ViewController.swift
//  1.homework
//
//  Created by 곽우현 on 2020/05/31.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButton(_ sender: Any) {
        let alert = UIAlertController(title: "HI", message: "My First App", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

