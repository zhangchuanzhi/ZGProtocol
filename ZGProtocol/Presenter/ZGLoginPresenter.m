//
//  ZGLoginPresenter.m
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "ZGLoginPresenter.h"

@interface ZGLoginPresenter ()
@property(nonatomic)ZGLoginModel *model;
@property(nonatomic)id<ZGLoginView>loginView;
@end
@implementation ZGLoginPresenter
- (instancetype)init
{
    self = [super init];
    if (self) {
        _model=[[ZGLoginModel alloc]init];
    }
    return self;
}
-(void)attachView:(id<ZGLoginView>)loginView
{
    _loginView=loginView;
}
-(void)detaChView
{
    _loginView=nil;
}
-(void)login:(NSString *)name pwd:(NSString *)pwd
{
    [_model loginName:name pwd:pwd callback:^(NSString *result) {
        if (_loginView!=nil) {
            [_loginView onLoginReluest:result];
        }
    }];
}
@end
