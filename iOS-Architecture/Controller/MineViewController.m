//
//  MineViewController.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.

#ifdef DEBUG
#define TitleName @"测试版本"
#define sociaURL  @"weibo.com"
#elif BETA
#define TitleName @"BETA版本"
#else
#define TitleName @"正式版本"
#endif
//

#import "MineViewController.h"

@interface MineViewController ()

@property (strong, nonatomic, nullable) dispatch_queue_t barrierQueue;

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
     _barrierQueue = dispatch_queue_create("com.hackemist.SDWebImageDownloaderBarrierQueue", DISPATCH_QUEUE_CONCURRENT);
    
     dispatch_barrier_async(_barrierQueue, ^{
         
         [NSThread sleepForTimeInterval:2.0];
         
         NSLog(@"1---%@",[NSThread currentThread]);
     });
    dispatch_async(_barrierQueue, ^{
        
        NSLog(@"dffddfddddfdddd");
    });
    dispatch_barrier_async(_barrierQueue, ^{
        
        //NSLog(@"2");
        NSLog(@"2---%@",[NSThread currentThread]);
        
    });
    dispatch_barrier_async(_barrierQueue, ^{
        
        NSLog(@"3---%@",[NSThread currentThread]);
        [NSThread sleepForTimeInterval:2.0f];
    });
    dispatch_barrier_async(_barrierQueue, ^{
        
        //NSLog(@"4");
        NSLog(@"4---%@",[NSThread currentThread]);
    });
    
    self.title = [self readValueFromConfigurationFile];
}

- (NSString *) readValueFromConfigurationFile {
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"configuration" ofType:@"plist"];
    NSDictionary *config = [NSDictionary dictionaryWithContentsOfFile:path];
    return config[@"TitleName"];
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
