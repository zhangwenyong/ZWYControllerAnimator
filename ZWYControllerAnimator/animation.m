//
//  animation.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "animation.h"
#import "animator.h"
#import "animatorDismis.h"
#import "UIPresentation.h"
@implementation animation


- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    
    return [[animator alloc]init];
    
    
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    
    
    return [[animatorDismis alloc]init];
}


- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source NS_AVAILABLE_IOS(8_0){
     UIPresentation *dd = [[UIPresentation alloc]initWithPresentedViewController:presented presentingViewController:presenting ];
    return dd;
    
}

@end
