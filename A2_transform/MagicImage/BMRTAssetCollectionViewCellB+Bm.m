#import "BMRTAssetCollectionViewCellB+Bm.h"
@implementation BMRTAssetCollectionViewCellB (Bm)
+ (BOOL)sSetselectedBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
