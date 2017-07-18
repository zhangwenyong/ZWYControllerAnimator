//
//  viewmodel.m
//  Pods
//
//  Created by 张文勇 on 2017/7/18.
//
//

#import "viewmodel.h"

@implementation viewmodel

-(instancetype)initWithDic:(NSDictionary *)zwudic
{
    self = [self init];
    
    
    if(self)
    {
        
        [self setDic:zwudic];
        
    }
    
    return self;
}
-(void)setDic:(NSDictionary *)dic
{
    
    _dic = dic;
    
    
    _orperDIc = dic[@"corpDetail"];
    
    _activityDic = dic[@"activeBizVO"];
    
    
}

@end
