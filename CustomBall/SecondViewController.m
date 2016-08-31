//
//  SecondViewController.m
//  CustomBall
//
//  Created by 卢奕霖 on 16/8/16.
//  Copyright © 2016年 卢奕霖. All rights reserved.
//

#import "SecondViewController.h"
#import "Masonry iOS Examples-Prefix.pch"
#import "BallViewController.h"
#import "LYLBallButton.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 375, 200)];
    label.text = @"sldlashdhaslkdhsalkhdlkjahsdklhaskdkjasdkjashkdjhaskjdhkjsahdkjaskjdhashdkjashdkjsakjdhkjashdkjhsakdjhas";
    label.numberOfLines = 0;
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    

    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(50, 30));
    }];
}


- (void)clickBtn:(UIButton *)sender{
    BallViewController *ballVC = [[BallViewController alloc] initWithTitle:@"提示" messageText:@"ibaxin坚持1个月,看美剧不用字幕.新手帮助,玩法介绍,投诉建议,如何答题, 获取采纳,使用财富值." ballViewControllerStyle:BallViewControllerStyleAlert];
    //    BallViewController *ballVC = [[BallViewController alloc] init];
    ballVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    LYLBallButton *sureBtn = [[LYLBallButton alloc] initWithFrame:CGRectZero btnTitle:@"确定" handel:^(LYLBallButton *lylButton) {
        NSLog(@"点击确定按钮");
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    
//    LYLBallButton *cancelBtn = [[LYLBallButton alloc] initWithFrame:CGRectZero btnTitle:@"取消" handel:^(LYLBallButton *lylButton) {
//        NSLog(@"点击取消按钮");
//    }];
    [ballVC addLYLBallButton:sureBtn];
//    [ballVC addLYLBallButton:cancelBtn];
    
    
    
    
    
    
    [self presentViewController:ballVC animated:YES completion:^{
        
    }];
    
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
