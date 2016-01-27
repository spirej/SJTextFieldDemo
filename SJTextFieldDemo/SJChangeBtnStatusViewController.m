//
//  SJChangeBtnStatusViewController.m
//  SJTextFieldDemo
//
//  Created by SPIREJ on 16/1/26.
//  Copyright © 2016年 SPIREJ. All rights reserved.
//

#import "SJChangeBtnStatusViewController.h"

@interface SJChangeBtnStatusViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UIButton *finishedBtn;
- (IBAction)finishedBtnTouch:(UIButton *)sender;

@end

@implementation SJChangeBtnStatusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //初始设置
    _nameTF.delegate = self;
    _phoneTF.delegate = self;
    _nameTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    _phoneTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
    _finishedBtn.userInteractionEnabled = NO;
}

#pragma mark - textField delegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSString *currentStr = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    [self changeButtonStatus:currentStr TF:textField _TF1:_nameTF _TF2:_phoneTF];
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField{
    [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
    _finishedBtn.userInteractionEnabled = NO;
    return YES;
}

//两个textField的情况
- (void)changeButtonStatus:(NSString *)str TF:(UITextField *)textField _TF1:(UITextField *)tf1 _TF2:(UITextField *)tf2
{
    if (textField == tf1) {
        if ([str length] != 0) {
            if (tf2.text.length != 0) {
                [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_blue"] forState:UIControlStateNormal];
                _finishedBtn.userInteractionEnabled = YES;
            }else {
                [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
                _finishedBtn.userInteractionEnabled = NO;
            }
        }else {
            [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
            _finishedBtn.userInteractionEnabled = NO;
        }
    }else if (textField == tf2) {
        if ([str length] != 0) {
            if (tf1.text.length != 0) {
                [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_blue"] forState:UIControlStateNormal];
                _finishedBtn.userInteractionEnabled = YES;
            }else {
                [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
                _finishedBtn.userInteractionEnabled = NO;
            }
        }else{
            [_finishedBtn setBackgroundImage:[UIImage imageNamed:@"btn_gray"] forState:UIControlStateNormal];
            _finishedBtn.userInteractionEnabled = NO;
        }
    }
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

- (IBAction)finishedBtnTouch:(UIButton *)sender {
}
@end
