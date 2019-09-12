//
//  ResultsViewModel.swift
//  MVVMTutorial
//
//  Created by Behrad Kazemi on 9/12/19.
//  Copyright © 2019 Behrad Kazemi. All rights reserved.
//

import Foundation
final class ResultsViewModel {
	let items: [ResultItemViewModel]
	var searchingItems = [ResultItemViewModel]()	
	init(items: [ResultItemViewModel]) {
		self.items = items
	}
	func updateSearchItemsFor(key: String) {
		searchingItems = items.filter { (item) -> Bool in
			item.title.lowercased().contains(key.lowercased())
		}
	}
}
