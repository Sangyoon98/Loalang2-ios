//
//  ContentView.swift
//  Loalang2
//
//  Created by 채상윤 on 2023/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Screen1()
                Screen2()
                Screen3()
                Screen4()
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Screen1: View {
    var body: some View {
        NavigationView {
            SampleScrollView()
            .navigationBarTitle("로아랑")
            .navigationBarItems(trailing: SampleMenuButton())
        }
        .tabItem {
            Image(systemName: "1.square.fill")
            Text("캐릭터")
        }
    }
}

struct Screen2: View {
    var body: some View {
        NavigationView {
            SampleScrollView()
            .navigationBarTitle("로아랑")
            .navigationBarItems(trailing: SampleMenuButton())
        }
        .tabItem {
            Image(systemName: "2.square.fill")
            Text("주간숙제")
        }
    }
}

struct Screen3: View {
    var body: some View {
        NavigationView {
            SampleScrollView()
            .navigationBarTitle("로아랑")
            .navigationBarItems(trailing: SampleMenuButton())
        }
        .tabItem {
            Image(systemName: "3.square.fill")
            Text("일정표")
        }
    }
}

struct Screen4: View {
    var body: some View {
        NavigationView {
            SampleScrollView()
            .navigationBarTitle("로아랑")
            .navigationBarItems(trailing: SampleMenuButton())
        }
        .tabItem {
            Image(systemName: "4.square.fill")
            Text("정보실")
        }
    }
}

struct SampleScrollView: View {
    var body: some View {
        ScrollView() {
            VStack {
                ForEach(1..<100) {
                    Text("Item \($0)") //$표시 필수
                        .font(.title)
                }
            } //VStack
            //중앙에서만 탭(스크롤)이 가능했던것을 프레임으로 전체로 늘려줌
            .frame(maxWidth: .infinity)
        }
    }
}

struct SampleMenuButton: View {
    var body: some View {
        Button(action: {
            withAnimation {}
        }) {
            Image(systemName: "line.horizontal.3")
                .imageScale(.large)
        }
    }
}
