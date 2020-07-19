#import "BMUIButtonC.h"
@implementation BMUIButtonC
+ (BOOL)KAf_Imagedownloadreceiptforstate:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)mAf_SetimagedownloadreceiptAForstate:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)nAf_Backgroundimagedownloadreceiptforstate:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)XAf_SetbackgroundimagedownloadreceiptoForstate:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
