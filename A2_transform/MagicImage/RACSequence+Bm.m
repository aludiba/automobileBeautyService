#import "RACSequence+Bm.h"
@implementation RACSequence (Bm)
+ (BOOL)sequenceWithHeadBlockTailblockBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)headBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)tailBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)emptyBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)returnBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)bindBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)bindPassingthroughvaluesfromsequenceBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)zipWithBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)arrayBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)objectEnumeratorBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)signalBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)signalWithSchedulerBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)foldLeftWithStartReduceBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)foldRightWithStartReduceBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)anyBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)allBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)objectPassingTestBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)eagerSequenceBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)lazySequenceBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)classForCoderBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)countByEnumeratingWithStateObjectsCountBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)hashBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)isEqualBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
