//
//  UIApplication+BackgroundTask.m
//  NSOperation
//
//  Created by 58 on 2017/3/24.
//  Copyright © 2017年 58. All rights reserved.
//

#import "UIApplication+BackgroundTask.h"


@interface UIApplicationBackgroundTask ()

@property (nonatomic, copy, readwrite) NSString *identifier;
@property (nonatomic, assign, readwrite) UIBackgroundTaskIdentifier bgTask;

@end

@implementation UIApplicationBackgroundTask

- (instancetype)initWithExpiration:(void(^)())expiration{
    
    self = [super init];
    if (self){
        self.identifier = [[NSUUID UUID] UUIDString];
        __weak typeof(self) weakSelf = self;
        self.bgTask = [[UIApplication sharedApplication]
                   beginBackgroundTaskWithName:self.identifier
                   expirationHandler:^{
#ifdef DEBUG
                       NSLog(@"Background task expired: %@", weakSelf);
#endif
                       if (expiration){
                           expiration();
                       }
                       if (weakSelf.bgTask != UIBackgroundTaskInvalid){
                           [[UIApplication sharedApplication] endBackgroundTask:weakSelf.bgTask];
                           weakSelf.bgTask = UIBackgroundTaskInvalid;
                       }
                }];
    }
    return self;
}

- (void)dealloc{
    
    [self invalidate];
}

- (void)invalidate{
    
    if (self.bgTask != UIBackgroundTaskInvalid){
        [[UIApplication sharedApplication] endBackgroundTask:self.bgTask];
        self.bgTask = UIBackgroundTaskInvalid;
    }
}

- (BOOL)isActive{
    
    return self.bgTask != UIBackgroundTaskInvalid;
}

@end

@implementation UIApplication (BackgroundTask)

#pragma mark - Category

+ (UIApplicationBackgroundTask *)backgroundTask
{
    return [self backgroundTaskWithExpiration:nil];
}

+ (UIApplicationBackgroundTask *)backgroundTaskWithExpiration:(void (^)())expiration
{
    return [[UIApplicationBackgroundTask alloc] initWithExpiration:expiration];
}


@end
