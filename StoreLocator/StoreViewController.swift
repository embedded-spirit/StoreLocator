//
//  StoreViewController.swift
//  StoreLocator
//
//  Created by Oleg Kirichenko on 2018-05-08.
//  Copyright © 2018 Oleg Kirichenko. All rights reserved.
//

import UIKit

public class StoreViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    public var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let img = self.selectedImage {
            imageView.image = UIImage(named: img)
            self.title = img
        }

        self.navigationItem.largeTitleDisplayMode = .never

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnTap = false
    }
    
    override func didReceiveMemoryWarning() {
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
