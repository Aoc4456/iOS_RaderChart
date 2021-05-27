//
//  SettingViewController.swift
//  RadarChart
//
//  Created by aoshima on 2021/05/26.
//  Copyright © 2021 aoshima. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var otherStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // setup navigation item
        self.navigationItem.title = "設定"
        let leftButton = UIBarButtonItem(title: "閉じる", style: UIBarButtonItem.Style.plain, target: self, action: #selector(onTapCloseButton(_:)))
        self.navigationItem.leftBarButtonItem = leftButton
        
        for i in 0..<3{
            otherStackView.addArrangedSubview(createPrivacyPolicyListTile())
        }
    }
    
    @objc func onTapCloseButton(_ sender: UIBarButtonItem){
        self.dismiss(animated: true, completion: nil)
    }

    private func createPrivacyPolicyListTile() -> ListTile{
        let listTile = ListTile()
        let image = UIImage(systemName: "minus.circle")
        listTile.setData(image: image!, title: "プライバシーポリシー", callBack: {print("コールバック")})
        return listTile
    }
}
