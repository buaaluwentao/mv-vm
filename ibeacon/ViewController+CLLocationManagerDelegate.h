//
//  ViewController+CLLocationManagerDelegate.h
//  ibeacon
//
//  Created by luwentao on 2018/10/24.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
/*
 iBeacon的用途很多,比如在商场的店铺里安置iBeacon基站,可以向用户传输各种信息,例如优惠劵、店内导航信息、个性化的商品推荐信息,
 可以使用iBeacon进行室内定位,甚至和NFC技术一样可以完成支付功能。
 消息推送: 并不是iBeacon把消息内容推送到手机app,而是在手机app进入到特定区域时,会回调一个通知,在这个时机,可以使用本地通知推
 送信息或者远程通知推送信息,从而达到推送商品信息或优惠劵的目的。
 室内定位和导航: 首先需要绘制室内地图,然后利用iBeacon基站,根据rssi来计算距离,再根据手机与iBeacon的距离来进行室内定位,定位
 方法有很多种,比如单点定位,两点定位,三点定位,多点定位,指纹定位等等,在不同的场景下可能需要不同的定位算法,各种算法的精确度也各不
 相同。
 */
@interface ViewController (CLLocationManagerDelegate)<CLLocationManagerDelegate>

@end
