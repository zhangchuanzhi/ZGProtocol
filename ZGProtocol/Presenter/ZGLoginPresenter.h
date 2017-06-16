//
//  ZGLoginPresenter.h
//  ZGProtocol
//
//  Created by offcn_zcz32036 on 2017/6/16.
//  Copyright © 2017年 offcn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZGLoginView.h"
#import "ZGLoginModel.h"
@interface ZGLoginPresenter : NSObject
//绑定view
-(void)attachView:(id<ZGLoginView>)loginView;
//解除绑定view
//为什么解除绑定？  因为我们的ViewController退出了，正好访问网络，不需要更新UI了
-(void)detaChView;
-(void)login:(NSString*)name pwd:(NSString*)pwd;
@end
