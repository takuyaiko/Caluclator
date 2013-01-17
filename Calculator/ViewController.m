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
- (IBAction)AC:(id)sender {
    x=0;
    y=0;
    a=0;
    n=0;
    p=0;
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
    [[self op]setText:[NSString     stringWithFormat:@"　"]];
    startInput=0;

}

- (IBAction)C:(id)sender {
    x=0;
    n=0;
    p=0;
    y=a;
    [[self result]setText:[NSString stringWithFormat:@"%g",a]];
    startInput=0;
}

- (IBAction)point:(id)sender {
    switch (p) {
        case 0:
       [[self result]setText:[NSString stringWithFormat:@"%g.",y]];
            p=1;
            break;
        case 1:
            break;
    }
}

    /***********入力**********/
- (IBAction)zero:(id)sender {x=0;
    switch(startInput){
        case 0: //未入力
            y=x;
            startInput=1;
            break;
        case 1: //既入力
            y=y*10+x;
    }
    [[self result]setText:[NSString stringWithFormat:@"%g",y]];
}

- (IBAction)one:(id)sender {x=1;
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
