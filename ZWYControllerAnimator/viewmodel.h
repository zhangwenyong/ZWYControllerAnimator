//
//  viewmodel.h
//  Pods
//
//  Created by 张文勇 on 2017/7/18.
//
//

#import <Foundation/Foundation.h>

@interface viewmodel : NSObject




-(instancetype)initWithDic:(NSDictionary *)zwudic;
/**
 注释
 */
@property (nonatomic,strong)NSDictionary  *dic;

/**
 注释  公司的图片地址 公司名称
 */
@property (nonatomic,copy,readonly)NSDictionary *orperDIc;
/**
 注释 公司的活动详情
 */
@property (nonatomic,readonly,strong)NSDictionary *activityDic;

@end
