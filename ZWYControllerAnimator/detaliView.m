//
//  detaliView.m
//  activity
//
//  Created by 张文勇 on 2017/7/12.
//  Copyright © 2017年 张文勇. All rights reserved.
//

#import "detaliView.h"

@interface detaliView()

@property(nonatomic,weak)UIImageView *imageV;
@property(nonatomic,weak)UILabel *labke;

@end

@implementation detaliView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)init
{
    
    self = [super init];
    if(self)
    {
        
        [self addUI];
    }
    return self;
}
-(void)addUI{
    
    UIImageView *imageV = [[UIImageView alloc]init];
    
    imageV.image = [UIImage imageNamed:@"123"];
    
    [self addSubview:imageV];
    UILabel *lable = [[UILabel alloc]init];
    lable.text = @"";
    lable.font = [UIFont systemFontOfSize:13];
    lable.textColor = [UIColor whiteColor];
    [self addSubview:lable];
    _imageV = imageV;
    _labke = lable;
    
}
-(void)setTitle:(NSString *)title
{
    _title =title;
    
    _labke.text = title;
 
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _imageV.sd_layout.leftSpaceToView(self, 20).topSpaceToView(self, 5).widthIs(30).heightEqualToWidth();
    
    _labke.sd_layout.leftSpaceToView(_imageV, 20).rightSpaceToView(self, 20).centerYEqualToView(_imageV).autoHeightRatio(0);
    [self setupAutoHeightWithBottomView:_labke bottomMargin:10];
}
@end
