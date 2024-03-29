//
//  MDeviceManager.m
//  Mark
//
//  Created by 黄永强 on 16/4/19.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#import "HYQDeviceManager.h"
#import "sys/utsname.h"

@implementation HYQDeviceManager

//获取屏幕的大小
+ (CGSize)currentScreenSize
{
    return [UIScreen mainScreen].bounds.size;
}

//获取操作系统的版本号
+ (CGFloat)currentVersion
{
    NSString *version = [UIDevice currentDevice].systemVersion;
    return [version floatValue];
}

//获取设备的型号
+ (NSString *)currentModel
{
    return [UIDevice currentDevice].model;
}

//获取设备的名称
+ (NSString *)currentName
{
    return [UIDevice currentDevice].name;
}

#pragma mark UUID
//获取设备的UUID such as "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"
+ (NSString *)currentUUID
{
    return [UIDevice currentDevice].identifierForVendor.UUIDString;
}
//获取设备的型号
+ (NSString *)deviceModel
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    //CLog(@"%@",deviceString);
    
    if ([platform isEqualToString:@"iPhone1,1"])    return @"iPhone 1G";
    if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    if ([platform isEqualToString:@"iPhone3,2"])    return @"Verizon iPhone 4";
    if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    
    if ([platform isEqualToString:@"iPhone6,1"])    return @"iPhone 5S";
    if ([platform isEqualToString:@"iPhone6,2"])    return @"iPhone 5S";
    if ([platform isEqualToString:@"iPhone7,1"])    return @"iPhone 6 Plus";
    if ([platform isEqualToString:@"iPhone7,2"])    return @"iPhone 6";
    
    if ([platform isEqualToString:@"iPhone8,1"])    return @"iPhone 6S";
    if ([platform isEqualToString:@"iPhone8,2"])    return @"iPhone 6S Plus";
    
    if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    if ([platform isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    if ([platform isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    if ([platform isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    
    if ([platform isEqualToString:@"iPad1,1"])      return @"iPad";
    if ([platform isEqualToString:@"iPad2,1"])      return @"iPad 2 (WiFi)";
    if ([platform isEqualToString:@"iPad2,2"])      return @"iPad 2 (GSM)";
    if ([platform isEqualToString:@"iPad2,3"])      return @"iPad 2 (CDMA)";
    if ([platform isEqualToString:@"iPad3,4"])      return @"iPad 4 (WiFi)";
    
    if ([platform isEqualToString:@"i386"])         return @"Simulator";
    if ([platform isEqualToString:@"x86_64"])       return @"Simulator";
    
    DLog(@"NOTE: Unknown device type: %@", platform);
    
    return [UIDevice currentDevice].model;
}

@end
