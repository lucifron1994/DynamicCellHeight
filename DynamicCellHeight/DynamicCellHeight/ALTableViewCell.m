//
//  ALTableViewCell.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/24.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "ALTableViewCell.h"
#import "AKBModel.h"
#import "UIImage+Resize.h"

@implementation ALTableViewCell


- (void)setModel:(AKBModel *)model{
    _model = model;
    
    self.titleLabel.text = model.title;
    self.contentLabel.text = model.content;
    
    CGFloat width = [UIScreen mainScreen].bounds.size.width;//self.frame.size.width;
    
    UIImage *image = [UIImage imageNamed:model.imageName];
    self.myImageView.image = [image resizeToSize:CGSizeMake(width, width*[self getImageRatio])];
//    NSLog(@"Frame %@",NSStringFromCGRect(self.imageView.f))
    self.imageHeightConstraint.constant = width*[self getImageRatio];

}


- (CGFloat)getImageRatio{
    UIImageView *tempImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:_model.imageName]];
    return (CGFloat)tempImageView.frame.size.height/tempImageView.frame.size.width;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
