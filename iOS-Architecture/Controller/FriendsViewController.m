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
#import "GreetingPresenter.h"

#import "GreetingViewModel.h"

#import <objc/runtime.h>

@interface FriendsViewController ()

@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) CALayer *colorLayer;

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
    
    //GreetingPresenter *presenter = [[GreetingPresenter alloc] initWithIndex:0];
    //
    //presenter = [GreetingPresenter greetingPresenter];
    
    //GreetingViewModel *viewModel1 = [[GreetingViewModel alloc] init];
    
    //GreetingViewModel *viewModel2 = [[GreetingViewModel alloc] init];
    
    //NSLog(@"%p--%p---%p",viewModel1,[viewModel1 class],object_getClass([viewModel1 class]));
    
    //NSLog(@"%p--%p---%p",viewModel2,[viewModel2 class],object_getClass([viewModel2 class]));
    
    //dispatch_queue_t  queue = dispatch_queue_create("com.wulongwang.demo", 0);
    //
    //dispatch_async(queue, ^(void) {
    //    
    //    NSLog(@"%@",[NSThread currentThread]);
    //    dispatch_sync(dispatch_get_main_queue(), ^{
    //        
    //        NSLog(@"--%@",[NSThread currentThread]);
    //    });
    //});
    
    //dispatch_group_t group = dispatch_group_create();
    //dispatch_group_async(group, dispatch_queue_create("com.dispatch.test", DISPATCH_QUEUE_CONCURRENT), ^{
    //     dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第一步网络请求完成");
    //         dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //});
    //
    //dispatch_group_async(group, dispatch_queue_create("com.dispatch.test", DISPATCH_QUEUE_CONCURRENT), ^{
    //     dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.github.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第二步网络请求完成");
    //         dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //});
    //
    //dispatch_group_notify(group, dispatch_get_main_queue(), ^{
    //    NSLog(@"刷新界面等在主线程的操作");
    //});
    
    //dispatch_queue_t queue = dispatch_queue_create("com.wulongwang.demo", DISPATCH_QUEUE_CONCURRENT);
    //
    //dispatch_async(queue, ^{
    //    NSLog(@"--%@",[NSThread currentThread]);
    //    //dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第一步网络请求完成");
    //        //[NSThread sleepForTimeInterval:10];
    //         //dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //    //dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //
    //});
    //
    //dispatch_async(queue, ^{
    //    NSLog(@"--%@",[NSThread currentThread]);
    //    //dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.github.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第二步网络请求完成");
    //         //dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //    //dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //    
    //});
    
    //dispatch_queue_t queue = dispatch_queue_create("com.wulongwang.demo", DISPATCH_QUEUE_CONCURRENT);
    //
    //NSLog(@"刷新界面等在主线程的操作");
    //
    //dispatch_sync(queue, ^{
    //    NSLog(@"--%@",[NSThread currentThread]);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第一步网络请求完成");
    //        //dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //});
    //
    //dispatch_sync(queue, ^{
    //    NSLog(@"--%@",[NSThread currentThread]);
    //    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.github.com"]];
    //    NSURLSessionDownloadTask *task = [[NSURLSession sharedSession] downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //        // 请求完成，可以通知界面刷新界面等操作
    //        NSLog(@"第二步网络请求完成");
    //         //dispatch_semaphore_signal(sema);
    //    }];
    //    [task resume];
    //    // 以下还要进行一些其他的耗时操作
    //    NSLog(@"耗时操作继续进行");
    //    //dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    //});
    
    
    //UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    //view.backgroundColor = [UIColor redColor];
    //[self.view addSubview:view];
    //self.bgView = view;
    //
    //UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 80, 50, 50)];
    //button.backgroundColor = [UIColor grayColor];
    //[button addTarget:self action:@selector(btnChangeFrame) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:button];
    
    self.colorLayer = [CALayer layer];
    self.colorLayer.frame = CGRectMake(0, 0, 100, 100);
    self.colorLayer.position = CGPointMake(self.view.bounds.size.width / 2, self.view.bounds.size.height / 2);
    self.colorLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.colorLayer];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btnChangeFrame{
    
    [UIView animateWithDuration:5.0 animations:^{
        self.bgView.frame = CGRectMake(100, 100, 50, 50);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    
    if (([self.colorLayer.presentationLayer hitTest:point])) {
        
        CGFloat red = arc4random() / (CGFloat)INT_MAX;
        CGFloat green = arc4random() / (CGFloat)INT_MAX;
        CGFloat blue = arc4random() / (CGFloat)INT_MAX;
        self.colorLayer.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0].CGColor;
    }else{
        [CATransaction begin];
        [CATransaction setAnimationDuration:4.0];
        self.colorLayer.position = point;
        [CATransaction commit];
    }
}

@end
