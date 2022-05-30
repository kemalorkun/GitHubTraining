//
//  Collection+Extensions.swift
//  GitHubTest
//
//  Created by Nazmi Yavuz on 30.05.2022.
//

import Foundation

extension Collection where Indices.Iterator.Element == Index {
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
