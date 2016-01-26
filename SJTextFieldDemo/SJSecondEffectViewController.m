//
//  SJSecondEffectViewController.m
//  SJTextFieldDemo
//
//  Created by SPIREJ on 16/1/26.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "SJSecondEffectViewController.h"

#import "JVFloatLabeledTextField.h"
#import "JVFloatLabeledTextView.h"

@interface SJSecondEffectViewController ()

@end

@implementation SJSecondEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    //初始化一个textField
    JVFloatLabeledTextField *titleField = [[JVFloatLabeledTextField alloc] initWithFrame:CGRectMake(50, 200, kDeviceWidth-100, 30)];
    //textField类型
    titleField.borderStyle = UITextBorderStyleRoundedRect;
    titleField.font = [UIFont systemFontOfSize:16];
    //placeholder 的属性设置
    titleField.attributedPlaceholder =
    [[NSAttributedString alloc] initWithString:NSLocalizedString(@"Title", @"")
                                    attributes:@{NSForegroundColorAttributeName: [UIColor darkGrayColor]}];
    //弹上去的字体大小、颜色
    titleField.floatingLabelFont = [UIFont boldSystemFontOfSize:10];
    titleField.floatingLabelTextColor = [UIColor brownColor];
    //是否有清除按钮
    titleField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:titleField];
    //这个属性是约束Autosizing控制，当打开约束的时候，要约束条件完全，否则可能试图丢失。
//    titleField.translatesAutoresizingMaskIntoConstraints = NO;
    titleField.keepBaseline = YES;
//    [titleField becomeFirstResponder];
    
    
    //初始化textView
    JVFloatLabeledTextView *descriptionField = [[JVFloatLabeledTextView alloc] initWithFrame:CGRectMake(50, 300, kDeviceWidth-100, 100)];
    //textView placeholder字符串，字体大小，颜色
    descriptionField.font = [UIFont systemFontOfSize:16];
    descriptionField.placeholder = NSLocalizedString(@"Description hello my baby", @"");
    descriptionField.placeholderTextColor = [UIColor darkGrayColor];
    //弹上去时的大小，颜色
    descriptionField.floatingLabelFont = [UIFont boldSystemFontOfSize:10];
    descriptionField.floatingLabelTextColor = [UIColor brownColor];
    
    [self.view addSubview:descriptionField];
    descriptionField.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
