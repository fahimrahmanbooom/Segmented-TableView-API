//
//  tableView.swift
//  Segmented TableView API
//
//  Created by Fahim Rahman on 25/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        
        return "TOP HEADLINES"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 35
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return newsData.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        let imageURL = "\(newsData[indexPath.row].urlToImage ?? "")"
        cell.newsImage.downloaded(from: imageURL)
        
        cell.newsTitle.text = newsData[indexPath.row].title
        cell.authorName.text = "Author: \(newsData[indexPath.row].author ?? "")"
        cell.publishedLabel.text = "Published at: \(newsData[indexPath.row].publishedAt!.prefix(10))"
        cell.newsTextView.text = newsData[indexPath.row].description
        
        return cell
    }
    
}
