//
//  Node.swift
//  AprendiendoSwift
//
//  Created by Miguel Angel Bric Ulloa on 06/06/23.
//

import Foundation

public class Node<Value> {
    
    public var value: Value
    public var next: Node?
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
    
}
extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}
