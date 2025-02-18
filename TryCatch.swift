//
//  HelloWorld.swift
//
//  Created by Val I on 2025-02-10.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  This program asks the user for a radius
//  Then calculates the volume of a sphere 
//  With the given radius.
//

import Foundation

// Define an error type for invalid input
enum InputError: Error {
    case invalidNumber
}
// Greet the user
print("Hello and Welcome to my program")
print("I will be helping you calculate the")
print(" volume of a sphere in meters.")
print("Enter the radius of your sphere")

// Read user input as a string
let radString = readLine()!

// Use a do-catch block to handle potential errors

do {
    // Force unwrap the input string as a Float
    guard let radFloat = Float(radString) else {
        throw InputError.invalidNumber
    }
    if radFloat >= 0 {
        // Calculate the volume of the sphere
        let volume: Float = (4.0 / 3.0) * Float.pi * pow(radFloat, 3)
        // Print the calculated volume
        print("The volume of the sphere with radius \(radFloat) meters is \(volume) cubic meters.")
    } else {
        // Inform the user that the radius cannot be negative
        print("Radius can't be negative.")
    }
} catch {
    // Catch invalid number input and display an appropriate message
    print("Please input a number")
}
