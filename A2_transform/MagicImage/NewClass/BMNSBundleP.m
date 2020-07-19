#import "BMNSBundleP.h"
@implementation BMNSBundleP
+ (BOOL)dPreferredscalesbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)oPathforscaledresourceoftypeindirectorybmbm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)iPathforscaledresourceoftypebmbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)PPathforscaledresourceoftypeindirectorybmbm:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
