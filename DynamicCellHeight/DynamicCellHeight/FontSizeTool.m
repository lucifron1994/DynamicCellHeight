//
//  FontSizeTool.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "FontSizeTool.h"

const int fontSize = 13;

@implementation FontSizeTool

+ (CGSize)getSizeWithText:(NSString *)text boundingRectSize:(CGSize)boundSize{
    
    NSStringDrawingOptions options = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    NSDictionary *attribute = @{NSFontAttributeName : [UIFont systemFontOfSize:fontSize]};
    CGSize size = [text boundingRectWithSize:boundSize options:options attributes:attribute context:nil].size;
    
    return size;
}

+ (int)systemFontSize{
    return fontSize;
}

@end
