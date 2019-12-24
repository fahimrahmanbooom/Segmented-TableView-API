//
//  ViewController.swift
//  Segmented TableView API
//
//  Created by Fahim Rahman on 24/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var url = "https://newsapi.org/v2/everything?q=apple&from=2019-12-23&to=2019-12-23&sortBy=popularity&apiKey=9a5201da73f74c62ae35a85be208fc70"
    
    var newsData = [Articles]()
    var currentTableView: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        getDataFromServer()
        
    }
    
    
    @IBAction func segmentSwitch(_ sender: UISegmentedControl) {
        
        currentTableView = sender.selectedSegmentIndex
        
        if currentTableView == 0 {
            url = "https://newsapi.org/v2/everything?q=apple&from=2019-12-23&to=2019-12-23&sortBy=popularity&apiKey=9a5201da73f74c62ae35a85be208fc70"
            
            getDataFromServer()
            scrollToTop()
            
        }
        if currentTableView == 1 {
            url = "https://newsapi.org/v2/everything?q=bitcoin&apiKey=9a5201da73f74c62ae35a85be208fc70"
            
            getDataFromServer()
            scrollToTop()
        }
        if currentTableView == 2 {
            url = "https://newsapi.org/v2/everything?domains=wsj.com,nytimes.com&apiKey=9a5201da73f74c62ae35a85be208fc70"
            
            getDataFromServer()
            scrollToTop()
        }
    }
    
    private func scrollToTop() {
        
        let topRow = IndexPath(row: 0, section: 0)
        
        self.tableView.scrollToRow(at: topRow, at: .top, animated: true)
    }
}
