//
//  DetailViewController.swift
//  FieldReportTableView
//
//  Created by chlotte crim on 3/20/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var image:UIImage?
    var titleText:String?
    var date:String?
    var descriptionText:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pictureView.image = image
        titleLabel.text = titleText
        dateLabel.text = date
        descriptionLabel.text = descriptionText
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
