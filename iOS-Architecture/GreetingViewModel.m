//
//  GreetingViewModel.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "GreetingViewModel.h"

@interface GreetingViewModel()

@property(nonatomic, strong)  Person   *person;
@property(nonatomic, copy, readwrite)  NSString *greeting;
//@property(nonatomic,copy) void (^greetingDidChange)(id);

@end


@implementation GreetingViewModel

@synthesize greetingDidChange;

- (instancetype)init:(Person *)person{
    
    if (self = [super init]) {
        
        _person = person;
    }
    
    return self;
}


- (void)setGreeting:(NSString *)greeting{
    
    _greeting = greeting;
    
    if (self.greetingDidChange) {
        self.greetingDidChange(self);
    }
}

- (void)showGreeting{
    
    self.greeting = [NSString stringWithFormat:@"Hello %@ %@",_person.firstName,_person.lastName];
}

@end
