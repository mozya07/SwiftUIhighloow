//
//  ContentView.swift
//  highlow
//
//  Created by cmStudent on 2021/11/08.
//

import SwiftUI
import UIKit



struct ContentView: View {
    
   //  @State private var arrayString = ["ハート", "スペード", "ダイヤ", "クローバー"]
    @State private var arrayString: Array<String> = [ "ハート", "スペード", "ダイヤ", "クローバー"]
   
   
    
    @State private var randNum1 = 0
    @State private var randNum2 = 0
    
    @State private var resalut = ""
    
    @State private var score2 = 0
    
    @State private var firstScoreText = "連勝記録"
    
    
    
   // weak var sampleButton: UIButton!
    
    
    
   

    
    
   
  
    

    
    var body: some View {
        
//        Button("Sample Button"){
//
//        }
        
        
        
        
        ZStack { // 全体範囲開始
           //Color.green
          //  Color( red : 0, green : 0.9, blue : 0)
            Color("BKgureen")
               .ignoresSafeArea()
            VStack {
                HStack { // カウント範囲開始（HS）
                    
                    VStack { // カウント範囲開始（VS）
                        Text("プレイヤー")
                            .font(.system(size: 30, weight: .black, design: .default))
                        Text(firstScoreText)
                       // String(score2) + "連勝中"
                            .font(.system(size: 30, weight: .black, design: .default))
                    } // カウント範囲開始（VS）
                } // カウント範囲終了（HS）
                
             Spacer()
                
                HStack { // カードの範囲開始
                 
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
                } // カードの範囲終了
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
                
                
                Text(resalut)
                    .font(.system(size: 50, weight: .black, design: .default))
                    .frame(width: 250, height: 70)
                
                  
                
                   
                
                Spacer()
                
                
               
                HStack { // ボタンの範囲の開始
                   // Spacer()
                    
               
                
                // High
                    Button(action: {
                    
                   
                    self.randNum2 = Int.random(in: 1...13)
                    
                    if self.randNum2 > self.randNum1 {
                        score2 += 1
                        firstScoreText = String(score2) + "連勝中"
                        resalut = "YOUWIN"
                        
                    } else  {
                        score2 = 0
                        resalut = "YOULOSE"
                        firstScoreText = "連勝記録"
                    }
                    
                    
                   
                    
                }) {
                    Image("Buood")
                        .resizable()
                        .cornerRadius(12.0)
                        .frame(width: 166, height: 70)
                    
                }
//                .padding()
//                .accentColor(Color.white)
//                .background(Color.orange)
//                .cornerRadius(15)
                .buttonStyle(RESETButtonStyle())
                .overlay(
                    Text("HIGH")
                        .foregroundColor(.white)
                    )
                    // 影
               // .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                    
                    //Spacer()
                
                // Low
                Button(action: {
                    
                   
                    self.randNum2 = Int.random(in: 1...13)
                    
                    if self.randNum2 < self.randNum1 {
                        score2 += 1
                        firstScoreText = String(score2) + "連勝中"
                        resalut = "YOUWIN"
                    } else  {
                        score2 = 0
                        resalut = "YOULOSE"
                        firstScoreText = "連勝記録"
                    }
                    
                }) {
                    Image("Buood")
                        .resizable()
                        .cornerRadius(12.0)
                        .frame(width: 166, height: 70)
                    
                }
//                .padding()
//                .accentColor(Color.white)
//                .background(Color.blue)
//                .cornerRadius(15)
                .buttonStyle(RESETButtonStyle())
                .overlay(
                    Text("LOW")
                        .foregroundColor(.white)
                    )
                    // 影
               //  .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                        
                  
                    
                   //Spacer()
                    
                
                    
                } //ボタンの範囲終了
                
                
                VStack {
                    
                  
                    
                    // スタート
                    Button(action: {
                        
                        self.randNum1 = Int.random(in: 1...13)
                       
                        
                        
                       
                        
                    }) {
                        Image("Buood")
                            .resizable()
                            .cornerRadius(12.0)
                            .frame(width: 332, height: 70)
                            
                        
                    }
//                    .padding()
//                    .accentColor(Color.white)
//                    .background(Color.red)
//                    .cornerRadius(15)
                    .buttonStyle(RESETButtonStyle())
                    .overlay(
                        Text("START")
                            .foregroundColor(.white)
                        )
                        // 影
                   // .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                    
                    Button(action: {
                        
                        self.randNum1 = Int.random(in: 1...13)
                        self.randNum2 = 0
                        resalut = ""
                       
                        
                     
                        
                    }) {
                        Image("Buood")
                            .resizable()
                            .cornerRadius(12.0)
                            .frame(width: 332, height: 70)
                            
                        
                    }
//                    .padding()
//                    .accentColor(Color.white)
//                    .background(Color.yellow)
//                    .cornerRadius(15)
                    .buttonStyle(RESETButtonStyle())
                    .overlay(
                        Text("NEXT")
                            .foregroundColor(.white)
                        )
                        
                  
                    
                    // リセット
                    Button(action: {
                        
                        self.randNum1 = 0
                        self.randNum2 = 0
                        firstScoreText = "連勝記録"
                        score2 = 0
                        resalut = ""
                        
                     
                        
                    }) {
                        Image("Buood")
                            .resizable()
                            .cornerRadius(12.0)
                            .frame(width: 332, height: 70)
                            
                        
                         
                            
                            
                        
                    }
//                    .padding()
//                    .accentColor(Color.white)
//                    .background(Color.yellow)
//                    .cornerRadius(15)
                
                   .buttonStyle(RESETButtonStyle())
                    // これを使う場合は上は消しても良い多分
                    .overlay(
                        Text("RESET")
                            .foregroundColor(.white)
                    )
                    
                        // 影
                   //  .shadow(color: Color.purple, radius: 15, x: 0, y: 5)
                            
                      
                        
                     
                        
                   
                        
                    
                }
                
                Spacer()
                
                
                
                
                
                
                }
                
               
                
            } // 全体範囲終了
        }
    }

//struct ShrinkButtonStyle: ButtonStyle {
//
//    func makeBody(configuration: Self.Configuration) -> some View {
//
//      let isPressed = configuration.isPressed
//
//      return configuration.label
//        .scaleEffect(x: isPressed ? 0.9 : 1, y: isPressed ? 0.9 : 1, anchor: .center)
//        .animation(.spring(response: 0.2, dampingFraction: 0.9, blendDuration: 0))
//    }
//  }

//struct NEXTButtonStyle: ButtonStyle {
//  func makeBody(configuration: Self.Configuration) -> some View {
//    configuration.label
//        .padding()
//        .foregroundColor(Color.white)
//        .background(Color.blue)
//        .cornerRadius(12.0)
//        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
//        .opacity(configuration.isPressed ? 0.4 : 1)
//    }
//}
   

//struct RESETButtonStyle: ButtonStyle {
//  func makeBody(configuration: Self.Configuration) -> some View {
//    configuration.label
//        .cornerRadius(12.0)
//        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
//        .opacity(configuration.isPressed ? 0.4 : 1)
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
