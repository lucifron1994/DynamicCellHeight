//
//  AKBModel.h
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AKBModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *imageName;


+ (instancetype)modelWithTitle:(NSString *)title content:(NSString *)content imageName:(NSString *)imageName;


@end
