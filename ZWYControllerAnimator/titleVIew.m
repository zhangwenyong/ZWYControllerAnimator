//
//  titleVIew.m
//  activity
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 张文勇. All rights reserved.
//

#import "titleVIew.h"
#import "detaliView.h"
#import <SDAutoLayout/SDAutoLayout.h>
@interface titleVIew()


@property(nonatomic,strong)NSArray *arr;


@end
@implementation titleVIew

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init
{
    self = [super init];
    
    if(self){
        
        _arr=@[@"满50减20,满80减30",@"满100包邮",@"等娃获得卡好看的卡危机恶化的卡号胃口哈我科技打电话撒谎是坎大哈开始大会"];

   
        [self addUI];
        
    }
    
    return self;
}

-(void)addUI{
    
    
    NSMutableArray *tem = [NSMutableArray arrayWithCapacity:0];
    
    for(int i=0;i<_arr.count;i++)
    {
        
        detaliView *view = [[detaliView alloc]init];
   
        view.title = _arr[i];
        [self addSubview:view];
        
        [tem addObject:view];
    }
    
    [self setupAutoWidthFlowItems:[tem copy] withPerRowItemsCount:1 verticalMargin:5 horizontalMargin:0 verticalEdgeInset:5 horizontalEdgeInset:5];
    
    UIView *view1 = [[UIView alloc]init];
    
    [self addSubview:view1];
    
    view1.backgroundColor =[UIColor whiteColor];
    view1.sd_layout.bottomSpaceToView(self, 0).leftSpaceToView(self, 30).rightSpaceToView(self, 30).heightIs(0.5);
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
}
@end
