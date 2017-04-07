//
//  UIApplication+BackgroundTask.h
//  NSOperation
//
//  Created by 58 on 2017/3/24.
//  Copyright © 2017年 58. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplicationBackgroundTask : NSObject

/** A unique identifier for the background task */
@property (nonatomic, copy, readonly) NSString *identifier;

/** Returns whether or not the background task is still active, or has been invalidated */
@property (nonatomic, assign, readonly) BOOL isActive;

- (instancetype)init __attribute__((unavailable("Use the UIApplication category methods")));

/** Invalidates the background task if it has not already been invalidated */
- (void)invalidate;

@end

@interface UIApplication (BackgroundTask)

/** Create and begin a new background task */
+ (UIApplicationBackgroundTask *)backgroundTask;

/** Create and begin a new background task, with an optional block to run upon the tasks expiration */
+ (UIApplicationBackgroundTask *)backgroundTaskWithExpiration:(void(^)())expiration;

@end
