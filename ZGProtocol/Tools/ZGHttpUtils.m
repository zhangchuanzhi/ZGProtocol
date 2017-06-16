//
//  ZGHttpUtils.m
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import "ZGHttpUtils.h"

@implementation ZGHttpUtils
+(void)post:(NSString *)name pwd:(NSString *)pwd callBack:(CallBack)callback
{
    NSURL *url=[NSURL URLWithString:@""];
    NSMutableURLRequest *request=[[NSMutableURLRequest alloc]initWithURL:url];
    request.HTTPMethod=@"POST";
    NSString*params=[NSString stringWithFormat:@"username=%@&password=%@",name,pwd];
    request.HTTPMethod=params;
    request.HTTPBody=[params dataUsingEncoding:NSUTF8StringEncoding];
    NSURLSession *session=[NSURLSession sharedSession];
    NSURLSessionDataTask *task=[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            callback(@"233");
        }else
        {
            NSString *result=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            callback(result);
        }
    }];
    [task resume];
}
@end
