//
//  ViewController.h
//  ibeacon
//
//  Created by luwentao on 2018/10/22.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *major;
@property (weak, nonatomic) IBOutlet UILabel *minor;
@property (weak, nonatomic) IBOutlet UILabel *signalStrength;
@property (weak, nonatomic) IBOutlet UILabel *proximity;
@property (weak, nonatomic) IBOutlet UILabel *accuracy;
@end

