#import "BMBMGPUImageColorPackingFilterUG.h"
@implementation BMBMGPUImageColorPackingFilterUG
+ (BOOL)MYinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)jXsetupfilterforsize:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)qPsizeoffbo:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)CKoutputframesize:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
