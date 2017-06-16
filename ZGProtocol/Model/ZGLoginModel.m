//
//  ZGLoginModel.m
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "ZGLoginModel.h"

@implementation ZGLoginModel
-(void)loginName:(NSString *)name pwd:(NSString *)pwd callback:(CallBack)callback
{
    [ZGHttpUtils post:name pwd:pwd callBack:^(NSString *result) {
        callback(result);
    }];
}
@end
