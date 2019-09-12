//
//  ContactsViewController.swift
//  MVVMTutorial
//
//  Created by Behrad Kazemi on 9/12/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
	
	let models = [ContactModel(name: "Behrad Kazemi", age: 24, avatar: UIImage(named: "contact1")!),
								ContactModel(name: "Farzad Farzin", age: 30, avatar: UIImage(named: "contact2")!),
								ContactModel(name: "Asadolah Yekta", age: 65, avatar: UIImage(named: "contact3")!)]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	@IBAction func openSearch(_ sender: Any) {
		let resultsViewController = ResultsViewController(nibName: "ResultsViewController", bundle: nil)
		resultsViewController.viewModel = ResultsViewModel(items: models.map({ (item) -> ResultItemViewModel in
			return ResultItemViewModel(title: item.name, image: item.avatar)
		}))
		navigationController?.pushViewController(resultsViewController, animated: true)
	}
	
}
