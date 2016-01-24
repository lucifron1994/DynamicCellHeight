//
//  UIImage+Resize.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/24.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "UIImage+Resize.h"

@implementation UIImage (Resize)

- (UIImage *)resizeToSize:(CGSize)size{
    
    UIGraphicsBeginImageContext(size);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end
