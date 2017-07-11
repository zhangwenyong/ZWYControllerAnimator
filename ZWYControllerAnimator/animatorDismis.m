//
//  animatorDismis.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "animatorDismis.h"

@implementation animatorDismis

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.2;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:3.0 * duration / 4.0
                          delay:duration / 4.0
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         fromViewController.view.alpha = 0.0;
                     }
                     completion:^(BOOL finished) {
                         [fromViewController.view removeFromSuperview];
                         [transitionContext completeTransition:YES];
                     }];
    
    [UIView animateWithDuration:2.0 * duration
                          delay:0.0
         usingSpringWithDamping:1.0
          initialSpringVelocity:-15.0
                        options:0
                     animations:^{
                         fromViewController.view.transform = CGAffineTransformMakeScale(0.3, 0.3);
                     }
                     completion:nil];
}

@end
