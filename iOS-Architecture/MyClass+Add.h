//
//  MyClass+Add.h
//  MyStaticLibrary
//
//  Created by 58 on 2017/5/11.
//  Copyright © 2017年 58. All rights reserved.
//

#import "MyClass.h"

@interface MyClass (Add)

@property(nonatomic, copy) NSString *name;

- (void)printName;

- (void)sayHello;

@end
