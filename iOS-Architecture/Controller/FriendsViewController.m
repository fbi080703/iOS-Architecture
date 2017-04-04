//
//  FriendsViewController.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "FriendsViewController.h"
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*NSString *resource = [[NSBundle mainBundle] pathForResource:@"ico_1024" ofType:@"png"];
    NSData *data = [NSData dataWithContentsOfFile:resource options:0 error:nil];
    
    CFDataRef dataRef = (__bridge CFDataRef)data;
    
    CGImageSourceRef source = CGImageSourceCreateWithData(dataRef, nil);
    
    CGImageRef cgImage = CGImageSourceCreateImageAtIndex(source, 0, nil);
    
    UIImage *image = [UIImage imageWithCGImage:cgImage];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
