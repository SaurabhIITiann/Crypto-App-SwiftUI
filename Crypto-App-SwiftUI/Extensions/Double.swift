//
//  Double.swift
//  Crypto-App-SwiftUI
//
//  Created by Saurabh  Verma on 19/08/24.
//

import Foundation

extension Double {
    /// Convert a Double into a Currency with 2 decimal places
    /// ```
    /// Convert 12.3456 to $12.34
    /// ```
    // above added example
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // -> Default value
//        formatter.currencyCode = "usd" // -> Change currency
//        formatter.currencySymbol = "$" // Change currency symbol
        
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    /// Convert a Double into a Currency with 2 decimal places
    /// ```
    /// Convert 0.123456 to "$0.12"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    /// Convert a Double into a Currency with 2-6 decimal places
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 12.3456 to $12.3456
    /// Convert 0.123456 to $0.123456
    /// ```
    // above added example
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // -> Default value
//        formatter.currencyCode = "usd" // -> Change currency
//        formatter.currencySymbol = "$" // Change currency symbol
        
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    /// Convert a Double into a Currency with 2-6 decimal places
    /// ```
    /// Convert 1234.56 to "$1,234.56"
    /// Convert 12.3456 to "$12.3456"
    /// Convert 0.123456 to "$0.123456"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.000"
    }
    /// Convert a Double into a string representation
    /// ```
    /// Convert 1.23456 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    /// Convert a Double into a string representation with percent symbol
    /// ```
    /// Convert 1.23456 to "1.23%"
    /// ```
    func asPercentageString() -> String {
        return asNumberString() + "%"
    }
}
