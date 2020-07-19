#import "RACSequence+BmBm.h"
@implementation RACSequence (BmBm)
+ (BOOL)sequenceWithHeadBlockTailblockBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)headBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)tailBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)emptyBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)returnBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bindBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)concatBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)zipWithBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)arrayBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)objectEnumeratorBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)signalBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)signalWithSchedulerBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)foldLeftWithStartReduceBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)foldRightWithStartReduceBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)anyBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)allBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)objectPassingTestBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)eagerSequenceBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)lazySequenceBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)classForCoderBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)hashBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)isEqualBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
