//
//  HomeViewController.swift
//  NETdemo
//
//  Created by mac on 2019/1/8.
//  Copyright © 2019 henry. All rights reserved.
//

import UIKit
class UnserInfoViewController: UITableViewController {
    var data = [
        ("A", [("钱包","money.png")]),
        ("B", [("收藏","save.png"),("相册","picview.png"),("卡包","card.png"),("表情","biaoqing.png")]),
        ("C", [("设置","setting.png")])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title  = NSLocalizedString("Detailstitle", comment: "")
        self.view.backgroundColor = .white
        //设置tableView的样式，如果不设置grouped页面将会显示成一整段带横线的样式
        self.tableView = UITableView(frame: UIScreen.main.bounds, style: UITableView.Style.grouped)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: NSLocalizedString("DoneButton", comment: ""), style: .done, target: self, action: #selector(nextPage))
        self.tableView.dataSource = self
        self.tableView.delegate = self
        //self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(detailspageController(), animated: true)
    }
    // 设置tableView有多少个部分
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    // 设置tableView每个部分的Header的高
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    // 设置tableView每个部分Header内容
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.94, alpha:1.0)
        let viewLabel = UILabel(frame: CGRect(x: 10, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        //可以给每一个grouped添加一个Hearder的标题
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
        //设置每一行的右边是带箭头的disclosureIndicator，默认是不带箭头
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        //let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        let image = UIImage(named: data[indexPath.section].1[indexPath.row].1)
        cell.imageView?.image = image
        cell.textLabel?.text = data[indexPath.section].1[indexPath.row].0
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func nextPage(){
        present(donepageController(),animated: true,completion: nil)
    }
    
}

