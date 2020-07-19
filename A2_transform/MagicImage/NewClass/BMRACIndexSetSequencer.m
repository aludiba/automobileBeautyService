#import "BMRACIndexSetSequencer.h"
@implementation BMRACIndexSetSequencer
+ (BOOL)nSequencewithindexsetbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)zSequencewithindexsetsequenceoffsetbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)iHeadbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)hTailbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)VCountbyenumeratingwithstateobjectscountbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)SDescriptionbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
