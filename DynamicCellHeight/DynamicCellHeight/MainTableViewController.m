//
//  MainTableViewController.m
//  DynamicCellHeight
//
//  Created by WangHong on 16/1/23.
//  Copyright © 2016年 WangHong. All rights reserved.
//

#import "MainTableViewController.h"
#import "MyTableViewCell.h"
#import "AKBModel.h"
#import "AKBModelFrame.h"


static NSString *cellID = @"cell";

@interface MainTableViewController ()

@property (strong, nonatomic) NSMutableArray *dataList;


@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:cellID];
    
    self.dataList = [NSMutableArray array];
    
    AKBModelFrame *model1 = [[AKBModelFrame alloc]init];
    model1.model = [AKBModel modelWithTitle:@"nana1" content:@"那娘卡哇伊～～～～～～" imageName:@"nana1"];
    
    AKBModelFrame *model2 = [[AKBModelFrame alloc]init];
    model2.model = [AKBModel modelWithTitle:@"nana2" content:@"owadanananananan" imageName:@"nana2"];
    
    AKBModelFrame *model3 = [[AKBModelFrame alloc]init];
    model3.model = [AKBModel modelWithTitle:@"nana3" content:@"nana3" imageName:@"nana3"];
    
    AKBModelFrame *model4 = [[AKBModelFrame alloc]init];
    model4.model = [AKBModel modelWithTitle:@"prr1" content:@"帕露露哈哈哈哈" imageName:@"prr1"];
    
    AKBModelFrame *model5 = [[AKBModelFrame alloc]init];
    model5.model = [AKBModel modelWithTitle:@"prr2" content:@"盐露露zzzzxxxxxxxx666666666666666666666666666666" imageName:@"prr2"];
    
    AKBModelFrame *model6 = [[AKBModelFrame alloc]init];
    model6.model = [AKBModel modelWithTitle:@"prr3" content:@"Shimazaki Haruka " imageName:@"prr3"];
    
    [self.dataList addObject:model1];
    [self.dataList addObject:model2];
    [self.dataList addObject:model3];
    [self.dataList addObject:model4];
    [self.dataList addObject:model5];
    [self.dataList addObject:model6];

}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    AKBModelFrame *modelFrame = self.dataList[indexPath.row];
    return modelFrame.totalHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyTableViewCell *cell = (MyTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    AKBModelFrame *modelFrame = self.dataList[indexPath.row];
    cell.akbModelFrame = modelFrame;
    
    return cell;
}


@end
