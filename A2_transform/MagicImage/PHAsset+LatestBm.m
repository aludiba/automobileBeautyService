#import "PHAsset+LatestBm.h"
@implementation PHAsset (LatestBm)
+ (BOOL)latestAssetBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)latestOriginImageBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)latestImageWithSizeCompleteblockBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
