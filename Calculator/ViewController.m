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

@synthesize model;

@synthesize op_label;

- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[StateMachine alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    /**********機能**********/
- (IBAction)AC:(id)sender {//All Clear
    ans = [model AC_reset];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
    [[self op_label] setText:[NSString     stringWithFormat:@"　"]];//演算ボタンの非表示
}

- (IBAction)C:(id)sender {//Clear
    ans = [model C_reset];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)point:(id)sender {//小数点機能
    ans = [model point_switch];
    [[self result]setText:[NSString stringWithFormat:@"%g.",ans]];
}

    /***********入力**********/
- (IBAction)zero:(id)sender {
    ans = [model number:0];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}//問題点：0.000...と入力する場合他の数字を入力するまで表示することができない

- (IBAction)one:(id)sender {
    ans = [model number:1];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)tow:(id)sender {
    ans = [model number:2];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)three:(id)sender{
    ans = [model number:3];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)four:(id)sender {
    ans = [model number:4];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)five:(id)sender {
    ans = [model number:5];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)six:(id)sender {
    ans = [model number:6];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)seven:(id)sender {
    ans = [model number:7];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)eight:(id)sender {
    ans = [model number:8];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

- (IBAction)nine:(id)sender {
    ans = [model number:9];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

    /**********演算**********/
- (IBAction)plus:(id)sender {
    [[self op_label]setText:[NSString     stringWithFormat:@"+"]];
    [model op_reset:'+'];
}

- (IBAction)minus:(id)sender {
    [[self op_label]setText:[NSString     stringWithFormat:@"-"]];
    [model op_reset:'-'];
}

- (IBAction)mul:(id)sender {
    [[self op_label]setText:[NSString     stringWithFormat:@"×"]];
    [model op_reset:'*'];
}

- (IBAction)div:(id)sender {
    [[self op_label]setText:[NSString     stringWithFormat:@"÷"]];
    [model op_reset:'/'];
}

    /*********結果**********/
- (IBAction)equal:(id)sender {
    ans = [model calc];
    [[self result]setText:[NSString stringWithFormat:@"%g",ans]];
}

@end
