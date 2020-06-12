//
//  BountyViewController.swift
//  2.BountyList
//
//  Created by 곽우현 on 2020/06/10.
//  Copyright © 2020 곽우현. All rights reserved.
//

import UIKit
// Table View를 사용하기위해 UITableVIewDataSource, UITableViewDelegate 상속받음
class BountyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    UITableViewDataSource
//    몇개니
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
        
    }
//    어떻게 표현할거니
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
        
    }
//    클릭했을때 어떻게 반응할거야 UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---> \(indexPath.row)")
    }
        
    
}
