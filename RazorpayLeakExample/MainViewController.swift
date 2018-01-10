//
//  ViewController.swift
//  RazorpayLeakExample
//
//  Created by Sourav Chandra on 10/01/18.
//  Copyright © 2018 Sourav Chandra. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showPaymentCaptureViewController(_ sender: UIButton) {
        performSegue(withIdentifier: "ShowPaymentCaptureViewController", sender: nil)
    }
}

