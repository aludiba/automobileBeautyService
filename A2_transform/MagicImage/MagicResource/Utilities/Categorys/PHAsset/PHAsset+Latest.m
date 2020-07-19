#import "PHAsset+Latest.h"
@implementation PHAsset (Latest)
+ (PHAsset *)latestAsset
{
    PHFetchOptions *options = [[PHFetchOptions alloc] init];
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:NO]];
    PHFetchResult *assetsFetchResults = [PHAsset fetchAssetsWithOptions:options];
    return [assetsFetchResults firstObject];
}
+ (UIImage *)latestOriginImage
{
    PHAsset *asset = [self latestAsset];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    options.synchronous = YES;
     CGSize size = CGSizeMake(asset.pixelWidth, asset.pixelHeight);
    __block UIImage *image = nil;
    [[PHImageManager defaultManager] requestImageForAsset:asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        image = result;
    }];
    return image;
}
+ (void)latestImageWithSize:(CGSize)size completeBlock:(void (^)(UIImage *))block
{
    PHAsset *asset = [self latestAsset];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    options.synchronous = NO;
    [[PHImageManager defaultManager] requestImageForAsset:asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        if (block) {
            block(result);
        }
    }];
}
@end
