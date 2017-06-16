//
//  ZGLoginModel.h
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZGHttpUtils.h"
typedef void(^CallBack) (NSString*result);
@interface ZGLoginModel : NSObject
-(void)loginName:(NSString *)name pwd:(NSString *)pwd callback:(CallBack)callback;
@end
