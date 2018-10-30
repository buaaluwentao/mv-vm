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
@property BOOL b ;

- (BOOL) isParameterLeagalWithPattern : (NSString *)pattern parameter:(NSString *)parameter;
@end

@implementation Test

- (BOOL) isParameterLeagalWithPattern : (NSString *)pattern parameter:(NSString *)parameter{
    NSRegularExpression *regular = [[NSRegularExpression alloc] initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSArray *results = [regular matchesInString:parameter options:0 range:NSMakeRange(0, parameter.length)];
    if(results.count == 1){
        NSTextCheckingResult *result =  [results objectAtIndex:0];
        return (result.range.location == 0 && result.range.length == [parameter length]);
    }
    return NO;
}

@end

int main(int argc, char * argv[]) {
    Test *test = [[Test alloc] init];
    NSString *checkString = @"+000012345555";
    //1.创建正则表达式，[0-9]:表示‘0’到‘9’的字符的集合
    NSString *pattern = @"^\\+?[0-9][0-9]*$";
    if([test isParameterLeagalWithPattern:pattern parameter:checkString]){
        NSLog(@"aha");
    }
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
