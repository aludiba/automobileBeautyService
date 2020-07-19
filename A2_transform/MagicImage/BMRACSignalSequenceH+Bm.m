#import "BMRACSignalSequenceH+Bm.h"
@implementation BMRACSignalSequenceH (Bm)
+ (BOOL)OSequencewithsignalbmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)OHeadbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)eTailbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)XArraybmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)TDescriptionbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
