//
//  TodayView.swift
//  AppStore
//
//  Created by Thomas Sivilay on 2/9/19.
//  Copyright © 2019 Thomas Sivilay. All rights reserved.
//

import SwiftUI

struct TodayView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                header
                Rectangle()
                    .frame(width: 375 - 20, height: 300)
                    .foregroundColor(Color.green)
                    .cornerRadius(12)
            }
        }
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(("Monday, 2 September").uppercased())
                .bold()
                .font(.footnote)
                .foregroundColor(.gray)
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
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
