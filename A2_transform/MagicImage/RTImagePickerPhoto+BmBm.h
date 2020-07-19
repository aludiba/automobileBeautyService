#import <Foundation/Foundation.h>
#import <Photos/Photos.h>
#import "RTImagePickerPhotoProtocol.h"
#import "SDWebImageManager.h"
#import "SDWebImageOperation.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "RTImagePickerPhoto.h"
#import "RTImagePickerPhotoBrowser.h"
#import "RTImagePickerPhoto+Bm.h"

@interface RTImagePickerPhoto (BmBm)
+ (BOOL)photoWithImageBmBm:(NSInteger)BM;
+ (BOOL)photoWithURLBmBm:(NSInteger)BM;
+ (BOOL)photoWithAssetTargetsizeBmBm:(NSInteger)BM;
+ (BOOL)videoWithURLBmBm:(NSInteger)BM;
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithImageBmBm:(NSInteger)BM;
+ (BOOL)initWithURLBmBm:(NSInteger)BM;
+ (BOOL)initWithAssetTargetsizeBmBm:(NSInteger)BM;
+ (BOOL)initWithVideoURLBmBm:(NSInteger)BM;
+ (BOOL)setVideoURLBmBm:(NSInteger)BM;
+ (BOOL)getVideoURLBmBm:(NSInteger)BM;
+ (BOOL)underlyingImageBmBm:(NSInteger)BM;
+ (BOOL)loadUnderlyingImageAndNotifyBmBm:(NSInteger)BM;
+ (BOOL)performLoadUnderlyingImageAndNotifyBmBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithWebURLBmBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithLocalFileURLBmBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetsLibraryURLBmBm:(NSInteger)BM;
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetTargetsizeBmBm:(NSInteger)BM;
+ (BOOL)unloadUnderlyingImageBmBm:(NSInteger)BM;
+ (BOOL)imageLoadingCompleteBmBm:(NSInteger)BM;
+ (BOOL)postCompleteNotificationBmBm:(NSInteger)BM;
+ (BOOL)cancelAnyLoadingBmBm:(NSInteger)BM;

@end
