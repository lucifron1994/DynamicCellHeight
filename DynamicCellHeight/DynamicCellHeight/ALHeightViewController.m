//
//  ALHeightViewController.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/24.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "ALHeightViewController.h"
#import "ALTableViewCell.h"
#import "AKBModel.h"

static NSString *cellID = @"cell";

@interface ALHeightViewController ()

@property (strong, nonatomic) NSMutableArray *dataList;

@property (strong, nonatomic) ALTableViewCell *tableViewCell;


@end

@implementation ALHeightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"ALTableViewCell" bundle:nil] forCellReuseIdentifier:cellID];
    
    AKBModel *model1 = [AKBModel modelWithTitle:@"nana1" content:@"那娘卡哇伊～～～～～～" imageName:@"nana1"];
    AKBModel *model2 = [AKBModel modelWithTitle:@"nana2" content:@"リクエストアワー2日目終わり今日も楽しかったな～こみは「大声ダイヤモンド」「僕たちは戦わない」「チャンスの順番」を歌ったよこみのこと見つけられたかな…雛壇では愛美とかせいちゃんとかなーにゃとか、15期と盛り上がれてすごい楽しかったみんな素敵だけど、でもやっぱり\n同期が歌ってる所を観るのが1番楽しいなそれに同期が活躍してる姿を観て嬉しくなる " imageName:@"nana2"];
    AKBModel *model3 = [AKBModel modelWithTitle:@"nana3" content:@"nana3" imageName:@"nana3"];
    AKBModel *model4 = [AKBModel modelWithTitle:@"prr1" content:@"帕露露哈哈哈哈" imageName:@"prr1"];
    AKBModel *model5 = [AKBModel modelWithTitle:@"prr2" content:@"盐露露zzzzxxxxxxxx666666666666666666666666666666" imageName:@"prr2"];
    AKBModel *model6 = [AKBModel modelWithTitle:@"prr3" content:@"Shimazaki Haruka" imageName:@"prr3"];
    
    self.dataList = [NSMutableArray array];
    
    [self.dataList addObject:model1];
    [self.dataList addObject:model2];
    [self.dataList addObject:model3];
    [self.dataList addObject:model4];
    [self.dataList addObject:model5];
    [self.dataList addObject:model6];
    
//不需要设置了！
//    self.tableView.rowHeight = UITableViewAutomaticDimension;]
    
//    self.tableViewCell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    ALTableViewCell *cell = self.tableViewCell;
//    cell.model = self.dataList[indexPath.row];
    
//    CGFloat height = [self.tableViewCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height+1;
//    NSLog(@"Estimated Height %f",height);
    return 200;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ALTableViewCell *cell = (ALTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    AKBModel *model = self.dataList[indexPath.row];
    cell.model = model;
    
    return cell;
}

@end
