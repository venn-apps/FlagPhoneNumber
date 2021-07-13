//
//  Bundle+Extension.swift
//  FlagPhoneNumber
//
//  Created by DeviOS on 07/12/2017.
//

import Foundation

public extension Foundation.Bundle {

	@objc static var FlagIcons = FlagPhoneNumber()

	@objc static func FlagPhoneNumber() -> Bundle {
        return Bundle.module
	}
}
