# ReadMe
将eeidSDK.framework和eeidResource.bundle拖入项目

引入头文件 #import <eeidSDK/eeidSDK.h>

#define kClientId @""       填入账户ID
#define kSecret   @""   填入密钥

调用如下代码获取data中的eeid
[[eeidManager shareManagerWithClientId:kClientId Secret:kSecret] openEEIDLoginReturnResult:^(NSDictionary * _Nullable data, eeidSDKResponseStatusCode code) {
    
}];

真机情况下 demo运行后请先允许网络访问权限


Build Settings ->Search Paths ->Framework Search paths 中填写库路径， 如："$(SRCROOT)/eeidDemo/eeidSDK.framework"
