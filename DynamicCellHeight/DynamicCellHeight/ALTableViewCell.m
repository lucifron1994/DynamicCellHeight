//
//  ALTableViewCell.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/24.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "ALTableViewCell.h"
#import "AKBModel.h"

@implementation ALTableViewCell


- (void)setModel:(AKBModel *)model{
    _model = model;
    
    self.titleLabel.text = model.title;
    self.contentLabel.text = model.content;
    
    //这里不能使用self的Rect
    CGFloat width = [UIScreen mainScreen].bounds.size.width; //self.frame.size.width   XXX
    
//    UIImage *image = [UIImage imageNamed:model.imageName];
//    self.myImageView.image = [image resizeToSize:CGSizeMake(width, width*[self getImageRatio])];
    
    self.myImageView.image = [UIImage imageNamed:model.imageName];
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
