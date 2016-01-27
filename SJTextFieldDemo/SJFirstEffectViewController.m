//
//  SJFirstEffectViewController.m
//  SJTextFieldDemo
//
//  Created by SPIREJ on 16/1/26.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "SJFirstEffectViewController.h"

#import "RPFloatingPlaceholderTextField.h"
#import "RPFloatingPlaceholderTextView.h"

@interface SJFirstEffectViewController ()

@end

@implementation SJFirstEffectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGRect frame = CGRectMake(20.f, 300.f, 273.f, 30.f);
    RPFloatingPlaceholderTextField *flTextField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frame];
    //弹上去时小字颜色
    flTextField.floatingLabelActiveTextColor = [UIColor blueColor];
    //placeholder 颜色
    flTextField.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTextField.placeholder = @"您的账号";
    flTextField.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    //另一种效果 默认为RPFloatingPlaceholderAnimateUpward
//    flTextField.animationDirection = RPFloatingPlaceholderAnimateDownward; // You can change animation direction
//    flTextField.text = @"I love lamp."; // You can set text after it's been initialized
    [self.view addSubview:flTextField];
    
    
    CGRect frame2 = CGRectMake(20.f, 350.f, 273.f, 95.f);
    RPFloatingPlaceholderTextView *flTextView = [[RPFloatingPlaceholderTextView alloc] initWithFrame:frame2];
    flTextView.floatingLabelActiveTextColor = [UIColor blueColor];
    flTextView.floatingLabelInactiveTextColor = [UIColor grayColor];
    flTextView.placeholder = @"Tell me about yourself";
    flTextView.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    flTextView.animationDirection = RPFloatingPlaceholderAnimateDownward;
    flTextView.text = @"I love lamp.  This is pre-existing text."; // You can set text after it's been initialized
    [self.view addSubview:flTextView];


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
