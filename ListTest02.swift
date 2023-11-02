//
//  ListTest02.swift
//  List
//
//  Created by 박지은 on 2023/11/02.
//

import SwiftUI

struct ListTest02: View {
    
    //     Identifiable: 앱의 데이터베이스 공간과 앱의 id 속성을 안전하게 정의해주는?
    struct Ocean: Identifiable {
        let id = UUID()
        let name: String
    }
    
    private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]
    
    var body: some View {
        List(oceans) {
            Text($0.name)
        }
    }
}

