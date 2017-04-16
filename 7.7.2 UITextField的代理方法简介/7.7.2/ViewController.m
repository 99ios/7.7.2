//
//  ViewController.m
//  7.7.2
//
//  Created by 李维佳 on 2017/3/31.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 50, 250, 50)];
    textField.backgroundColor = [UIColor whiteColor];
    textField.placeholder = @"欢迎访问99iOS";;
    textField.textAlignment = NSTextAlignmentCenter;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.delegate = self;
    [self.view addSubview:textField];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField;{
    NSLog(@"%s",__func__);
    NSLog(@"开始输入内容！");
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason{
    NSLog(@"%s",__func__);
    NSLog(@"输入结束！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
