//
//  topView.m
//  activity
//
//  Created by 张文勇 on 2017/7/11.
//  Copyright © 2017年 张文勇. All rights reserved.
//

#import "topView.h"

@interface topView()

@property(nonatomic,weak)UIImageView*imageV;

@property(nonatomic,weak)UILabel*lableV;
/**
 注释
 */
@property (nonatomic,strong)UIView *bottom;


@end

@implementation topView

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
    if(self)
    {
        self.backgroundColor = [UIColor clearColor];
        
        [self addUI];
    }
    
    return self;
    
}

-(void)addUI{
    
    UIImageView  *imagev = [[UIImageView alloc]init];
    [self addSubview:imagev];
    _imageV = imagev;
    imagev.image = [UIImage imageNamed:@"123"];
    UILabel *lbale = [[UILabel alloc]init];
    lbale.text = @"上海爱姆意机电有限公司";
    lbale.textColor = [UIColor whiteColor];
    lbale.font = [UIFont systemFontOfSize:15];
    
    lbale.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lbale];
    
    _lableV = lbale;

    UIView *view =[[ UIView alloc]init];
    
    [self addSubview:view];
    view.backgroundColor = [UIColor whiteColor];
    _bottom = view;
    
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    _imageV.sd_layout.centerXEqualToView(self).widthIs(80).heightEqualToWidth().topSpaceToView(self, 30);
    _imageV.sd_cornerRadiusFromWidthRatio = @0.5;
    _lableV.sd_layout.topSpaceToView(_imageV, 30).leftSpaceToView(self, 30).rightSpaceToView(self, 30).autoHeightRatio(0);
    _bottom.sd_layout.topSpaceToView(_lableV, 20).leftSpaceToView(self, 30).rightSpaceToView(self, 30).heightIs(0.5);
    
    [self setupAutoHeightWithBottomView:_bottom bottomMargin:0];

}
@end
