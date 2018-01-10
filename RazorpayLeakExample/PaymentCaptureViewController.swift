//
//  PaymentCaptureViewController.swift
//  RazorpayLeakExample
//
//  Created by Sourav Chandra on 10/01/18.
//  Copyright © 2018 Sourav Chandra. All rights reserved.
//

import Foundation
import UIKit
import Razorpay

final class PaymentCaptureViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func capturePayment(_ sender: Any) {
        let options: [String: Any] = [
            "amount": 30000,
            "name": "Example for memory leak",
            "description": "Use netbanking for demo charge",
            "theme": [
                "color": "#5623FF"
            ]
        ]
        let razorPay = Razorpay.initWithKey("", andDelegateWithData: self)
        razorPay.open(options)
    }
    
    deinit {
        print("deinit PaymentCaptureViewController")
    }
}

extension PaymentCaptureViewController: RazorpayPaymentCompletionProtocolWithData {
    func onPaymentError(_ code: Int32, description str: String, andData response: [AnyHashable : Any]?) {
        statusLabel.text = "Failed"
    }
    
    func onPaymentSuccess(_ payment_id: String, andData response: [AnyHashable : Any]?) {
        statusLabel.text = "Success"
    }
}
