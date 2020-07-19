#import "QMCropThemeView+Bm.h"
@implementation QMCropThemeView (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)buildCollectionViewBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)setCropDataBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)reloadDataBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)collectionViewNumberofitemsinsectionBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)collectionViewCellforitematindexpathBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)collectionViewDidselectitematindexpathBm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
