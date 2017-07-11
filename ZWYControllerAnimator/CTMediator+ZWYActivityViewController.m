//
//  CTMediator+ZWYActivityViewController.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "CTMediator+ZWYActivityViewController.h"

@implementation CTMediator (ZWYActivityViewController)
-(UIViewController *)GetZWYActivityViewController
{
    
    return  [self performTarget:@"ZWYActivityViewController" action:@"" params:nil shouldCacheTarget:YES];
    
}
@end
