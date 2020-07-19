#import "RTImagePickerPhoto+Bm.h"
@implementation RTImagePickerPhoto (Bm)
+ (BOOL)photoWithImageBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)photoWithURLBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)photoWithAssetTargetsizeBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)videoWithURLBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)initWithImageBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)initWithURLBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)initWithAssetTargetsizeBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)initWithVideoURLBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)setVideoURLBm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)getVideoURLBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)underlyingImageBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)loadUnderlyingImageAndNotifyBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)performLoadUnderlyingImageAndNotifyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithWebURLBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithLocalFileURLBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetsLibraryURLBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)_performLoadUnderlyingImageAndNotifyWithAssetTargetsizeBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)unloadUnderlyingImageBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)imageLoadingCompleteBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)postCompleteNotificationBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)cancelAnyLoadingBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
