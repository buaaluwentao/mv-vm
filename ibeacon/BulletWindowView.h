//
//  BulletWindowView.h
//  ibeacon
//
//  Created by luwentao on 2018/10/30.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import <UIKit/UIKit.h>
#define DEVICEWIDTH ([UIScreen mainScreen].bounds.size.width)
#define DEVICEHEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface BulletWindowView : UIView
- (void)showInView:(UIView *)view;
- (void)disMissView;
@end
