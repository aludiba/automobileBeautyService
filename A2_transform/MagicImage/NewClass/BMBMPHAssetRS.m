#import "BMBMPHAssetRS.h"
@implementation BMBMPHAssetRS
+ (BOOL)xYlatestasset:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)IWlatestoriginimage:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)lWlatestimagewithsizeqcompleteblock:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
