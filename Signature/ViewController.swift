//
//  ViewController.swift
//  Signature
//
//  Created by mattia mauceri on 02/03/2021.
//

import UIKit

class ViewController: UIViewController {

    // prevent autorotation
    override public var shouldAutorotate: Bool {
        return false
    }
    
    //support only left landscape orientation
    override public var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }

    override public var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeLeft
    }
    // Interface Links
    @IBOutlet weak var signatureView: SignatureCanvas!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        signatureView.setStrokeColor(color: .black)
    }

    func setupViews(){
        signatureView.layer.borderWidth = 0.5
        signatureView.layer.borderColor = UIColor.black.cgColor
        signatureView.layer.cornerRadius = 10
    }

    @IBAction func clearBtnTapped(_ sender: UIButton) {
        signatureView.clear()
    }

}

