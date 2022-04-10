//
//  main.swift
//  amad
//
//  Created by Shyzago Nakamoto on 09/04/22.
//

import Foundation

var readMenu:String? = ""
var readOrder:String? = ""
var shoppingCart = [String]()
var itemCount = 0

while(readMenu != "X"){
	print("Point of Sales")
	print("——————————————")
	print("Options\t:")
	print("1.\tBuy Food & Beverage")
	print("2.\tCart")
	print("X.\tExit")
	print("Your choice?")
	readMenu = readLine()

	switch readMenu{
		case "1":
			while(readOrder != "Q"){
				print("Hi! We have 5 items on the menu for you!")
				print("————————————————————————————————————————")
				print("[F01]\tGado-Gado")
				print("[F02]\tChicken Satay")
				print("[F03]\tNasi Padang")
				print("[B01]\tMineral Water")
				print("[B02]\tIced Tea")
				print("[Q]\tBack to Main Menu")
				print("Your F&B choice?")
				readOrder = String(readLine()!).uppercased()

				switch readOrder{
					case "F03":
						print("How many 'Gado-Gado' you want to buy? ")
						let quantity = Int(readLine(strippingNewline: true)!)!
						shoppingCart.append("\(quantity) Gado-Gado.")
					case "F02":
						print("How many 'Chicken Satay' you want to buy? ")
						let quantity = Int(readLine(strippingNewline: true)!)!
						shoppingCart.append("\(quantity) Chicken Satay.")
					case "F01":
						print("How many 'Nasi Padang' you want to buy? ")
						let quantity = Int(readLine(strippingNewline: true)!)!
						shoppingCart.append("\(quantity) Nasi Padang.")
					case "B02":
						print("How many 'Mineral Water' you want to buy? ")
						let quantity = Int(readLine(strippingNewline: true)!)!
						shoppingCart.append("\(quantity) Mineral Water.")
					case "B01":
						print("How many 'Iced Tea' you want to buy? ")
						let quantity = Int(readLine(strippingNewline: true)!)!
						shoppingCart.append("\(quantity) Iced Tea.")
					default:
						print("Error, no such input is recognized.")
						print("Back to the main menu.")
				}
			}
		case "2":
			if (shoppingCart.isEmpty){
				print("Your shopping cart is empty. Please use menu '1' to order something!")
			} else {
				print("Shopping Cart (\(shoppingCart.count) items):")
				for element in shoppingCart{
					print("\(element)")
				}
			}
		case "X":
			print("Thankyou, your order will be out soon!")
		default:
			print("Error, no such input is recognized.")
			print("Back to the main menu.")
	}
}
