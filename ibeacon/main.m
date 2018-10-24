//
//  main.m
//  ibeacon
//
//  Created by luwentao on 2018/10/22.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

#import <CoreLocation/CoreLocation.h>
#define BEACONUUID @"10F86430-1346-11E4-9191-0800200C9A66"//iBeacon的uuid可以换成自己设备的uuid

@interface Test : NSObject<CLLocationManagerDelegate>

@property CLLocationManager * locationManager;

- (void)starting;

@end

@implementation Test
- (instancetype)init{
    if(self = [super init]){
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self; // 遵循代理
        /*if ([self.locationManager respondsToSelector:@selector(requestAlwaysAuthorization)]) {
            // 请求用户授权定位权限
            [self.locationManager requestAlwaysAuthorization];
        }*/
        [self.locationManager requestAlwaysAuthorization];
       
    }
    return self;
}

- (void)locationManager:(CLLocationManager *)manager didRangeBeacons:(NSArray<CLBeacon *> *)beacons inRegion:(CLBeaconRegion *)region{
    for(CLBeacon *beacon in beacons){
        NSLog(@"%p" , beacon);
    }
    NSLog(@"here are %lu beacons,%@,%p" , [beacons count] ,[[region proximityUUID] UUIDString], region);
}

// 有错误产生时的回调
- (void)locationManager:(CLLocationManager *)manager rangingBeaconsDidFailForRegion:(CLBeaconRegion *)region withError:(NSError *)error{
    NSLog(@"end ...");
}

- (void)starting{
    NSLog(@"hello,world");
    CLBeaconRegion *region = [[CLBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:BEACONUUID] identifier:@"media"];//初始化监测的iBeacon
    region = region;
    region.notifyOnExit = YES;
    region.notifyOnEntry = YES;
    region.notifyEntryStateOnDisplay = YES;
    
    //NSLog(@"%p",self.region);
    [self.locationManager startRangingBeaconsInRegion:region];
    // 停止检测区域
    //[self.locationManager stopRangingBeaconsInRegion:region];
}
@end
int main(int argc, char * argv[]) {
    /*Test *test = [[Test alloc] init];
    [test starting];
    NSLog(@"end ...");*/
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
