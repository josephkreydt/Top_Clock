//
//  ContentView.swift
//  Top Clock
//
//  Created by Joseph Kreydt on 2/22/23.
//

import SwiftUI

struct ContentView: View {
    @State var date = Date()
    var body: some View {
        VStack {
            /*Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")*/
            Text("\(timeString(date: date))")
                .onAppear(perform: {
                    let _ = self.updateTimer
                    let _ = self.floatWindow
                })
                .font(.largeTitle)
            /*Button("Keep on Top") {
                for window in NSApplication.shared.windows {
                    window.level = .floating
                }
            }*/
        }
        .padding()
    }
    var timeFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss a"
        return formatter
    }
    func timeString(date: Date) -> String {
         let time = timeFormat.string(from: date)
         return time
    }
    var updateTimer: Timer {
         Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
                              block: {_ in
                                 self.date = Date()
                               })
    }
    var floatWindow: Timer {
         Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
                              block: {_ in
             for window in NSApplication.shared.windows {
                 window.level = .floating
             }
                               })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
