//
//  AppDelegate.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "AppDelegate.h"
//#import "HHRouter.h"
#import <HHRouter.h>
#import "GreetingViewController.h"


#import "LoggerApplicationService.h"

#import "ApplicationDidEnterBackgroundService.h"

@interface AppDelegate ()

@property (nonatomic, strong) LoggerApplicationService *loggerService;
@property (nonatomic, strong) ApplicationDidEnterBackgroundService *backgroundService;

@end

//[[HHRouter shared] map:@"/greeting/:greetId/" toControllerClass:[GreetingViewController class]];

@implementation AppDelegate

- (NSArray<ApplicationService> *)services{
    
    return (NSArray<ApplicationService> *)@[self.loggerService,self.backgroundService];
}

#pragma mark - getter and setter

- (LoggerApplicationService *)loggerService{
    
    if (!_loggerService) {
        
        _loggerService = [[LoggerApplicationService alloc] init];
    }
    return _loggerService;
}

- (ApplicationDidEnterBackgroundService *)backgroundService{
    
    if (!_backgroundService) {
        
        _backgroundService = [[ApplicationDidEnterBackgroundService alloc] init];
    }
    return _backgroundService;
}

@end
