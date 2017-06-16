//
//  ZGHttpUtils.h
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^CallBack) (NSString*result);
@interface ZGHttpUtils : NSObject
+(void)post:(NSString*)name pwd:(NSString*)pwd callBack:(CallBack)callback;
@end
