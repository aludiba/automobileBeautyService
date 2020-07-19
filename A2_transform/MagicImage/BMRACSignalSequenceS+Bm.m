#import "BMRACSignalSequenceS+Bm.h"
@implementation BMRACSignalSequenceS (Bm)
+ (BOOL)OSequencewithsignalbmBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)OHeadbmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)QTailbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)zArraybmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)EDescriptionbmBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
