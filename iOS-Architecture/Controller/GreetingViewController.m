//
//  GreetingViewController.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "GreetingViewController.h"

@interface GreetingViewController ()

@property (nonatomic, strong) UIButton *showGreetingButton;
@property (nonatomic, strong) UILabel  *greetingLabel;

@end

@implementation GreetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    _showGreetingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _showGreetingButton.backgroundColor = [UIColor greenColor];
    _showGreetingButton.frame = CGRectMake(100.0f, 100.0f, 50.0f, 50.0f);
    //[_showGreetingButton addTarget:self action:@selector(didTapButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_showGreetingButton];
    
    _greetingLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 200.0f, 200.0f, 50.0f)];
    [self.view addSubview:_greetingLabel];
    
    
    //mvvm
    [_showGreetingButton addTarget:_viewModel action:@selector(showGreeting) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event response

- (void)didTapButton{
    
    //MVC
    //NSString *greeting = [NSString stringWithFormat:@"Hello %@ %@",self.person.firstName,self.person.lastName];
    //self.greetingLabel.text = greeting;
    
    //MVP
    [self.presenter showGreeting];
    
}

//mvp
- (void)setGreetingWith:(NSString *)greeting{
    
    self.greetingLabel.text = greeting;
}

//MVVM
- (void)setViewModel:(GreetingViewModel *)viewModel{
    
    _viewModel = viewModel;
    
    _viewModel.greetingDidChange = ^(GreetingViewModel *target){
        
        self.greetingLabel.text = target.greeting;
    };
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
