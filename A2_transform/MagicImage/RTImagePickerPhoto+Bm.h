#import <Foundation/Foundation.h>
#import <Photos/Photos.h>
#import "RTImagePickerPhotoProtocol.h"
#import "SDWebImageManager.h"
#import "SDWebImageOperation.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "RTImagePickerPhoto.h"
#import "RTImagePickerPhotoBrowser.h"

@interface RTImagePickerPhoto (Bm)
+ (BOOL)photoWithImageBm:(NSInteger)BM;
+ (BOOL)photoWithURLBm:(NSInteger)BM;
+ (BOOL)photoWithAssetTargetsizeBm:(NSInteger)BM;
+ (BOOL)videoWithURLBm:(NSInteger)BM;
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithImageBm:(NSInteger)BM;
+ (BOOL)initWithURLBm:(NSInteger)BM;
+ (BOOL)initWithAssetTargetsizeBm:(NSInteger)BM;
+ (BOOL)initWithVideoURLBm:(NSInteger)BM;
+ (BOOL)setVideoURLBm:(NSInteger)BM;
+ (BOOL)getVideoURLBm:(NSInteger)BM;
+ (BOOL)underlyingImageBm:(NSInteger)BM;
+ (BOOL)loadUnderlyingImageAndNotifyBm:(NSInteger)BM;
+ (BOOL)performLoadUnderlyingImageAndNotifyBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithWebURLBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithLocalFileURLBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetsLibraryURLBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetTargetsizeBm:(NSInteger)BM;
+ (BOOL)unloadUnderlyingImageBm:(NSInteger)BM;
+ (BOOL)imageLoadingCompleteBm:(NSInteger)BM;
+ (BOOL)postCompleteNotificationBm:(NSInteger)BM;
+ (BOOL)cancelAnyLoadingBm:(NSInteger)BM;

@end
