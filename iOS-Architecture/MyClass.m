//
//  MyClass.m
//  MyStaticLibrary
//
//  Created by 58 on 2017/5/11.
//  Copyright © 2017年 58. All rights reserved.
//

#import "MyClass.h"



@implementation MyClass

//+ (void)load{
//    
//     //NSLog(@"---%@",@"MyClass");
//}
//
- (void)printName{
    
   static NSInteger index = 0;
   void (^block)() = [^{
       
       index = 1;
       NSLog(@"---block");
    } copy];
    
    block() ;
    
    NSLog(@"printName ---%@",@"MyClass");
}



@end
