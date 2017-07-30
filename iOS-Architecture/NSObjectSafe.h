//
//  NSObjectSafe.h
//  iOS-Architecture
//
//  Created by Wu,Longwang on 2017/7/30.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for NSObjectSafe.
FOUNDATION_EXPORT double NSObjectSafeVersionNumber;

//! Project version string for NSObjectSafe.
FOUNDATION_EXPORT const unsigned char NSObjectSafeVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <NSObjectSafe/PublicHeader.h>

@interface NSObject(Swizzle)
+ (void)swizzleClassMethod:(SEL)origSelector withMethod:(SEL)newSelector;
- (void)swizzleInstanceMethod:(SEL)origSelector withMethod:(SEL)newSelector;
@end
