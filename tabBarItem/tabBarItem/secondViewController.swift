//
//  secondViewController.swift
//  tabBarItem
//
//  Created by Imcrinox Mac on 24/12/1444 AH.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        resetviewTransform ()
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
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 1,options: .curveEaseIn, animations: {
            self.profileImage.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.profileImage.alpha = 1
        })
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        resetviewTransform ()
    }
    
    func resetviewTransform () {
        self.profileImage.alpha = 0
        self.profileImage.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)


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
