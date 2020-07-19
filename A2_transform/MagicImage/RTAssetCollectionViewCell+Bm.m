#import "RTAssetCollectionViewCell+Bm.h"
@implementation RTAssetCollectionViewCell (Bm)
+ (BOOL)setSelectedBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
