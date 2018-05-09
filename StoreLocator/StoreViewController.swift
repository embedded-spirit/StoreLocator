//
//  StoreViewController.swift
//  StoreLocator
//
//  Created by Oleg Kirichenko on 2018-05-08.
//  Copyright © 2018 Oleg Kirichenko. All rights reserved.
//

import UIKit
import Alamofire

public class StoreViewController: UITableViewController {

    var storeList = [String]()
    
    public var searchTerm: String?

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never

        if let st = self.searchTerm {

            print("Search term is \(st)")
            let storeSearchURL = "https://stagemapi.cantire.net/mobile/sg/search?app_version=6.8&datetime=2018-5-9T11%3A45%3A18&device_type=ios&group_list=Canadian%2BTire%2BStore&locale=en_CA&model_type=iPhone7,2&os_version=11.3&page_size=25&query=\(st)"
            
            Alamofire.request(storeSearchURL).responseJSON { response in

                if let json = response.result.value as? [String:Any],
                   let res = json["responsecollection"] as? [String:Any],
                   let xs = res["responses"] as? [[String:String]] {
                    /*print(xs)*/
                    for x in xs {
                        if let name = x["name"] {
                            self.storeList.append(name)
                        }
                    }
                    self.tableView.reloadData()
                }
            }
        }

        self.title = "Select store"

    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return storeList.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Store", for: indexPath)
        cell.textLabel?.text = storeList[indexPath.row]
        return cell
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
