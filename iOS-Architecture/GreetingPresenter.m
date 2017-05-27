//
//  GreetingPresenter.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "GreetingPresenter.h"

@implementation GreetingPresenter

- (instancetype)init:(id<GreetingView>)view person:(Person *)person{
    
    if (self = [super init]) {
        
        _view = view;
        _person = person;
    }
    return self;
}

- (void)showGreeting{
    
    NSString *greeting = [NSString stringWithFormat:@"Hello %@ %@",_person.firstName,_person.lastName];
    [_view setGreetingWith:greeting];
}

- (instancetype)initWithIndex:(NSInteger)index{
    
    if (self = [super init]) {
        //[self dd];
        
     //GreetingPresenter *gred = [GreetingPresenter greetingPresenter];
        
        NSLog(@"index ---%@  %p",self,[self class]);
    }
    return self;
}

+ (instancetype)greetingPresenter{
    
    GreetingPresenter *presenter = [[self alloc] init];
    
    NSLog(@"greetingPresenter--%p  %p",self,[presenter class]);
    
    return presenter;
}

- (void)dd{
    
}


@end
