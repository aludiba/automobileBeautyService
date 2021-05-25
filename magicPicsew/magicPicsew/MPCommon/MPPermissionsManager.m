//
//  MPPermissionsManager.m
//  magicPicsew
//
//  Created by 123 on 2021/5/25.
//

#import "MPPermissionsManager.h"
@interface MPPermissionsManager()

@end

@implementation MPPermissionsManager

+ (MPPermissionsManager *)MPshareManager {
    static MPPermissionsManager *MPmanager;
    static dispatch_once_t MPonceToken;
    dispatch_once(&MPonceToken, ^{
        MPmanager = [[MPPermissionsManager alloc] init];
    });
    return MPmanager;
}

#pragma mark - 相册部分

+ (void)MPalbumPermissionManagement:(void(^)(PHAuthorizationStatus MPstatus))MPpermissionsCallback{
    PHAuthorizationStatus MPstatus = [PHPhotoLibrary authorizationStatus];
    if (MPstatus == AVAuthorizationStatusRestricted || MPstatus == AVAuthorizationStatusDenied){
        [MPTool MPApplicationSettingsAlertTitle:@"相册授权" message:@"您未同意应用获取相册权限，点击设置去进行相册授权设置"];
    }else{
        MPpermissionsCallback(MPstatus);
    }
}

#pragma mark - 相机部分

+ (void)MPcameraPermissionManagement:(void(^)(AVAuthorizationStatus MPstatus))MPpermissionsCallback{
    AVAuthorizationStatus MPstatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (MPstatus == AVAuthorizationStatusRestricted || MPstatus == AVAuthorizationStatusDenied){
        [MPTool MPApplicationSettingsAlertTitle:@"相机授权" message:@"您未同意应用获取相机权限，点击设置去进行相机授权设置"];
    }else{
        MPpermissionsCallback(MPstatus);
    }
}

#pragma mark - 麦克风权限

+ (void)MPmicrophonePermissionManagement:(void (^)(AVAuthorizationStatus MPstatus))MPpermissionsCallback{
    AVAuthorizationStatus MPstatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    MPpermissionsCallback(MPstatus);
}

#pragma mark - 相机/麦克风权限

+ (void)MPaudioVideoPermissionManagement:(void(^)(AVAuthorizationStatus MPaudioStatus, AVAuthorizationStatus MPvideoStatus))MPpermissionsCallback{
    AVAuthorizationStatus MPaudioStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    AVAuthorizationStatus MPvideoStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if (MPvideoStatus == AVAuthorizationStatusRestricted || MPvideoStatus == AVAuthorizationStatusDenied)
    {
        [MPTool MPApplicationSettingsAlertTitle:@"相机授权" message:@"您未同意应用获取相机权限，点击设置去进行相机授权设置"];
    }else if (MPaudioStatus == AVAuthorizationStatusRestricted || MPaudioStatus == AVAuthorizationStatusDenied){
        [MPTool MPApplicationSettingsAlertTitle:@"麦克风授权" message:@"您未同意应用获取麦克风权限，点击设置去进行麦克风授权设置"];
    }else{
        MPpermissionsCallback(MPaudioStatus,MPvideoStatus);
    }
}

#pragma mark - app追踪透明度权限

+ (void)MPtraceTransparencyPermissionManagement:(void(^)(BOOL MPisTraceTransparency,ATTrackingManagerAuthorizationStatus MPstatus,ASIdentifierManager *MPmanager))MPpermissionsCallback API_AVAILABLE(ios(14)){
    ASIdentifierManager *MPmanager = [ASIdentifierManager sharedManager];
    if (@available(iOS 14, *)) {
            // iOS14及以上版本需要先请求权限
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus MPstatus) {
                MPpermissionsCallback(YES,MPstatus,MPmanager);
            }];
        } else {
            MPpermissionsCallback(NO,nil,MPmanager);
        }
}

@end
