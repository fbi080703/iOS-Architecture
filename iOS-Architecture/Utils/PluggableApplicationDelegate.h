//
//  PluggableApplicationDelegate.h
//  NSOperation
//
//  Created by 58 on 2017/3/23.
//  Copyright © 2017年 58. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ApplicationService <UIApplicationDelegate>


@end

@interface PluggableApplicationDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, strong) NSArray<ApplicationService> *services;
@property (nonatomic, strong) UIWindow *window;

@end
