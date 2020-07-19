#import "BMRACSequenceH.h"
@implementation BMRACSequenceH
+ (BOOL)xSequencewithheadblocktailblockbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)pHeadbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)xTailbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)WEmptybm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)ZReturnbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)WBindbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)OBindpassingthroughvaluesfromsequencebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)vConcatbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)eZipwithbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)RArraybm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)wObjectenumeratorbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)uSignalbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)USignalwithschedulerbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)RFoldleftwithstartreducebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)bFoldrightwithstartreducebm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)GAnybm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)DAllbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)WObjectpassingtestbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)oEagersequencebm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)GLazysequencebm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)ECopywithzonebm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)qClassforcoderbm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)HInitwithcoderbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)XEncodewithcoderbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)fCountbyenumeratingwithstateobjectscountbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)NHashbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)WIsequalbm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
