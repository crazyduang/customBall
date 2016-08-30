//
//  LYLBallButton.h
//  CustomBall
//
//  Created by 卢奕霖 on 16/8/16.
//  Copyright © 2016年 卢奕霖. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LYLBallButton;
typedef void(^LYLTouchBlock)(LYLBallButton *lylButton);


@interface LYLBallButton : UIButton


@property (copy, nonatomic) LYLTouchBlock lylblock;


- (instancetype)initWithFrame:(CGRect)frame btnTitle:(NSString *)title handel:(LYLTouchBlock)handel;


@end
