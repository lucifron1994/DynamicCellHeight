//
//  ALTableViewCell.h
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/24.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AKBModel;

@interface ALTableViewCell : UITableViewCell

@property (strong, nonatomic) AKBModel *model;


@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageHeightConstraint;

@end
