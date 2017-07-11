//
//  Target_ZWYActivityViewController.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "Target_ZWYActivityViewController.h"
#import "ZWYActivityViewController.h"

@implementation Target_ZWYActivityViewController
-(UIViewController *)Action_ZWYActivityViewController:(NSDictionary *)dic
{
    
    ZWYActivityViewController *contre = [[ZWYActivityViewController alloc]init];
    contre.modalPresentationStyle = UIModalPresentationCustom;
    
    return contre;
    
    
}
@end
