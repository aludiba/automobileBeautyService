#import "BMPHAssetR.h"
@implementation BMPHAssetR
+ (BOOL)YlatestAsset:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)WlatestOriginImage:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)wLatestimagewithsizeQCompleteblock:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
