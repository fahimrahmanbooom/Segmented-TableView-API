//
//  getTextDataFromServer.swift
//  Segmented TableView API
//
//  Created by Fahim Rahman on 25/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit
import Alamofire

extension ViewController {
    
    func getDataFromServer() {
        
        AF.request("\(url)").responseJSON { response in
            if let data = response.data {
                
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(Base.self, from: data)
                    DispatchQueue.main.async {
                        self.newsData = responseModel.articles!
                        self.tableView.reloadData()
                        
                        //print(self.newsData)
                    }
                }
                    
                catch {
                    print(error)
                }
            }
        } .resume()
    }
}
