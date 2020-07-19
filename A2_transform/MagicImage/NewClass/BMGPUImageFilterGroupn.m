#import "BMGPUImageFilterGroupN.h"
@implementation BMGPUImageFilterGroupN
+ (BOOL)vInitbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)lAddfilterbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)OFilteratindexbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)KFiltercountbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)iUsenextframeforimagecapturebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)bNewcgimagefromcurrentlyprocessedoutputbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)eSettargettoignoreforupdatesbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)MAddtargetattexturelocationbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)hRemovetargetbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)kRemovealltargetsbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bTargetsbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)ZSetframeprocessingcompletionblockbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)tFrameprocessingcompletionblockbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)BNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)GSetinputframebufferatindexbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)SNextavailabletextureindexbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)BSetinputsizeatindexbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)oSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)nForceprocessingatsizebm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)QForceprocessingatsizerespectingaspectratiobm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)KMaximumoutputsizebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)rEndprocessingbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)SWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)NSetcurrentlyreceivingmonochromeinputbm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
