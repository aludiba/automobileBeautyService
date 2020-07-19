#import "BMBKMIMoreHeaderViewv.h"
@implementation BMBKMIMoreHeaderViewv
+ (BOOL)jInitwithframe:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)MBktap:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)VBKupdateViews:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
