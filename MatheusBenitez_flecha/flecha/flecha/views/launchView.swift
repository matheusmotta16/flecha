//
//  launchView.swift
//  flecha
//
//  Created by Matheus Motta on 30/07/25.
//

import SwiftUI

struct launchView: View {
    var body: some View {
        ZStack {

            Image("splashScreen")
                .resizable()
                .frame(width: 375, height: 375)
        }
    }
}

#Preview {
    launchView()
}
