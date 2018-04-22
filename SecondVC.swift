//
//  SecondVC.swift
//  Movies
//
//  Created by Ruth on 4/20/18.
//  Copyright © 2018 Ruth. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    
    var name = ""
    var DES = ""
    var image = ""
    
    
    
    @IBOutlet weak var labelMovie: UILabel!
    @IBOutlet weak var imageMovieview: UIImageView!
    
    @IBOutlet weak var DesMovietext: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelMovie.text = name
        DesMovietext.text = DES
        imageMovieview.image = UIImage(named: image)
        
        

        // Do any additional setup after loading the view.
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
