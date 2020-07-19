#import "BMGPUImageFilterGroupD.h"
@implementation BMGPUImageFilterGroupD
+ (BOOL)eInitbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)FAddfilterbmbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)YFilteratindexbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)sFiltercountbmbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)uUsenextframeforimagecapturebmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)JNewcgimagefromcurrentlyprocessedoutputbmbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ISettargettoignoreforupdatesbmbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)FAddtargetattexturelocationbmbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)IRemovetargetbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)CRemovealltargetsbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)KTargetsbmbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)CSetframeprocessingcompletionblockbmbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)OFrameprocessingcompletionblockbmbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)wNewframereadyattimeatindexbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)FSetinputframebufferatindexbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)BNextavailabletextureindexbmbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)NSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)ySetinputrotationatindexbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)MForceprocessingatsizebmbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)PForceprocessingatsizerespectingaspectratiobmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)NMaximumoutputsizebmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)cEndprocessingbmbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)FWantsmonochromeinputbmbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DSetcurrentlyreceivingmonochromeinputbmbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
