//
//  thirdViewController.swift
//  tabBarItem
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var ConsumerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resetViewTransform ()
        // Do any additional setup after loading the view.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 1,options: .curveEaseIn ,animations: {
            self.ConsumerImage.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.ConsumerImage.alpha = 1
        })
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        resetViewTransform ()
    }
    
    func resetViewTransform () {
        self.ConsumerImage.alpha = 0
        self.ConsumerImage.transform  =
        CGAffineTransform(scaleX: 0.5, y: 0.5)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
