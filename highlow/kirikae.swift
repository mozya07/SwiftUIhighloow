//
//  kirikae.swift
//  highlow
//
//  Created by cmStudent on 2021/11/09.
//

import SwiftUI
enum ContentState {
    case first //１つ目のView
    case second (text: String)//2つ目のView
}

struct kirikae: View {
    
    //  @State private var arrayString = ["ハート", "スペード", "ダイヤ", "クローバー"]
     @State private var arrayString: Array<String> = [ "ハート", "スペード", "ダイヤ", "クローバー"]
    
    
     
     @State private var randNum1 = 0
     @State private var randNum2 = 0
     
     @State private var score1 = 0
     @State private var score2 = 0
     
   
    @State var state: ContentState = .first
       
       var body: some View {
           NavigationView {
               switch state {
               case .first:
                   FirstView { text in
                       state = .second(text: text)
                   }
              
               case .second:
                   SecondView(state: $state)

               }
           }
       }
}

struct FirstView: View {
    
    var onClick: (String) -> Void
    
   
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                HStack {
                    
                    VStack {
                        Text("プレイヤー")
                            .font(.system(size: 30, weight: .black, design: .default))
                        Text(String(score2) + "連勝中")
                            .font(.system(size: 30, weight: .black, design: .default))
                    }
                }
                Spacer()
                
                HStack {
                  
                    // 左の画像
                    Image("card" + arrayString.randomElement()! + String(randNum1))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                    // 右の画像
                    Image("card" + arrayString.randomElement()! + String(randNum2))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                }
                Spacer()
                
//                Button(action: {
//
//                    self.randNum1 = Int.random(in: 1...13)
//                    self.randNum2 = Int.random(in: 1...13)
//
//                    // スコア
//                    if self.randNum2 > self.randNum1 {
//                        score2 += 1
//                    } else if self.randNum1 > self.randNum2 {
//                        score2 = 0
//                    }
//
//
//
//                }) {
//                    Text("スタート")
//                }
               
                HStack {
                    Spacer()
                    
               
                
                // High
                Button(action: {
                    
                    self.randNum1 = Int.random(in: 1...13)
                    self.randNum2 = Int.random(in: 1...13)
                    
                    if self.randNum2 > self.randNum1 {
                        score2 += 1
                    } else  {
                        score2 = 0
                    }
                    
                    
                   
                    
                }) {
                    Text("High")
                        .frame(width: 80, height: 35)
                    
                }
                .padding()
                .accentColor(Color.white)
                .background(Color.orange)
                .cornerRadius(20)
                    // 影
               // .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                    
                    Spacer()
                
                // Low
                Button(action: {
                    
                    self.randNum1 = Int.random(in: 1...13)
                    self.randNum2 = Int.random(in: 1...13)
                    
                    if self.randNum2 < self.randNum1 {
                        score2 += 1
                    } else  {
                        score2 = 0
                    }
                    
                }) {
                    Text("Low")
                        .frame(width: 80, height: 35)
                    
                }
                .padding()
                .accentColor(Color.white)
                .background(Color.blue)
                .cornerRadius(20)
                    // 影
               //  .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                        
                  
                    
                   Spacer()
                    
                
                    
                }
                
                Spacer()
                
                
                
                
                
                
                }
                
               
                
            }
//        VStack() {
//           
//            Button("Next") {
//                onClick("")
//            }
//        }
    }




struct SecondView: View {
    
    @Binding var state: ContentState
    
    var body: some View {
        VStack() {
           
            Button("go to First") {
                state = .first
            }
        }
    }
}


struct kirikae_Previews: PreviewProvider {
    static var previews: some View {
        kirikae()
    }
}
