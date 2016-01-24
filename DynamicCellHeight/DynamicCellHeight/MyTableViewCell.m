//
//  MyTableViewCell.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "MyTableViewCell.h"
#import "AKBModelFrame.h"
#import "AKBModel.h"
#import "FontSizeTool.h"


const int kMarginWidth = 10;

@interface MyTableViewCell ()

@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *contentLabel;
@property (strong, nonatomic) UIImageView *akbImageView;


@end

@implementation MyTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


#pragma mark - UI Setting
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setAkbModelFrame:(AKBModelFrame *)akbModelFrame{
    _akbModelFrame = akbModelFrame;
    [self setUI];
}

- (void)setUI{
    //防止重用错误
    self.titleLabel.text = @"";
    self.contentLabel.text = @"";
    self.akbImageView.image = nil;
    
    UIFont *defaultFont = [UIFont systemFontOfSize:[FontSizeTool systemFontSize]];

    self.titleLabel = [[UILabel alloc]init];
    self.titleLabel.font = defaultFont;
    self.titleLabel.text = self.akbModelFrame.model.title;
    self.titleLabel.frame = _akbModelFrame.titleF;
    [self addSubview:self.titleLabel];
    
    self.contentLabel = [[UILabel alloc]init];
    self.contentLabel.font = defaultFont;
    self.contentLabel.numberOfLines = 0;
    self.contentLabel.text = self.akbModelFrame.model.content;
    self.contentLabel.frame = _akbModelFrame.contentF;
    [self addSubview:self.contentLabel];
    
    
    self.akbImageView = [[UIImageView alloc]init];
    self.akbImageView.contentMode = UIViewContentModeScaleAspectFit;
    self.akbImageView.image = [UIImage imageNamed:self.akbModelFrame.model.imageName];
    self.akbImageView.frame = _akbModelFrame.imageViewF;
    [self addSubview:self.akbImageView];
    
}


@end
