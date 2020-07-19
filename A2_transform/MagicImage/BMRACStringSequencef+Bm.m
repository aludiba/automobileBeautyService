#import "BMRACStringSequencef+Bm.h"
@implementation BMRACStringSequencef (Bm)
+ (BOOL)XSequencewithstringROffsetBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)OheadBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)otailBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)BarrayBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)XdescriptionBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
