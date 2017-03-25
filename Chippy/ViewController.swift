//
//  ViewController.swift
//  Chippy
//
//  Created by Mike Metoyer  on 3/23/17.
//  Copyright © 2017 MAP Crew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func CreateGame(_ sender: Any) {
    }
    @IBAction func JoinGame(_ sender: Any) {
    }
    @IBAction func Fold(_ sender: Any) {
    }
    @IBAction func Check(_ sender: Any) {
    }
    @IBAction func Bet(_ sender: Any) {
    }
    @IBAction func Chip5(_ sender: Any) {
    }
    @IBAction func Chip10(_ sender: Any) {
    }
    @IBAction func Chip25(_ sender: Any) {
    }
    @IBAction func Chip100(_ sender: Any) {
    }
    @IBAction func Chip500(_ sender: Any) {
    }
    @IBAction func StartGame(_ sender: Any) {
        self.Chip500.isHidden = true
        self.Chip100.isHidden = true
        self.Chip25.isHidden = true
        self.Chip10.isHidden = true
        self.Chip5.isHidden = true
        self.Bet.isHidden = true
        self.Check.isHidden = true
        self.Fold.isHidden = true
        self.StartGame.isHidden = true
        self.AppIcon.isHidden = true
        self.CreateGame.isHidden = false
        self.JoinGame.isHidden = false
    }
    
    @IBOutlet weak var JoinGame: UIButton!
    @IBOutlet weak var CreateGame: UIButton!
    @IBOutlet weak var AppIcon: UIImageView!
    @IBOutlet weak var Chip500: UIButton!
    @IBOutlet weak var Chip100: UIButton!
    @IBOutlet weak var Chip25: UIButton!
    @IBOutlet weak var Chip10: UIButton!
    @IBOutlet weak var Chip5: UIButton!
    @IBOutlet weak var StartGame: UIButton!
    @IBOutlet weak var Fold: UIButton!
    @IBOutlet weak var Check: UIButton!
    @IBOutlet weak var Bet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Chip500.isHidden = true
        self.Chip100.isHidden = true
        self.Chip25.isHidden = true
        self.Chip10.isHidden = true
        self.Chip5.isHidden = true
        self.Bet.isHidden = true
        self.Check.isHidden = true
        self.Fold.isHidden = true
        self.StartGame.isHidden = false
        self.AppIcon.isHidden = false
        self.JoinGame.isHidden = true
        self.CreateGame.isHidden = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

