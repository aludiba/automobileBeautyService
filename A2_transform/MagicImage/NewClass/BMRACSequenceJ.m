#import "BMRACSequenceJ.h"
@implementation BMRACSequenceJ
+ (BOOL)YSequencewithheadblockRTailblock:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)chead:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)Mtail:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)mempty:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)HReturn:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)KBind:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)zBindiPassingthroughvaluesfromsequence:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)yConcat:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)fZipwith:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)Qarray:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dobjectEnumerator:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)jsignal:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)lSignalwithscheduler:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)IFoldleftwithstarteReduce:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)kFoldrightwithstartiReduce:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)hAny:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)AAll:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)HObjectpassingtest:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)PeagerSequence:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)SlazySequence:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)aCopywithzone:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)gclassForCoder:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)FInitwithcoder:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)aEncodewithcoder:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)fCountbyenumeratingwithstateuObjectsqCount:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)Vhash:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)iIsequal:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
