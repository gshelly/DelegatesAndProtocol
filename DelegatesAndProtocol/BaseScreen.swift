//
//  BaseScreen.swift
//  DelegatesAndProtocol
//
//  Created by shelly.gupta on 5/29/18.
//  Copyright © 2018 shelly.gupta. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var chooseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseButtonTapped(_ sender: Any) {
        let selectionScreen = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionScreen.selectionDelegate = self
        present(selectionScreen, animated: true, completion: nil)
    }
}

extension BaseScreen: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        
        nameLabel.text = name
        view.backgroundColor = color
    }
}
