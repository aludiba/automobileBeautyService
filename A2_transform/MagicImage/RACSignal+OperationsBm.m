#import "RACSignal+OperationsBm.h"
@implementation RACSignal (OperationsBm)
+ (BOOL)doNextBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)doErrorBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)doCompletedBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)throttleBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)throttleValuespassingtestBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)delayBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)repeatBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)catchBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)catchToBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)tryBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)tryBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)tryMapBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)initiallyBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)finallyBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bufferWithTimeOnschedulerBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)collectBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)takeLastBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)combineLatestWithBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)combineLatestBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)combineLatestReduceBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)mergeBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)mergeBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)flattenBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)thenBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)concatBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)aggregateWithStartFactoryReduceBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)aggregateWithStartReduceBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)aggregateWithStartReducewithindexBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)setKeyPathOnobjectBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setKeyPathOnobjectNilvalueBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)intervalOnschedulerBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)intervalOnschedulerWithleewayBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)takeUntilBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)takeUntilReplacementBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)switchToLatestBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)switchCasesDefaultBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ifThenElseBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)firstBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)firstOrDefaultBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)firstOrDefaultSuccessErrorBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)waitUntilCompletedBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)deferBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)toArrayBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)sequenceBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)publishBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)multicastBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)replayBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)replayLastBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)replayLazilyBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)timeoutOnschedulerBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)deliverOnBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)subscribeOnBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)deliverOnMainThreadBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)groupByTransformBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)groupByBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)anyBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)anyBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)allBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)retryBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)retryBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)sampleBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ignoreValuesBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)materializeBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)dematerializeBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)notBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)andBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)orBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)reduceApplyBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
