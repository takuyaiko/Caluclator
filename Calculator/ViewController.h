//
//  ViewController.h
//  Calculator
//
//  Created by 平田　拓哉 on 12/10/23.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachine.h"

@interface ViewController : UIViewController{
    double ans;                 //計算結果
}

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UILabel *op_label;
@property StateMachine* model;

/************機能**************/
- (IBAction)AC:(id)sender;      //All Clear
- (IBAction)C:(id)sender;       //Clear
- (IBAction)point:(id)sender;   //小数点



/************0〜9**************/
- (IBAction)zero:(id)sender;    //0
- (IBAction)one:(id)sender;     //1
- (IBAction)tow:(id)sender;     //2
- (IBAction)three:(id)sender;   //3
- (IBAction)four:(id)sender;    //4
- (IBAction)five:(id)sender;    //5
- (IBAction)six:(id)sender;     //6
- (IBAction)seven:(id)sender;   //7
- (IBAction)eight:(id)sender;   //8
- (IBAction)nine:(id)sender;    //9


/************演算**************/
- (IBAction)plus:(id)sender;    //+
- (IBAction)minus:(id)sender;   //-
- (IBAction)mul:(id)sender;     //*
- (IBAction)div:(id)sender;     //÷
- (IBAction)equal:(id)sender;   //=



@end
