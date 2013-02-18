//
//  StateMachine.m
//  Calculator
//
//  Created by 平田　拓哉 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "StateMachine.h"
#import "ViewController.h"

@implementation StateMachine

- (double)AC_reset{//すべての状態をリセット
    x=0;
    y=0;
    a=0;
    n=0;
    p=0;
    startInput=0; //未入力状態に戻す
    return y;
}

- (double)C_reset{//前の状態に戻すため必要な値を保持しそれ以外をリセット
    x=0;
    n=0;
    p=0;
    y=a;
    startInput=0; //未入力状態に戻す
    return y;
}

-(double)point_switch{
    switch (p) {//小数点有無の判定
        case 0://小数点未入力の場合
            p=1;//小数点有りの状態にする
            return y;
            break;
        case 1://小数点既入力の場合
            return 0;
            break;
    }
    return 0;
}

-(double)number:(double)z{
    x = z;  //zでxに値を受け渡している
    switch (p) {
        case 0: //小数点無しの場合
            switch(startInput){
                case 0: //未入力
                    y=x;            //保持した値xをyに受け渡す
                    startInput=1;   //既入力状態にする
                    break;
                case 1: //既入力
                    y=y*10+x;       //ケタを増やして1ケタ目に入力する
            }
            break;
        case 1: //小数点有りの場合
            n=n+1;
            x=x*pow(10,(-n));
            y=y+x;
            break;
    }
    return y;
}

- (void)op_reset:(char)o{
    a=y; //演算のための一つ目の値の保持
    n=0; //小数点のリセット
    p=0; //小数点無しの状態
    startInput=0;//未入力状態に戻す
    
    op = o; //oでop(演算の種類)を受け渡している
}

- (double)calc{
    switch (op) {//演算の種類の判定と計算
            
        case '+':
            y=a+y;
            break;
            
        case '-':
            y=a-y;
            break;
            
        case '*':
            y=a*y;
            break;
            
        case '/':
            y=a/y;
            break;
    }
    return y;
}

@end
