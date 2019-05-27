//
//  ViewController.swift
//  ExpansionCell
//
//  Created by 陈凯 on 2019/5/27.
//  Copyright © 2019 陈凯. All rights reserved.
//

import UIKit

class cellModel: NSObject {
    var title:String?
    var content:String?
    var isExpand:Bool?
}

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var data = [cellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.estimatedRowHeight = 40
        myTableView.rowHeight = UITableView.automaticDimension
        
        myTableView.tableFooterView = UIView.init(frame: CGRect.zero)
        
        myTableView.register(UINib.init(nibName: "ExpansionCell", bundle: nil), forCellReuseIdentifier: String(describing: ExpansionCell.self))
        
        for i in 0...3 {
            let model = cellModel()
            model.isExpand = false
            model.title = "title" + "\(i)"
            model.content = "contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontent" + "\(i)"
            self.data.append(model)
        }
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ExpansionCell.self)) as! ExpansionCell
        
        let model = self.data[indexPath.row]
        
        
        cell.setContentWithModel(model: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let model = self.data[indexPath.row]
        model.isExpand = !model.isExpand!
        
        tableView.beginUpdates()
        tableView.reloadRows(at: [indexPath], with: .none)
        tableView.endUpdates()
        
    }
    
}
