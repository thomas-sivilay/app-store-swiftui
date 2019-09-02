//
//  TodayAppItem.swift
//  AppStore
//
//  Created by Thomas Sivilay on 3/9/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI

struct TodayAppItem: View {
    
    var color: Color
    
    private enum Constant {
        static let itemHeight: CGFloat = 320
    }
    
    var body: some View {
        GeometryReader { proxy in
            Rectangle()
                .cornerRadius(12)
                .padding(.horizontal)
                .frame(width: proxy.size.width)
                .foregroundColor(self.color)
//                .onTapGesture {
//                    withAnimation() {
//                        self.scaled.toggle()
//                    }
            }
        .frame(height: Constant.itemHeight)
    }
}
