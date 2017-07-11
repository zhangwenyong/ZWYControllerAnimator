//
//  ZWYActivityViewController.m
//  Me365
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 AMY. All rights reserved.
//

#import "ZWYActivityViewController.h"
#import "animation.h"
#import "topView.h"
#import "titleVIew.h"
#import <SDAutoLayout/SDAutoLayout.h>
#import "bottomView.h"
@interface ZWYActivityViewController ()
@property (nonatomic,strong)animation *ani;
/**
 注释
 */
@property (nonatomic,weak)titleVIew *ZtitleView;

/**
 注释
 */
@property (nonatomic,strong)UIVisualEffectView *vis;

/**
 注释
 */
@property (nonatomic,weak)topView *top;

/**
 注释
 */
@property (nonatomic,strong)bottomView *bootm;
@end

@implementation ZWYActivityViewController

-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        animation *ss = [[animation alloc]init];
        self.transitioningDelegate = ss;
        _ani = ss;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:97/255.0 green:97/255.0 blue:97/255.0 alpha:0.1];
    
    [self addXUHUA];
  
    
    [self addContent];
    // Do any additional setup after loading the view.
}

-(void)addXUHUA
{
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];

    UIVisualEffectView *vis = [[UIVisualEffectView alloc]initWithEffect:effect];
    
    [self.view addSubview:vis];
    vis.alpha = 1.0;
    
    _vis = vis;
    
}
-(void)addContent
{
    
    topView *top = [[topView alloc]init];
    
    [self.view addSubview:top];
    
    _top = top;
    
    titleVIew *title =[[titleVIew alloc]init];
    
    [self.view addSubview:title];
    
    _ZtitleView = title;
    
    bottomView *bootm = [[bottomView alloc]init];
    [self.view addSubview: bootm];
    
    
    _bootm = bootm;
}

-(void)viewDidLayoutSubviews
{
 
    [super viewDidLayoutSubviews];
    
    _vis.sd_layout.topSpaceToView(self.view, 0).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0).bottomSpaceToView(self.view, 0);
    _top.sd_layout.topSpaceToView(self.view, 0).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0);
    
    _ZtitleView.sd_layout.topSpaceToView(_top, 0).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0);
    
    _bootm.sd_layout.topSpaceToView(_ZtitleView, 0).leftSpaceToView(self.view, 0).rightSpaceToView(self.view, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
