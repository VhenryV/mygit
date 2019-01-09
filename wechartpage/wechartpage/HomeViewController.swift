//
//  OrderViewController.swift
//  NETdemo
//
//  Created by mac on 2019/1/8.
//  Copyright © 2019 henry. All rights reserved.
//
import UIKit

class HomeViewController: UITableViewController {
    var data = [
         ["订阅号消息","美好时光 不负如来 不负卿","cont.png"],
         ["微信运动","应用消息","weixi.png"],
         ["中软国际","网络嘉年华：造星计划","we.png"],
         ["文件传输助手","【文件】IOS培训第四课程点击事件","weixi.png"],
         ["微信支付","微信支付凭证","weixi.png"],
         ["IOS培训","周六之前请将作业的链接发给我","cont.png"],
         ["顺丰速运","评价还能领200元？还不快来","mu.png"],
         ["腾讯新闻","习近平出席国际科学技术奖励大会并颁奖","weixi.png"],
         ["微信团队","登陆操作通知","weixi.png"],
         ["曹操","明天聚会，记得按时参加，人不来可以，记得把份子钱带过来","cont.png"],
         ["吃喝玩购福利社","蔬菜和肉类清洗出恶心的泡沫，检验结果通报","mu.png"],
         ["无印良品MUJI","当MUJI遇上“人间天堂”，第四家世界旗舰店接踵而来","mu.png"],
        ]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title  = "微信"
        //self.tableView = UITableView(frame: UIScreen.main.bounds, style: UITableView.Style.grouped)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        //self.automaticallyAdjustsScrollViewInsets = false
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    // 设置tableView有多少个部分
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    // 计算每个部分的数量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // 将数据填充到UITableViewCell里
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cellid")
        //cell 后面显示箭头
        //cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        //let image = UIImage(named: data[indexPath.section].1[indexPath.row].1)
        cell.imageView?.image = UIImage(named: data[indexPath.row][2])
        cell.textLabel?.text = data[indexPath.row][0]
        cell!.detailTextLabel?.text=data[indexPath.row][1]
        return cell
    }
    //设置每一行的内容

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

