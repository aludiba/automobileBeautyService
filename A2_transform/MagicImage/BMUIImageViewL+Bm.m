#import "BMUIImageViewL+Bm.h"
@implementation BMUIImageViewL (Bm)
+ (BOOL)LSd_SethighlightedimagewithurlbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)eSd_SethighlightedimagewithurloptionsbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)PSd_SethighlightedimagewithurlcompletedbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)wSd_SethighlightedimagewithurloptionscompletedbmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)KSd_SethighlightedimagewithurloptionsprogresscompletedbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
