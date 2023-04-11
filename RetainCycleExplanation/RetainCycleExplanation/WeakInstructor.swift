//
//  WeakInstructor.swift
//  RetainCycleExplanation
//
//  Created by Nevin Özkan on 10.04.2023.
//

import Foundation


class WeakCourse {
    let name: String
    let url: URL
    weak var instructor: WeakInstructor?

    init(name: String, url: URL) { self.name = name; self.url = url }

    deinit {
        print("WeakCourse2 \(name) deinitialized")
    }
}

class WeakInstructor {
    let name: String
    var course: WeakCourse?

    init(name: String) { self.name = name }

    deinit {
        print("WeakInstructor2 \(name) deinitialized")
    }
}
