//
//  ShoppingItemsViewController.swift
//  MVVMTutorial
//
//  Created by Behrad Kazemi on 9/12/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import UIKit

class ShoppingItemsViewController: UIViewController {
	let models = [ShoppingModel(seller: "Amazon", size: 45.2, itemName: "Shoe"),
								ShoppingModel(seller: "Amazon", size: 45.2, itemName: "Tshirt"),
								ShoppingModel(seller: "Amazon", size: 45.2, itemName: "Mobile"),
								ShoppingModel(seller: "ebey", size: 5.2, itemName: "Car")]
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view.
	}
	
	
	@IBAction func openSearch(_ sender: Any) {
		let resultsViewController = ResultsViewController(nibName: "ResultsViewController", bundle: nil)
		resultsViewController.viewModel = ResultsViewModel(items: models.map({ (item) -> ResultItemViewModel in
			let title = item.itemName + " - " + item.seller
			return ResultItemViewModel(title: title, image: UIImage(named: "ShopImage")!)
		}))
		navigationController?.pushViewController(resultsViewController, animated: true)
	}
	
}
