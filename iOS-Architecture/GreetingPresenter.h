//
//  GreetingPresenter.h
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol GreetingView <NSObject>

- (void)setGreetingWith:(NSString *)greeting;

@end

@protocol GreetingViewPresenter <NSObject>

- (instancetype)init:(id<GreetingView>)view person:(Person *)person;

- (void)showGreeting;

@end

@interface GreetingPresenter : NSObject<GreetingViewPresenter>

@property (nonatomic, strong) id<GreetingView> view;
@property (nonatomic, strong) Person           *person;

@end
