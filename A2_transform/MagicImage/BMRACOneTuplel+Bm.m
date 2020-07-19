#import "BMRACOneTuplel+Bm.h"
@implementation BMRACOneTuplel (Bm)
+ (BOOL)linitBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)eInitwithbackingarrayBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mTuplebyaddingobjectBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)gPackBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)fIsequalBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
