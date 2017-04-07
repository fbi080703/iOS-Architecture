//
//  LoggerApplicationService.m
//  NSOperation
//
//  Created by 58 on 2017/3/23.
//  Copyright © 2017年 58. All rights reserved.
//

#import "LoggerApplicationService.h"

@implementation LoggerApplicationService

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    NSLog(@"LoggerApplicationService");
    
    return YES;
}

- (void)applicationDidEnterBackground:(UIApplication *)application{
    
    NSLog(@"applicationDidEnterBackground");
}

@end
