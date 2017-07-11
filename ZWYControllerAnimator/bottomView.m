//
//  bottomView.m
//  activity
//
//  Created by 张文勇 on 2017/7/12.
//  Copyright © 2017年 张文勇. All rights reserved.
//

#import "bottomView.h"

@interface bottomView()

@property(nonatomic,weak)UILabel *title;

@property (nonatomic,weak)UILabel *content;

@end

@implementation bottomView

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
    
    if(self )
    {
        
        [self addUI];
        
    }
    
    return self;
}

-(void)addUI
{
    UILabel *lable = [[UILabel alloc]init];
    lable.text   = @"商家公告";
    lable.font = [UIFont systemFontOfSize:17];
    lable.textColor = [UIColor whiteColor];
    lable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lable];
    _title = lable;
    UILabel *lbale2 = [[UILabel alloc]init];
    [self addSubview:lbale2];
    lbale2.font = [UIFont systemFontOfSize:13];
    
    lbale2.textColor = [UIColor whiteColor];
    lbale2.textAlignment = NSTextAlignmentCenter;
    lbale2.text = @"的危害大客户卡位乏味和福啊我 i 俄 u 发哈无法 i 俄 u 啊我 iu 恶法 i 我扶额盖屋";
    _content = lbale2;
    
    
}
-(void)layoutSubviews
{
    
    [super layoutSubviews];
    
    
    _title.sd_layout.topSpaceToView(self, 15).centerXEqualToView(self).widthIs(80).autoHeightRatio(0);
    
    _content.sd_layout.topSpaceToView(_title, 15).centerXEqualToView(self).leftSpaceToView(self, 30).rightSpaceToView(self, 30).autoHeightRatio(0);
    
    
    
    
    
}
@end
