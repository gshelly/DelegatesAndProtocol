//
//  SelectionScreen.swift
//  DelegatesAndProtocol
//
//  Created by shelly.gupta on 5/29/18.
//  Copyright © 2018 shelly.gupta. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {

    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rebelButton(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "darthVader")!, name: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func jediButton(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, name: "Luke Skywalker", color: .cyan)
        dismiss(animated: true, completion: nil)
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
