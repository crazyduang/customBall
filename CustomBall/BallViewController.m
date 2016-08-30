//
//  BallViewController.m
//  CustomBall
//
//  Created by 卢奕霖 on 16/8/15.
//  Copyright © 2016年 卢奕霖. All rights reserved.
//

#import "BallViewController.h"
#import "Masonry iOS Examples-Prefix.pch"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface BallViewController ()

@end

@implementation BallViewController

- (instancetype)initWithTitle:(NSString *)title messageText:(NSString *)text ballViewControllerStyle:(BallViewControllerStyle)ballViewControllerStyle{
    self = [super init];
    if (self) {
        
        [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.61f]];
        _btnNumber = 1;
        [self addSubviewsWithTitle:(NSString *)title messageText:(NSString *)text ballViewControllerStyle:(BallViewControllerStyle)ballViewControllerStyle];
    }
    return self;
}

- (void)addSubviewsWithTitle:(NSString *)title messageText:(NSString *)text ballViewControllerStyle:(BallViewControllerStyle)ballViewControllerStyle{
    
    self.backgroundView = [[UIView alloc] init];
    self.backgroundView.backgroundColor = [UIColor whiteColor];
    self.backgroundView.layer.cornerRadius = 8;
    [self.view addSubview:self.backgroundView];
    
    self.titleText = [[UILabel alloc] init];
    self.titleText.backgroundColor = [UIColor blackColor];
    self.titleText.textAlignment = NSTextAlignmentCenter;
    self.titleText.textColor = [UIColor whiteColor];
    self.titleText.text = title;
    [self.backgroundView addSubview:self.titleText];
    
    self.messageText = [[UILabel alloc] init];
    self.messageText.backgroundColor = [UIColor blackColor];
    self.messageText.textAlignment = NSTextAlignmentCenter;
    self.messageText.numberOfLines = 2;
    self.messageText.text = text;
    self.messageText.textColor = [UIColor whiteColor];
    [self.backgroundView addSubview:self.messageText];
    
    
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(kScreenHeight*0.3);
        make.centerX.equalTo(self.view);
        make.width.equalTo(kScreenWidth*0.7);
        make.bottom.equalTo(self.messageText.bottom);
        
    }];
    
    [self.titleText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backgroundView).offset(10);
        make.centerX.equalTo(self.backgroundView);
        make.width.equalTo(self.backgroundView);
        make.height.equalTo(30);
    }];
    
    [self.messageText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleText.bottom);
        make.centerX.equalTo(self.backgroundView);
        make.width.equalTo(self.backgroundView);
        make.height.equalTo(60);
    }];
    
}


/*
 添加按钮
 */

- (void)addLYLBallButton:(LYLBallButton *)lylBallBtn{
    NSLog(@"btnNumber == %ld", _btnNumber);
    lylBallBtn.tag = 100 + _btnNumber;
    [self.backgroundView addSubview:lylBallBtn];
    if (_btnNumber == 1) {
        [self.backgroundView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view).offset(kScreenHeight*0.3);
            make.centerX.equalTo(self.view);
            make.width.equalTo(kScreenWidth*0.7);
            make.bottom.equalTo(lylBallBtn.bottom);
        }];
        [lylBallBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.messageText.bottom);
            make.width.equalTo(kScreenWidth*0.7/_btnNumber);
            make.height.equalTo(30);
            make.left.equalTo(self.backgroundView);
        }];
        [self.view setNeedsUpdateConstraints];
        [self.view updateConstraintsIfNeeded];
        [self.view layoutIfNeeded];
    } else if (_btnNumber == 2) {
        LYLBallButton *lylBtn1 = (LYLBallButton *)[self.view viewWithTag:101];
        [lylBtn1 mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.messageText.bottom);
            make.width.equalTo(kScreenWidth*0.7/_btnNumber);
            make.height.equalTo(30);
            make.left.equalTo(self.backgroundView);
        }];
        [lylBallBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.width.height.top.equalTo(lylBtn1);
            make.left.equalTo(lylBtn1.right);
        }];
    }
    _btnNumber = _btnNumber + 1;
}








- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view.
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
