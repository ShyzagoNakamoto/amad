//
//  cart.swift
//  amad
//
//  Created by Shyzago Nakamoto on 09/04/22.
//

import Foundation

public class Cart: Order {
	public var name: String
	public var quantity: Int

	public init(name:String, quantity: Int) {
		self.quantity = quantity
		self.name = name
	}
	
	public func order(by quantity: Int){
		self.quantity += quantity
	}
}
