//
//  FontSizeTool.h
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface FontSizeTool : NSObject

+ (CGSize)getSizeWithText:(NSString *)text boundingRectSize:(CGSize)boundSize;

+ (int)systemFontSize;

@end
