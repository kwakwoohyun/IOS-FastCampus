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
    
    let nameList = ["brook","chopper","franky","luffy","nami","robin","sanji","zoro"]
    let bountyList = [33000000,50,44000000,300000000,16000000,80000000,77000000,120000000]

    //    세그웨이를 실행하기 직전에 준비하는 메소드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        DetailViewController에게 데이트를 준다.
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            if let index = sender as? Int {
                vc?.name = nameList[index]
                vc?.bounty = bountyList[index]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
//    UITableViewDataSource
//    몇개니
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bountyList.count
        
    }
//    어떻게 표현할거니
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        cell = tableview 이므로 우리는 ListCell을 사용하고싶어 캐스팅한다.
//        옵셔널 타입일수 있으므로 바인딩한다.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imageView?.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountyLabel.text = "\(bountyList[indexPath.row])"
        return cell
        
//        if-else 랩핑 방법
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell {
//            return cell
//        } else {
//            return UITableViewCell
//        }
        
    }
//    클릭했을때 어떻게 반응할거야 UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("---> \(indexPath.row)")
//        indexPath.row를 준비하는 함수로 넘겨준다.
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }
        
}
// Custom Cell
// cell의 identity inspector에 ListCell class를 추가 
class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
}
