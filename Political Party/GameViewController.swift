//
//  ViewController.swift
//  Political Party
//
//  Created by Patrick Bruce on 3/15/18.
//  Copyright © 2018 Patrick Bruce. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    var score = 0
    var mainStar: UIImageView?
    
    @IBOutlet weak var star: UIImageView!
    @IBOutlet var starDragger: UIPanGestureRecognizer!
    @IBOutlet weak var scoreText: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        mainStar = star
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dragged(_ sender: UIPanGestureRecognizer)
    {
        let translation = sender.translation(in: mainStar)
        
        sender.view!.center = CGPoint(x:    sender.view!.center.x + translation.x, y :     sender.view!.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
        if star.center.y < 70
        {
            score += 1
            scoreText.text = "\(score)"
            spanStar()
        }
    }
    
    func spanStar( )
    {
        let imageName = "Blue Star.png"
        let image = UIImage(named: imageName)
        let newStar = UIImageView(image: image!)
        
        newStar.frame = CGRect(x: 162, y: 308, width: 50, height: 50)
        view.addSubview(newStar)
        star = newStar
        mainStar = newStar
    }

}

