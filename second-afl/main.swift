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
var nasiGoreng = Cart(name: "Nasi Goreng", quantity: 0)
var mieGoreng = Cart(name: "Mie Goreng", quantity: 0)
var ayamGoreng = Cart(name: "Ayam Goreng", quantity: 0)
var esTeh = Cart(name: "Es Teh", quantity: 0)
var esJeruk = Cart(name: "Es Jeruk", quantity: 0)

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
				print("[F01]\tNasi Goreng")
				print("[F02]\tMie Goreng")
				print("[F03]\tAyam Goreng")
				print("[B01]\tEs Teh")
				print("[B02]\tEs Jeruk")
				print("[Q]\tBack to Main Menu")
				print("Your F&B choice?")
				readOrder = String(readLine()!).uppercased()

				switch readOrder{
					case "F01":
						order(by: nasiGoreng.name)
						let quantity = Int(readLine(strippingNewline: true)!)!
						nasiGoreng.order(by: quantity)
					case "F02":
						order(by: mieGoreng.name)
						let quantity = Int(readLine(strippingNewline: true)!)!
						mieGoreng.order(by: quantity)
					case "F03":
						order(by: ayamGoreng.name)
						let quantity = Int(readLine(strippingNewline: true)!)!
						ayamGoreng.order(by: quantity)
					case "B01":
						order(by: esTeh.name)
						let quantity = Int(readLine(strippingNewline: true)!)!
						esTeh.order(by: quantity)
					case "B02":
						order(by: esJeruk.name)
						let quantity = Int(readLine(strippingNewline: true)!)!
						esJeruk.order(by: quantity)
					default:
						print("Error, no such input is recognized.")
						print("Back to the main menu.")
				}
			}
		case "2":
			var total = nasiGoreng.quantity + mieGoreng.quantity + ayamGoreng.quantity + esTeh.quantity + esJeruk.quantity

			if (total == 0){
				print("Your shopping cart is empty. Please use menu '1' to order something!")
			} else {
				print("Shopping Cart (\(total) items):")

				if nasiGoreng.quantity > 0 {
					print("\(nasiGoreng.quantity) Nasi Goreng")
				}
				if mieGoreng.quantity > 0 {
					print("\(mieGoreng.quantity) Mie Goreng")
				}
				if ayamGoreng.quantity > 0 {
					print("\(ayamGoreng.quantity) Ayam Goreng")
				}
				if esTeh.quantity > 0 {
					print("\(esTeh.quantity) Es Teh")
				}
				if esJeruk.quantity > 0 {
					print("\(esJeruk.quantity) Es Jeruk")
				}
			}
		case "X":
			print("Thankyou, your order will be out soon!")
		default:
			print("Error, no such input is recognized.")
			print("Back to the main menu.")
	}
}

func order(by name: String){
	print("How many \(name) you want to buy?")
}
