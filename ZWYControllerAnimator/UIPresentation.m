//
//  UIPresentation.m
//  present-OC
//
//  Created by 张文勇 on 2017/4/20.
//  Copyright © 2017年 张文勇. All rights reserved.
//

#import "UIPresentation.h"

typedef void (^myblcok)();
@interface UIPresentation ()

{
    UIView *_view;
}
@property (nonatomic,copy)myblcok blcoks;
/**
 注释
 */

@end

@implementation UIPresentation



-(void)presentationTransitionWillBegin
{
    

    UIView *view = [[UIView alloc]init];
    [self.containerView addSubview:view];
    
    CGFloat width = self.containerView.bounds.size.width *2/3;
    
    CGFloat hight = self.containerView.bounds.size.height *2/3;
    
    view.center = self.containerView.center;
    
    view.bounds = CGRectMake(0, 0, width, hight);
    
    view.backgroundColor = [UIColor blackColor];
    view .alpha = 0.3;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(toucc)];
    
    [view addGestureRecognizer:tap];
    [self.presentedViewController.transitionCoordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        view.bounds = self.containerView.bounds;
    } completion:nil];
    
    _view = view;
    
}

-(void)toucc{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}
-(void)dismissalTransitionWillBegin
{
    
    [self.presentedViewController.transitionCoordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext>  _Nonnull context) {
        _view.alpha = 0;
    } completion:nil];
    
}



-(void)containerViewWillLayoutSubviews
{
    self.presentedView.center = self.containerView.center;
    CGFloat width = self.containerView.bounds.size.width *2/3;
    
    CGFloat hight = self.containerView.bounds.size.height *2/3;

    self.presentedView.bounds = CGRectMake(0, 0, width, hight);
    
    
}
@end
