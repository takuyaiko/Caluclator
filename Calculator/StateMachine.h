//
//  StateMachine.h
//  Calculator
//
//  Created by 平田　拓哉 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject{
    
    BOOL startInput,p;
    double x,y,a,n;
    char op;

}

- (double)AC_reset;
- (double)C_reset;
- (double)point_switch;
- (double)number:(double)z;
- (void)op_reset:(char)o;
- (double)calc;

@end
