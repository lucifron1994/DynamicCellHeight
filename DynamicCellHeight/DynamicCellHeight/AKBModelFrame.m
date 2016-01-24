//
//  AKBModelFrame.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "AKBModelFrame.h"
#import "AKBModel.h"
#import "FontSizeTool.h"


const int kMargin = 10;

@implementation AKBModelFrame

- (void)setModel:(AKBModel *)model{
    _model = model;
    
    CGFloat cellW = [UIScreen mainScreen].bounds.size.width;
    
    //Title
    CGFloat titleViewX = kMargin;
    CGFloat titleViewY = kMargin;
    CGFloat titleViewW = cellW - kMargin * 2;
//    CGSize titleSize = [model.title sizeWithFont:defaultFont constrainedToSize:CGSizeMake(titleViewW, MAXFLOAT)];
    CGSize titleSize = [FontSizeTool getSizeWithText:model.title boundingRectSize:CGSizeMake(titleViewW, MAXFLOAT)];
    
    _titleF = (CGRect){{titleViewX, titleViewY}, titleSize};
    
    //Content
    CGFloat contentX = kMargin;
    CGFloat contentY = CGRectGetMaxY(_titleF) + kMargin;
    CGFloat contentW = cellW - kMargin * 2;
    CGSize contentSize = [FontSizeTool getSizeWithText:model.content boundingRectSize:CGSizeMake(contentW, MAXFLOAT)];
    _contentF = (CGRect){{contentX, contentY}, contentSize};
    
    //Image
    CGFloat imageX = kMargin;
    CGFloat imageY = CGRectGetMaxY(_contentF) + kMargin;
    CGFloat imageW = cellW - kMargin * 2;
    CGSize imageSize = CGSizeMake(imageW, [self test]*imageW);
    _imageViewF = (CGRect){{imageX, imageY}, imageSize};
    
}

- (CGFloat )test{
    UIImageView *tempImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:_model.imageName]];
    return tempImageView.frame.size.height/tempImageView.frame.size.width;
}


- (CGFloat)totalHeight{
    return CGRectGetMaxY(_imageViewF) + kMargin;
}
@end
