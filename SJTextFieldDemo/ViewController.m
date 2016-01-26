//
//  ViewController.m
//  SJTextFieldDemo
//
//  Created by SPIREJ on 16/1/26.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "ViewController.h"

#import "SJFirstEffectViewController.h"
#import "SJSecondEffectViewController.h"

@interface ViewController ()

#define cellHeight 70

#define kLabelTitles @[@"1- 第一种输入效果",@"2- 第二种输入效果",@"3- TableView右侧的索引栏示例", @"4- 编辑 - 删除操作",@"5- 编辑 - 删除、排序操作",@"6- tabHeader下拉拉伸上滑显示navigation"]
#define kDetialLabelText @[@"SJBasicTableView",@"SJCustomCellVC",@"SJTabSearchVC",@"SJDeleteTabCellVC", @"SJTabSortController",@"SJTabHeaderController"]

@end
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, copy)NSMutableArray *labelTextArray;
@property(nonatomic, copy)NSMutableArray *DetailLabelTextArray;

@end

@implementation ViewController

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.frame = CGRectMake(0, 0, kDeviceWidth, kDeviceHeight);
        [self.view addSubview:_tableView];
    }
    return _tableView;
}
- (NSMutableArray *)labelTextArray{
    if (!_labelTextArray) {
        _labelTextArray = [NSMutableArray arrayWithArray:kLabelTitles];
    }
    return _labelTextArray;
}
- (NSMutableArray *)DetailLabelTextArray{
    if (!_DetailLabelTextArray) {
        _DetailLabelTextArray = [NSMutableArray arrayWithArray:kDetialLabelText];
    }
    return _DetailLabelTextArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"UITextField常用方法及效果"   ;
    
    [self tableView];
    [self labelTextArray];
    [self DetailLabelTextArray];
}
//每组显示多少行cell数据
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _labelTextArray.count;
}
//cell内容设置，属性设置
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifily = @"cellIdentifily";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifily];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifily];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = _labelTextArray[indexPath.row];
    cell.detailTextLabel.text = _DetailLabelTextArray[indexPath.row];
    return cell;
}

// Variable height support
//cell 的高度（每组可以不一样）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70.f;
}

//选中cell时调用
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            SJFirstEffectViewController *firstEffectVC = [[SJFirstEffectViewController alloc] init];
            [self.navigationController pushViewController:firstEffectVC animated:YES];
        }
            break;
        case 1:
        {
            SJSecondEffectViewController *secondEffectVC = [[SJSecondEffectViewController alloc] init];
            [self.navigationController pushViewController:secondEffectVC animated:YES];
        }
            break;
        default:
            break;
    }
}

@end
