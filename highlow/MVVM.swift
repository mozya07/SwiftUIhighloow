//
//  MVVM.swift
//  highlow
//
//  Created by cmStudent on 2021/11/10.
//

import SwiftUI

struct MVVM: View {
    
    
    //  @State private var arrayString = ["ハート", "スペード", "ダイヤ", "クローバー"]
     private var arrayString: Array<String> = [ "ハート", "スペード", "ダイヤ", "クローバー"]
    
    
     
     @State private var randNum1 = 0
     @State private var randNum2 = 0
     
     @State private var resalut = ""
     
     @State private var score2 = 0
     
     @State private var firstScoreText = "連勝記録"
    
    var variable = MVVMModel()
    
  
    
   
    
  
    
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
                        
                        self.variable.high()
                    
                   
                   
                    
                    
                   
                    
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
                    
                    self.variable.low()
                    
                   
                   
                    
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
                        
                        
                       
                        
                      
                        self.variable.startnext()
                       
                       
                        
                        
                       
                        
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
                        
                        self.variable.startnext()
                        
                     
                        
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
                        
                        self.variable.reset()
                        
                       
                        
                     
                        
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

// ViewModel
class MVVMModel: ObservableObject {
    
    // 左のトランプ
    @Published var randNum1 = 0
    // 右のトランプ
    @Published var randNum2 = 0
    
    // 連勝記録
    @Published var score2 = 0
    
    @Published var resalut = ""
    
    @Published var firstScoreText = "連勝記録"
    
    
    
    
    // @Publishedは ObservableObjectプロトコルに準拠したクラス内のプロパティを監視し、
    // 変化があった際にViewに対して通知を行う役割がある
    // (@Stateに近い機能と言える)
    
    // 左のトランプ種類
   // private var randNum11 = 0
    // 右のトランプ種類
  //  private var randNum22 = 0
    
    func high() {
        
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
        
    }
    
    func low() {
        
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
        
    }
    
//    func start()  {
//
//        self.randNum1 = Int.random(in: 1...13)
//
//
//    }
    
    func startnext() {
        
        self.randNum1 = Int.random(in: 1...13)
        self.randNum2 = 0
        resalut = ""
     
        
    }
   
    
    func reset() {
        
        self.randNum1 = 0
        self.randNum2 = 0
        firstScoreText = "連勝記録"
        score2 = 0
        resalut = ""
        
        
    }
    
}

struct RESETButtonStyle: ButtonStyle {
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .cornerRadius(12.0)
        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
        .opacity(configuration.isPressed ? 0.4 : 1)
    }
}

struct MVVM_Previews: PreviewProvider {
    static var previews: some View {
        MVVM()
    }
}
