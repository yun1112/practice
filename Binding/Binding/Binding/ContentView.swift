//
//  ContentView.swift
//  Binding
//
//  Created by 원윤경 on 2020/06/19.
//  Copyright © 2020 원윤경. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let genderType=["남","여","비밀"]
    
    @State var name=""
    @State var gender=0
    @State var birth=0
    
    var resultScript:String{
      if(name.isEmpty){
        return "이름을 입력해주세요."
      }else{
        return "\(name)님은 성별이 \(genderType[gender])이며 나이는 \(120 - birth)입니다."
      }
    }
    
    var body: some View {
        NavigationView{
        Form{
            Section(header:Text("이름")){
                TextField("이름을 입력해주세요",text:$name).keyboardType(.default)
                //기본 키보드
            }
            Section(header:Text("생년월일")){
                //선택하는 값을 birth 변수에 할당
                Picker("출생년도",selection: $birth){
                               // 1900부터 2018까지 Text를 만듦
                     ForEach(1900 ..< 2019 ){
                         Text("\(String($0))년생")
                }
            }
            }
                    Section(header: Text("성별")){
                        //선택하는 값을 bornIn 변수에 할당합니다.
                        Picker("성별",selection: $gender){
                            // 1900부터 2018까지 Text를 만듭니다.
                            ForEach( 0  ..< genderType.count ){
                                Text("\(self.genderType[$0])")
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                    }
            
            
            Section(header: Text("결과")){
               Text("\(resultScript)")
             }
            
                }.navigationBarTitle("회원가입")
            }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
