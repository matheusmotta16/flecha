//
//  teste.swift
//  flecha
//
//  Created by Matheus Motta on 16/07/25.
//

import SwiftUI

struct teste: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            if !username.isEmpty {
                Text("Welcome \(username)!")
            }
            TextField("Username", text: $username)
        }
    }
}
#Preview {
    teste()
}
