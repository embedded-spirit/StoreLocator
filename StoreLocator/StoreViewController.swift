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

    public var searchTerm: String?

    override public func viewDidLoad() {
        super.viewDidLoad()

        if let st = self.searchTerm {
            print("Search term \(st)")
        }

        self.navigationItem.largeTitleDisplayMode = .never

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
