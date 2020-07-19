#import "BMUIViewT+Bm.h"
@implementation BMUIViewT (Bm)
+ (BOOL)KSetkeyboarddistancefromtextfieldBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MkeyboardDistanceFromTextFieldBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)JSetignoreswitchingbynextpreviousBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)IignoreSwitchingByNextPreviousBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)FSetenablemodeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)YenableModeBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)PSetshouldresignontouchoutsidemodeBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)NshouldResignOnTouchOutsideModeBm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
