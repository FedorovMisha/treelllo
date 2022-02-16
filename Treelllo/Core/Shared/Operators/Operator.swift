//
//  FunStyle.swift
//  Treelllo
//
//  Created by Misha Fedorov on 12.02.2022.
//

import Foundation

precedencegroup SimpleStyling {
  higherThan: AdditionPrecedence
  associativity: left
}

infix operator =>: SimpleStyling

public func =><T: AnyObject>(_ l: @escaping (T) -> Void,
                             _ r: @escaping (T) -> Void) -> (T) -> Void {
  {
    l($0)
    r($0)
  }
}
