//
//  AKBModel.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "AKBModel.h"

@implementation AKBModel

+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content imageName:(NSString *)imageName{
    AKBModel *model = [[AKBModel alloc]init];
    model.title = title;
    model.content = content;
    model.imageName = imageName;
    return model;
}

@end
