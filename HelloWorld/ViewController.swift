//
//  ViewController.swift
//  HelloWorld
//
//  Created by Paul Frank Pacheco Carpio on 22/10/22.
//

import UIKit

class ViewController: UIViewController {
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	@IBAction func showMessage(sender: UIButton) {
		
		let selectedButton = sender
		
		if let wordtToLookup = selectedButton.titleLabel?.text {
			
			var meaning = ""
			
			switch wordtToLookup {
			case "👾":
				meaning = "alien of space invaders"
			case "🤓":
				meaning = "nerd emoji"
			case "🤖":
				meaning = "robot emoji"
			case "👻":
				meaning = "ghost emoji"
			default:
				meaning = "XD"
			}
			
			let alertController = UIAlertController(title: "Meaning", message: "\(meaning)", preferredStyle: .alert)
			
			alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
			
			present(alertController, animated: true, completion: nil)
		}
	}


}

