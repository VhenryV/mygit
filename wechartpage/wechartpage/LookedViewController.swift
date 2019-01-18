//
//  LookedViewController.swift
//  wechartpage
//
//  Created by mac on 2019/1/8.
//  Copyright © 2019 henry. All rights reserved.
//
import UIKit
class LookedViewController: UITableViewController {
    var data = [
        ("A", [("朋友圈","pengyouquan.png")]),
        ("B", [("扫一扫","saoyisao.png"),("摇一摇","yaoyiyao.png")]),
        ("C", [("看一看","kanyikan.png"),("搜一搜","souyisou.png")]),
        ("D", [("漂流瓶","piaoliuping.png")]),
        ("E", [("购物","gouwu.png"),("游戏","youxi.png")]),
        ("F", [("小程序","xiaochengxu.png")])
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
       self.navigationItem.title  = "发现"
        self.tableView = UITableView(frame: UIScreen.main.bounds, style: UITableView.Style.grouped)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    // 设置tableView每个部分的Header的高
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    // 设置tableView每个部分Header内容
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0)
        let viewLabel = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        //viewLabel.text = data[section].0
        viewLabel.textColor = UIColor(red:0.31, green:0.31, blue:0.31, alpha:1.0)
        view.addSubview(viewLabel)
        tableView.addSubview(view)
        return view
    }
    // 计算每个部分的数量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].1.count
    }
    
    // 将数据填充到UITableViewCell里
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        let image = UIImage(named: data[indexPath.section].1[indexPath.row].1)
        cell.imageView?.image = image
        cell.textLabel?.text = data[indexPath.section].1[indexPath.row].0
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
