//
//  MPPermissionsManager.h
//  magicPicsew
//
//  Created by 123 on 2021/5/25.
//

#import <Foundation/Foundation.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/Photos.h>
#import <AdSupport/AdSupport.h>
#import <AppTrackingTransparency/AppTrackingTransparency.h>

NS_ASSUME_NONNULL_BEGIN
// 权限统一管理
@interface MPPermissionsManager : NSObject

//单例方法
+ (MPPermissionsManager *)MPshareManager;

//相册部分
+ (void)MPalbumPermissionManagement:(void(^)(PHAuthorizationStatus MPstatus))MPpermissionsCallback;

//相机部分
+ (void)MPcameraPermissionManagement:(void(^)(AVAuthorizationStatus MPstatus))MPpermissionsCallback;

//麦克风权限
+ (void)MPmicrophonePermissionManagement:(void(^)(AVAuthorizationStatus MPstatus))MPpermissionsCallback;

//相机/麦克风权限
+ (void)MPaudioVideoPermissionManagement:(void(^)(AVAuthorizationStatus MPaudioStatus, AVAuthorizationStatus MPvideoStatus))MPpermissionsCallback;

//app追踪透明度权限
+ (void)MPtraceTransparencyPermissionManagement:(void(^)(BOOL MPisTraceTransparency,ATTrackingManagerAuthorizationStatus MPstatus,ASIdentifierManager *MPmanager))MPpermissionsCallback API_AVAILABLE(ios(14));

@end

NS_ASSUME_NONNULL_END
