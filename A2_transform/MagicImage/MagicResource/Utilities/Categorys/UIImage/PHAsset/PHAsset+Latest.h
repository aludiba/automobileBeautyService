#import <Photos/Photos.h>
@interface PHAsset (Latest)
+ (PHAsset *)latestAsset;
+ (UIImage *)latestOriginImage;
+ (void)latestImageWithSize:(CGSize)size completeBlock:(void(^)(UIImage *image))block;
@end
