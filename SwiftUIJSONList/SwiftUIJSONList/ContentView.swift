//
//  ContentView.swift
//  SwiftUIJSONList
//
//  Created by 원윤경 on 2020/06/19.
//  Copyright © 2020 원윤경. All rights reserved.
//

import SwiftUI

//Swift UI에서 최상위 View
//Swift UI에서 최상위 View는 최대 10개의 Child View를 가질 수 있고 만약 10개를 초과하게된다면 아래와같이 다른 태그를 이용하여 감싸주어야 함

struct ContentView: View {
          //구조체 내에 변수를 선언하고 Button의 콜백에서 Self.touchedCount에 1을 증가시키게 되면 에러가 발생하는데 구조체의 특징상 내부 메서드 안에서 자신의 변수를 변경할 수 없기 때문
    //touchedCount 변수에 State 어노테이션을 선언해주면 정상적으로 실행할 수 있음
    //swiftUI에서는 State 어노테이션이 붙은 변수에 변경이 일어나면 자동으로 View를 다시 렌더링함
    @State var touchedCount=0;
    var body: some View {
        //Form: 주로 데이터나 설정등을 다루기위해 사용하는 컨테이너
        NavigationView{
                     Form{
                        Text("버튼 클릭 횟수:\(touchedCount)")
                        Button("button"){
                            self.touchedCount+=1
//                            self.touchedCount+=1
                            //버튼 눌렀을 때 발생하는 callback
                        }
                     }.navigationBarTitle("this is title")
        }
//        Form{
//               Text("Hello, World!")
//                          Text("Hello, World!")
//                          Text("Hello, World!")
//                          Text("Hello, World!")
//                          Text("Hello, World!")
//            Group{
//                      Text("Hello, World!")
//                                 Text("Hello, World!")
//                                 Text("Hello, World!")
//                                 Text("Hello, World!")
//                                 Text("Hello, World!")
//                Text("Hello, World!")
//                  }
            //Navigation View는 기존의 UINavigationController 역할을 하는 컨테이너
            //실행하게 되면 상단에 Title과 Navigation을 위한 공간이 생김
  
//        }
       
}

}
//하단 ContentView_Preview는 실제 앱에는 적용되지 않지만 Xcode의 Canvas 기능을 위한 Preview Layout
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
