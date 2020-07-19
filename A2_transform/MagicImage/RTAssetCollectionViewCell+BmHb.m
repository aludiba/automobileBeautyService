#import "RTAssetCollectionViewCell+BmHb.h"
@implementation RTAssetCollectionViewCell (BmHb)
+ (BOOL)setSelectedBmHb:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
