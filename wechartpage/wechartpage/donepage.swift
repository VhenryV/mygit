//
//  donepage.swift
//  wechartpage
//
//  Created by mac on 2019/1/18.
//  Copyright © 2019 henry. All rights reserved.
//

import UIKit
class donepageController : UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        let button = UIButton(frame: CGRect(x:10, y:70,width:100,height:50))
        button.setTitle(NSLocalizedString("BackButton", comment: ""), for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(backToPrevious), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func backToPrevious(){
        dismiss(animated: true, completion: nil)
    }
}
