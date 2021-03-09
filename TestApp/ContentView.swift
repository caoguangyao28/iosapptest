//
//  ContentView.swift
//  TestApp
//
//  Created by 曹光耀 on 2021/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    var body: some View {
        VStack {
            Text("2021年加油1")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
            Button(action: {
                print("这辈子都没见过这样的要求")
                self.alertIsVisible = true //更改状态
            }) {
                Text("过来点我呀")
            }
            .alert(isPresented: self.$alertIsVisible){
                                Alert(title: Text("你好"),
                                      message: Text("这样的要求不算奇怪"),
                                      dismissButton: .default(Text("太好了！")))
                            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
