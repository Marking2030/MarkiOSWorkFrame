//
//  HYQInterface+Enum.h
//  Mark
//
//  Created by 黄永强 on 16/4/20.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#ifndef HYQInterface_Enum_h
#define HYQInterface_Enum_h

/************************** 字符串转换 Begin *****************************/

#define kStringByInt(i)              [NSString stringWithFormat:@"%ld",i]
#define kStringByFloat(f)            [NSString stringWithFormat:@"%lf",f]
#define kStringByObject(o)           [NSString stringWithFormat:@"%@",o]
#define kStringByCharString(s)       [NSString stringWithFormat:@"%s",c]
#define kStringByChar(c)             [NSString stringWithFormat:@"%c",c]

/**************************  字符串转换 End  *****************************/

/**************************  服务器主机设置 Begin *************************/

#ifdef DEBUG
// 内网测试服务器
//#define kBaseHost                    @"http://192.168.19.88"

// 外网测试服务器(河南景安)
//#define kBaseHost                    @"http://test.qingweninfo.com"

// 外网正式服务器(阿里云)
#define kBaseHost                    @"http://api.qingweninfo.com"

// 更新服务器(河南景安)
#define kUpdateHost                  @"http://update.qingweninfo.com"

#else
// 内网测试服务器
//#define kBaseHost                    @"http://192.168.19.88"

// 外网测试服务器(河南景安)
//#define kBaseHost                    @"http://test.qingweninfo.com"

// 外网正式服务器(阿里云)
#define kBaseHost                    @"http://api.qingweninfo.com"

// 更新服务器(河南景安)
#define kUpdateHost                  @"http://update.qingweninfo.com"

#endif

/************************** 服务器主机设置 End ****************************/

/************************** 枚举  Begin  ********************************/

/** 手机网络类型 */
//typedef NS_ENUM(NSInteger, NetworkStatus) {
//    StatusUnknown           = -1,   /**< 未知网络 */
//    StatusNotReachable      = 0,    /**< 没有网络 */
//    StatusReachableViaWWAN  = 1,    /**< 手机自带网络 */
//    StatusReachableViaWiFi  = 2     /**< wifi */
//};


/**< APP在线状态 */
typedef NS_ENUM(NSInteger, AppStatus) {
    AppStatusOnline             = 1,    /**< 在线 */
    AppStatusEnterBackground    = 2,    /**< 进入后台 */
    AppStatusLoginOut           = 0,    /**< 退出 */
};

/** 用户登录状态 */
typedef NS_ENUM(NSInteger, UserStatus) {
    UserStatusLoginOut              = 0,        /**< 未登录 */
    UserStatusLoginIn               = 1,        /**< 已登录 */
    UserStatusLocked                = -1        /**< 锁定 */
};

/** 用户性别 */
typedef NS_ENUM(NSInteger, UserSex) {
    UserSexWoman            = 0,        /**< 女 */
    UserSexMan              = 1         /**< 男 */
};

/** 支付方式 */
typedef NS_ENUM(NSInteger, OrderPayment) {
    OrderPaymentBalance             = 1,        /**< 余额 */
    OrderPaymentAlipay              = 2,        /**< 支付宝 */
    OrderPaymentWeChat              = 3,        /**< 微信 */
    OrderPaymentApplePay            = 4,        /**< ApplePay */
    OrderPaymentUnionPay            = 5,        /**< 银联 */
    OrderPaymentBalanceAndWechat    = 6,        /**< 余额+微信 */
    OrderPaymentBalanceAndAlipay    = 7,        /**< 余额+支付宝 */
    OrderPaymentBalanceAndUnionPay  = 8,        /**< 余额+银联 */
    OrderPaymentOtherPay            = 9,        /**< 其他支付方式 */
};

/** 提现方式 */
typedef NS_ENUM(NSInteger, WithDrawalsMethod) {
    WithDrawalsMethodNoChoice       = 0,        /**< 未选择 */
    WithDrawalsMethodAliPay         = 2,        /**< 支付宝 */
    WithDrawalsMethodWeChat         = 3,        /**< 微信 */
    WithDrawalsMethodUnionPay       = 4,        /**< 银联 */
    WithDrawalsMethodOther          = 9         /**< 其他 */
};

/** 支付状态 */
typedef NS_ENUM(NSInteger, OrderPayStatus) {
    OrderPayStatusUnPaid            = 0,        /**< 未支付 */
    OrderPayStatusPayment           = 1,        /**< 付款中 */
    OrderPayStatusHasPaid           = 2,        /**< 已付款 */
};

/** 删除状态 */
typedef NS_ENUM(NSInteger, DeleteStatus) {
    DeleteStatusNormal              = 0,        /**< 未删除 */
    DeleteStatusAlreadyDelete       = 1         /**< 已删除 */
};

/************************** 枚举  End *************************/


#endif /* HYQInterface_Enum_h */
