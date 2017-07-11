//
//  animator.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "animator.h"

@implementation animator
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.3;
}
// This method can only  be a nop if the transition is interactive and not a percentDriven interactive transition.
- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    CGRect frame = containerView.bounds;
    frame = UIEdgeInsetsInsetRect(frame, UIEdgeInsetsMake(40.0, 40.0, 200.0, 40.0));
    
    toViewController.view.frame = frame;
    
    [containerView addSubview:toViewController.view];
    
    toViewController.view.alpha = 0.0;
    toViewController.view.transform = CGAffineTransformMakeScale(0.3, 0.3);
    
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    
    [UIView animateWithDuration:duration / 2.0 animations:^{
        toViewController.view.alpha = 1.0;
    }];
    
    CGFloat damping = 0.55;
    
    [UIView animateWithDuration:duration delay:0.0 usingSpringWithDamping:damping initialSpringVelocity:1.0 / damping options:0 animations:^{
        toViewController.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}


@end
