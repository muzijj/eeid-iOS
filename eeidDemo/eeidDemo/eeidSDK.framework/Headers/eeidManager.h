//
//  eeidManager.h
//  eeidSDK
//
//  Created by ShenJunjie on 2020/6/28.
//  Copyright © 2020 Eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, eeidSDKResponseStatusCode)
{
    eeidSDKResponseStatusCodeSuccess               = 0,//成功
    eeidSDKResponseStatusCodeUserCancel            = -1,//用户取消发送
    eeidSDKResponseStatusCodeSentFail              = -2,//获取eeid失败
};
/**
data
 access_token  token值
 eeid          教育电子身份证号
 expires_in    token有效期，秒
*/
typedef void(^callback)(NSDictionary * _Nullable data, eeidSDKResponseStatusCode code);
@interface eeidManager : NSObject
/**
eeidSDK初始化
ClientId  账户ID
Secret   密钥
@return 初始化对象
*/
+ (instancetype)shareManagerWithClientId:(NSString *)clientId Secret:(NSString *)secret;

/**
 打开登录界面
 */
- (void)openEEIDLoginReturnResult:(nonnull callback)result;

@end

NS_ASSUME_NONNULL_END
