//
//  ContentView.swift
//  flecha
//
//  Created by Matheus Motta on 14/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            MainButton()
           
            VStack{
                miniLogo()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
