#import "RTAssetCollectionViewCell+BmBm.h"
@implementation RTAssetCollectionViewCell (BmBm)
+ (BOOL)setSelectedBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
