//
//  MyClass+Multiplied.m
//  iOS-Architecture
//
//  Created by 58 on 2017/5/12.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "MyClass+Multiplied.h"

@implementation MyClass (Multiplied)

+ (void)load{
    
    NSLog(@"---MyClass (Multiplied)");
}

- (void)printName{
    
    NSLog(@"printName ---%@",@"Multiplied");
}

@end
