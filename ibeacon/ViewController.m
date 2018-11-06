//
//  ViewController.m
//  ibeacon
//
//  Created by luwentao on 2018/10/22.
//  Copyright © 2018年 cmb. All rights reserved.
//
#import "ViewController+CLLocationManagerDelegate.h"
#define BEACONUUID @"10F86430-1346-11E4-9191-0800200C9A66"//iBeacon的uuid可以换成自己设备的uuid

@interface ViewController ()

@property CLLocationManager * locationManager;
@property CLBeaconRegion *region;
@property NSInteger count;
- (void)starting;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestAlwaysAuthorization];
    self.count = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)init{
    if(self = [super init]){
        
    }
    return self;
}



- (void)starting{
    if([self count] != 0){
        return;
    }
    self.count = self.count + 1;
    CLBeaconRegion *region = [[CLBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:BEACONUUID] identifier:@"media"];//初始化监测的iBeaco
    region.notifyOnExit = YES;
    region.notifyOnEntry = YES;
    region.notifyEntryStateOnDisplay = YES;
    self.region = region;
    [self.locationManager startMonitoringForRegion:self.region];
    //[self.locationManager startRangingBeaconsInRegion:self.region];
}

- (IBAction)appDetail:(id)sender {
    [self starting];
}

- (IBAction)stopScan:(id)sender {
    [self.locationManager stopRangingBeaconsInRegion:self.region];
}

@end
