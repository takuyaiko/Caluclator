//
//  ViewController.m
//  Calculator
//
//  Created by 平田　拓哉 on 12/10/23.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    /**********機能**********/
- (IBAction)AC:(id)sender {//All Clear
    x=0;
    y=0;
    a=0;
    n=0;
    p=0;
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
    [[self op]setText:[NSString     stringWithFormat:@"　"]];//演算ボタンの非表示
    startInput=0;//未入力状態に戻す

}

- (IBAction)C:(id)sender {//Clear
    x=0;
    n=0;
    p=0;
    y=a;
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];//前の入力の表示
    startInput=0;//未入力状態に戻す
}

- (IBAction)point:(id)sender {//小数点機能
    switch (p) {//小数点有無の判定
        case 0://小数点未入力の場合
       [[self result]setText:[NSString stringWithFormat:@"%g.",y]];
            p=1;//既入力状態
            break;
        case 1://小数点既入力の場合
            break;
    }
}

    /***********入力**********/
- (IBAction)zero:(id)sender {x=0;
    switch (p) {
        case 0://小数点未入力の場合
            switch(startInput){
                case 0: //未入力
                    y=x;
                    startInput=1;
                    break;
                case 1: //既入力
                    y=y*10+x;
            }
            break;
        case 1://小数点既入力の場合
            n=n+1;
            break;
    }
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}
//問題点：0.000...と入力する場合他の数字を入力するまで表示することができない

- (IBAction)one:(id)sender {x=1;
    switch (p) {
        case 0://小数点未入力の場合
            switch(startInput){
                case 0: //未入力
                    y=x;
                    startInput=1;
                    break;
                case 1: //既入力
                    y=y*10+x;
            }
            break;
        case 1://小数点既入力の場合
            n=n+1;
            x=x*pow(10,(-n));
            y=y+x;
            break;
    }
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)tow:(id)sender {x=2;
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
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)three:(id)sender{x=3;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)four:(id)sender {x=4;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)five:(id)sender {x=5;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)six:(id)sender {x=6;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)seven:(id)sender {x=7;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)eight:(id)sender {x=8;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)nine:(id)sender {x=9;
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
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

    /**********演算**********/
- (IBAction)plus:(id)sender {op='+';
    [[self op]setText:[NSString     stringWithFormat:@"+"]];
    a=y;
    n=0;
    p=0;
    startInput=0;
}
- (IBAction)minus:(id)sender {op='-';
    [[self op]setText:[NSString     stringWithFormat:@"-"]];
    a=y;
    n=0;
    p=0;
    startInput=0;
}
- (IBAction)mul:(id)sender {op='*';
    [[self op]setText:[NSString     stringWithFormat:@"×"]];
    a=y;
    n=0;
    p=0;
    startInput=0;
}
- (IBAction)div:(id)sender {op='/';
    [[self op]setText:[NSString     stringWithFormat:@"÷"]];
    a=y;
    n=0;
    p=0;
    startInput=0;
}
    /*********結果**********/
- (IBAction)equal:(id)sender {
    switch (op) {
            
        case '+':
            y=a+y;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
            
        case '-':
            y=a-y;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
            
        case '*':
            y=a*y;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
            
        case '/':
            y=a/y;
            [[self result]setText:[NSString stringWithFormat:@"%g",y]];
            break;
    }
}
















@end
