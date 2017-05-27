//
//  WeChatViewController.m
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "WeChatViewController.h"
#import "GreetingViewController.h"
#import "Person.h"

#import "GreetingPresenter.h"

#import "GreetingViewModel.h"

#import "HHRouter.h"
#import "Person_Internal.h"

#import "MyClass.h"


@interface WeChatViewController ()

@end

@implementation WeChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *jumpButton = [UIButton buttonWithType:UIButtonTypeCustom];
    jumpButton.backgroundColor = [UIColor redColor];
    jumpButton.frame = CGRectMake(100.0f, 100.0f, 50.0f, 50.0f);
    [jumpButton addTarget:self action:@selector(onJumpButtonTouch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:jumpButton];
    
    
    MyClass *myClass = [[MyClass alloc] init];
    [myClass printName];
}

- (void)onJumpButtonTouch{
    
    //MVC
    
    Person *person = [[Person alloc] init];
    person.firstName = @"Longwang";
    person.lastName = @"Wu";
    person.creditCardPassword = @"dfdd";
    //GreetingViewController *greetingViewController = [[GreetingViewController alloc] init];
    //greetingViewController.person = person;
    
    //mvp
    // Assembling of MVP
    //let model = Person(firstName: "David", lastName: "Blaine")
    //let view = GreetingViewController()
    //let presenter = GreetingPresenter(view: view, person: model)
    //view.presenter = presenter
    
    //GreetingPresenter *presenter = [[GreetingPresenter alloc] init:greetingViewController person:person];
    //greetingViewController.presenter = presenter;
    
    GreetingViewController *greetingViewController = (GreetingViewController *)[[HHRouter shared] matchController:@"/greeting/1/"];
    
    //MVVM
    
    GreetingViewModel *viewModel = [[GreetingViewModel alloc] init:person];
    greetingViewController.viewModel = viewModel;
    
    self.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:greetingViewController animated:YES];
    self.hidesBottomBarWhenPushed = NO;
    
    
    //
    
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
