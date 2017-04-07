//
//  ApplicationDidEnterBackgroundService.m
//  NSOperation
//
//  Created by 58 on 2017/3/24.
//  Copyright © 2017年 58. All rights reserved.
//

#import "ApplicationDidEnterBackgroundService.h"
#import "UIApplication+BackgroundTask.h"

@implementation ApplicationDidEnterBackgroundService

- (void)applicationDidEnterBackground:(UIApplication *)application{
    
    // Create the background task
    /*__block UIBackgroundTaskIdentifier bgTask;
    bgTask = [[UIApplication sharedApplication]
              beginBackgroundTaskWithName:nil
              expirationHandler:^{
                  
                  // End the task so the OS doesn’t kill the app
                  if (bgTask != UIBackgroundTaskInvalid)
                  {
                      [[UIApplication sharedApplication] endBackgroundTask:bgTask];
                      bgTask = UIBackgroundTaskInvalid;
                  }
              }];

    
     ... Code permitted to execute in background …
     */
    
    UIApplicationBackgroundTask *backgroundTask = [UIApplication backgroundTask];
    
    for (int i = 0; i < 1000000; i++) {
        
         NSLog(@"index --- %d",i);
        [NSThread sleepForTimeInterval:1.0f];
    }
    
    /* End the task
    if (bgTask != UIBackgroundTaskInvalid)
    {
        [[UIApplication sharedApplication] endBackgroundTask:bgTask];
        bgTask = UIBackgroundTaskInvalid;
    }*/
    [backgroundTask invalidate];
}

@end
