//
//  ImageViewController.swift
//  MidtermExam
//
//  Created by 蔡舜珵 on 2016/6/17.
//  Copyright © 2016年 蔡舜珵. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var movieTitle: UINavigationItem!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var detailLabel: UILabel!
    var detail: String?
    var imageView1: UIImageView?
    var imageName1: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        self.scrollView.contentSize.height = 1000
        self.imageView.image = UIImage(named: imageName1!)
        self.detailLabel.text = detail
        self.movieTitle.title = imageName1
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
