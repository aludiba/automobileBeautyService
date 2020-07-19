#import "BMRACSignalSequenceH+BmBm.h"
@implementation BMRACSignalSequenceH (BmBm)
+ (BOOL)OSequencewithsignalbmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)OHeadbmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eTailbmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)XArraybmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)TDescriptionbmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
