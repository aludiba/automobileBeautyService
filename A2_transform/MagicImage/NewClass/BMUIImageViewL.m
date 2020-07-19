#import "BMUIImageViewL.h"
@implementation BMUIImageViewL
+ (BOOL)LSd_Sethighlightedimagewithurlbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eSd_Sethighlightedimagewithurloptionsbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)PSd_Sethighlightedimagewithurlcompletedbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wSd_Sethighlightedimagewithurloptionscompletedbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)KSd_Sethighlightedimagewithurloptionsprogresscompletedbm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
