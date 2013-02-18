//
//  StateMachine.h
//  Calculator
//
//  Created by 平田　拓哉 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject{
    
    BOOL startInput;            //未入力or既入力の判定
    BOOL p;                     //小数点有無の判定
    double x;                   //入力数字の一時保持
    double y;                   //入力数字の最終値
    double a;                   //演算の一つ目の値の保持
    double n;                   //小数点の移動
    char op;                    //演算の種類

}

- (double)AC_reset;             //AC機能
- (double)C_reset;              //C機能
- (double)point_switch;         //小数点機能
- (double)number:(double)z;     //数字の入力
- (void)op_reset:(char)o;       //演算の決定と値の保持
- (double)calc;                 //演算処理機能

@end
