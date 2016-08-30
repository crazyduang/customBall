//
//  BallViewController.h
//  CustomBall
//
//  Created by 卢奕霖 on 16/8/15.
//  Copyright © 2016年 卢奕霖. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYLBallButton.h"


@interface BallViewController : UIViewController


typedef enum {
    BallViewControllerStyleAlert = 0,  // 提示框类型
    BallViewControllerStyleSheet
} BallViewControllerStyle;


/**背景色*/
@property (nonatomic ,strong) UIView *backgroundView;
/**主题*/
@property (nonatomic ,strong) UILabel *titleText;
/**提示消息*/
@property (nonatomic ,strong) UILabel *messageText;

/**按钮个数*/
@property (nonatomic ,assign) NSInteger btnNumber;


- (instancetype)initWithTitle:(NSString *)title messageText:(NSString *)text ballViewControllerStyle:(BallViewControllerStyle)ballViewControllerStyle;

- (void)addLYLBallButton:(LYLBallButton *)lylBallBtn;


@end
