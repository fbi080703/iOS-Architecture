//
//  GreetingViewController.h
//  iOS-Architecture
//
//  Created by Apple on 2017/3/25.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

#import "GreetingPresenter.h"

#import "GreetingViewModel.h"

@interface GreetingViewController : UIViewController<GreetingView>

@property (nonatomic, strong)  Person *person;

//MVP
@property (nonatomic, strong)  GreetingPresenter *presenter;

//MVVM
@property(nonatomic, strong)   GreetingViewModel *viewModel;

@end
