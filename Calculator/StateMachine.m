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

- (double)AC_reset{
    x=0;
    y=0;
    a=0;
    n=0;
    p=0;
    startInput=0;//未入力状態に戻す
    return y;
}

- (double)C_reset{
    x=0;
    n=0;
    p=0;
    y=a;
    startInput=0;//未入力状態に戻す
    return y;
}

-(double)point_switch{
    switch (p) {//小数点有無の判定
        case 0://小数点未入力の場合
            p=1;//既入力状態
            return y;
            break;
        case 1://小数点既入力の場合
            return 0;
            break;
    }
    return 0;
}

-(double)number:(double)z{
    x = z;
    switch (p) {
        case 0:
            switch(startInput){
                case 0: //未入力
                    y=x;
                    startInput=1;
                    break;
                case 1: //既入力
                    y=y*10+x;
            }
            break;
        case 1:
            n=n+1;
            x=x*pow(10,(-n));
            y=y+x;
            break;
    }
    return y;
}

- (void)op_reset:(char)o{
    a=y;
    n=0;
    p=0;
    startInput=0;
    
    op = o;
}

- (double)calc{
    switch (op) {
            
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
