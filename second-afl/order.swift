//
//  order.swift
//  amad
//
//  Created by Shyzago Nakamoto on 09/04/22.
//

import Foundation

public protocol Order {
	var quantity: Int{get}
	func order(by quantity: Int)
}
