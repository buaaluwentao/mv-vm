//
//  ViewController+CLLocationManagerDelegate.m
//  ibeacon
//
//  Created by luwentao on 2018/10/24.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "ViewController+CLLocationManagerDelegate.h"

@implementation ViewController (CLLocationManagerDelegate)

- (void)locationManager:(CLLocationManager *)manager didRangeBeacons:(NSArray<CLBeacon *> *)beacons inRegion:(CLBeaconRegion *)region{
    if([beacons count] != 0){
        self.major.text = [NSString stringWithFormat:@"%@",beacons[0].major];
        self.minor.text = [NSString stringWithFormat:@"%@",beacons[0].minor];
        self.signalStrength.text = [NSString stringWithFormat:@"%ld",beacons[0].rssi];
        NSArray *proximityList = @[@"CLProximityUnknown",@"CLProximityImmediate",@"CLProximityNear",@"CLProximityFar"];
        self.proximity.text = [proximityList objectAtIndex:beacons[0].proximity];
        self.accuracy.text = [NSString stringWithFormat:@"%lf",beacons[0].accuracy];
    }
}

- (void)locationManager:(CLLocationManager *)manager
         didEnterRegion:(CLRegion *)region{
    self.inOrOut.text = @"欢迎到访";
    NSLog(@"进入某区域");
}


- (void)locationManager:(CLLocationManager *)manager
          didExitRegion:(CLRegion *)region{
    self.inOrOut.text = @"期待下次到访";
    NSLog(@"");
}

- (void)locationManager:(CLLocationManager*)manager didDetermineState:(CLRegionState)state forRegion:(CLRegion*)region {
    
}

- (void)locationManager:(CLLocationManager *)manager rangingBeaconsDidFailForRegion:(CLBeaconRegion *)region withError:(NSError *)error{
    NSLog(@"出错 ...");
}

@end
