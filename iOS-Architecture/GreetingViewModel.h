//
//  GreetingViewModel.h
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol GreetingViewModelProtocol <NSObject>

@property (nonatomic, copy, readonly)   NSString *greeting;
@property (nonatomic, copy, readwrite)  void (^greetingDidChange)(id);
- (instancetype)init:(Person *)person;
- (void)showGreeting;

@end

@interface GreetingViewModel : NSObject<GreetingViewModelProtocol>

@end
