//
//  ViewController.h
//  Calculator
//
//  Created by 平田　拓哉 on 12/10/23.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    BOOL startInput,p;
    double x,y,a,n;
    char op;

}

@property (weak, nonatomic) IBOutlet UILabel *result;
@property (weak, nonatomic) IBOutlet UILabel *op;

- (IBAction)AC:(id)sender;
- (IBAction)C:(id)sender;
- (IBAction)point:(id)sender;

- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)tow:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;

- (IBAction)plus:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)mul:(id)sender;
- (IBAction)div:(id)sender;
- (IBAction)equal:(id)sender;


@end
