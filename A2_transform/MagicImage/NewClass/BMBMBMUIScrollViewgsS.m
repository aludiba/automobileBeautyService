#import "BMBMBMUIScrollViewgsS.h"
@implementation BMBMBMUIScrollViewgsS
+ (BOOL)iXtsetshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)VCsshouldignorescrollingadjustment:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)CObsetshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)jCdshouldignorecontentinsetadjustment:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)GJlsetshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)THsshouldrestorescrollviewcontentoffset:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
