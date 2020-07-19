#import "BMPHAssetV.h"
@implementation BMPHAssetV
+ (BOOL)platestAsset:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)wlatestOriginImage:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)tLatestimagewithsizeuCompleteblock:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
