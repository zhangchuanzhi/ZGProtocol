//
//  ViewController.m
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "ViewController.h"
#import "ZGLoginView.h"
#import "ZGLoginPresenter.h"
@interface ViewController ()<ZGLoginView>
@property(nonatomic)ZGLoginPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.presenter=[[ZGLoginPresenter alloc]init];
    [self.presenter attachView:self];
    [self.presenter login:@"ZCZ" pwd:@"123456"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [self.presenter detaChView];
    
}
-(void)onLoginReluest:(NSString *)reluest
{
    NSLog(@"登录返回的结果 -- %@",reluest);
}

@end
