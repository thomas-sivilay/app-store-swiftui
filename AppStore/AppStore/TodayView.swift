//
//  TodayView.swift
//  AppStore
//
//  Created by Thomas Sivilay on 2/9/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI

struct TodayView: View {
    
    private enum Constant {
        static let itemHeight: CGFloat = 320
    }
    @State var scaled: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                header
                if scaled {
                    item(color: .purple)
                }
                
                item(color: .green)
                item(color: .red)
                item(color: .yellow)
            }
            .animation(.easeInOut(duration: 0.3))
        }
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(("Monday, 2 September").uppercased())
                .bold()
                .font(.footnote)
                .foregroundColor(.gray)
                .kerning(-0.25)
            HStack {
                Text("Today")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                account
            }
        }
        .padding()
        .frame(width: 375)
    }
    
    var account: some View {
        Text("TS")
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.35), Color.gray]),
                                         startPoint: .top,
                                         endPoint: .bottom))
                    .frame(width: 36, height: 36, alignment: .center)
        )
    }
    
    func item(color: Color) -> some View {
        GeometryReader { proxy in
            Rectangle()
                .cornerRadius(12)
                .padding(.horizontal)
                .frame(width: proxy.size.width)
                .foregroundColor(color)
                .onTapGesture {
                    withAnimation() {
                        self.scaled.toggle()
                    }
            }
        }
        .frame(height: Constant.itemHeight)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
