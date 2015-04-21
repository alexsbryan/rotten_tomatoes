//
//  MoviesDetailsViewController.swift
//  Rotten Tomatoes
//
//  Created by Alex & Chelsea Bryan on 4/16/15.
//  Copyright (c) 2015 Alex. All rights reserved.
//

import UIKit

class MoviesDetailsViewController: UIViewController {

    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["synopsis"] as? String
        
        var href = movie.valueForKeyPath("posters.thumbnail") as! String
        
        var range = href.rangeOfString(".*cloudfront.net/", options: .RegularExpressionSearch)
        if let range = range {
            href = href.stringByReplacingCharactersInRange(range, withString: "https://content6.flixster.com/")
        }
        
        let url = NSURL(string: href)
        self.posterView.setImageWithURL(url)
        
        UIImageView.animateWithDuration(1.0, animations: {
            self.posterView.alpha = 1
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
