//
//  AKBModelFrame.h
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
@class AKBModel;

@interface AKBModelFrame : NSObject

@property (strong, nonatomic) AKBModel *model;
@property (assign, nonatomic) CGFloat totalHeight;


@property (assign, nonatomic, readonly) CGRect titleF;

@property (assign, nonatomic, readonly) CGRect contentF;

@property (assign, nonatomic, readonly) CGRect imageViewF;


@end
