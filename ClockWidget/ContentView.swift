//
//  ContentView.swift
//  ClockWidget
//
//  Created by pook on 7/5/20.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("face")
                .resizable(capInsets: /*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/, resizingMode: /*@START_MENU_TOKEN@*/.stretch/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center) {
                Rectangle().fill(Color.gray).frame(width: 3, height: 25)
                Spacer().frame(width: 3, height: 25)
            }._clockHandRotationEffect(.hourHand, in: .current, anchor: .center)
            VStack(alignment: .center) {
                Rectangle().fill(Color.gray).frame(width: 2, height: 40)
                Spacer().frame(width: 2, height: 40)
            }._clockHandRotationEffect(.minuteHand, in: .current, anchor: .center)
            VStack(alignment: .center) {
                Rectangle().fill(Color.red).frame(width: 1, height: 50)
                Spacer().frame(width: 1, height: 50)
            }._clockHandRotationEffect(.secondHand, in: .current, anchor: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
