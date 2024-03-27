//
//  File.swift
//  
//
//  Created by waheedCodes on 27/03/2024.
//

import Foundation

public extension Array {
    subscript(safeIndex index: Int) -> Iterator.Element? {
        return index >= 0 && index < endIndex
        ? self[index]
        : nil
    }
}
