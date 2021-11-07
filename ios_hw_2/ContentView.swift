//
//  ContentView.swift
//  ios_hw_2
//
//  Created by 官鼎鈞 on 2021/11/7.
//

import SwiftUI

struct yoasobiView: View {
    
    @State private var movestepcounter: Double = 0
    
    var body: some View {
        HStack {
            Button("向夜晚奔去") {
                movestepcounter += 30 * Double.random(in: 0.0...1.0)
            }
            .font(.title)
            HStack {
                Image("gameicon")
                    .offset(x: movestepcounter, y: 0)
                    .animation(.default, value: movestepcounter)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                Text("YOASOBI介紹")
                    .padding()
                TabView {
                    Image("yoasobi_member")
                        .scaledToFill()
                    Image("yoasobi_icon")
                        .scaledToFill()
                }
                .tabViewStyle(.page)
                NavigationView {
                    VStack {
                        NavigationLink {
                            yoasobiView()
                        } label: {
                            Image("yoasobi_icon")
                                .scaledToFill()
                                .frame(width: 10, height: 30)
                        }
                    }
                }
                List {
                    Text("樂團簡介")
                        .padding()
                    Text("YOASOBI於2019年11月由作曲家Ayase與主唱ikura所組成，並致力於將monogatary.com網站中的小說故事以音樂和影像重現於大家眼前。")
                    Text("音樂中的故事")
                        .padding()
                    Text("YOASOBI每一首歌背後都有一篇原作小說，比如第一章的《夜に駆ける》（奔向夜空）以星野舞夜的獲獎小說《タナトスの誘惑》（桑納托斯的誘惑）為原型。第二章《あの夢をなぞって》（描摹那個夢）則是いしき蒼太所寫的《夢の雫と星の花》（夢想的水滴與繁星的花朵）。")
                }
            }
            .tabItem {
                Label("YOASOBI樂團介紹", systemImage: "wifi")
            }
            VStack{
                List {
                    HStack {
                        Image("single1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("夜に駆ける/向夜晚奔去")
                            Text("2019/12/15")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=x8VYWazR5mE")!)
                        }
                    }
                    HStack {
                        Image("single2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("あの夢をなぞって/重現夢境")
                            Text("2020/01/18")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=sAuEeM_6zpk")!)
                        }
                    }
                    HStack {
                        Image("single3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("ハルジオン/春紫苑")
                            Text("2020/05/11")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=kzdJkT4kp-A")!)
                        }
                    }
                    HStack {
                        Image("single4")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("たぶん/或許")
                            Text("2020/07/20")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=8iuLXODzL04")!)
                        }
                    }
                    HStack {
                        Image("single5")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("群青/群青")
                            Text("2020/09/01")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=Y4nEEZwckuU")!)
                        }
                    }
                    HStack {
                        Image("single6")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("ハルカ/遙")
                            Text("2020/12/18")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=vd3IlOjSUGQ")!)
                        }
                    }
                    HStack {
                        Image("single7")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("怪物/怪物")
                            Text("2021/01/06")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=dy90tA3TT1c")!)
                        }
                    }
                    HStack {
                        Image("single8")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("優しい彗星/溫柔的彗星")
                            Text("2021/01/20")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=VyvhvlYvRnc")!)
                        }
                    }
                    HStack {
                        Image("single9")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("もう少しだけ/再一點就好")
                            Text("2021/05/10")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=VfATdDI3604")!)
                        }
                    }
                    HStack {
                        Image("single10")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text("三原色/三原色")
                            Text("2021/07/02")
                            Link("Youtube", destination: URL(string: "https://www.youtube.com/watch?v=ZNFKZI7L9xE")!)
                        }
                    }
                }
                Link("YOASOBI官方網站", destination: URL(string: "https://www.yoasobi-music.jp")!)
                    .padding()
            }
            .tabItem {
                Label("歌曲列表與官網", systemImage: "play.tv")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
