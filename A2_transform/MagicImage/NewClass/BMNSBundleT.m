#import "BMNSBundleT.h"
@implementation BMNSBundleT
+ (BOOL)qPreferredscalesbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)wPathforscaledresourceoftypeindirectorybm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)yPathforscaledresourceoftypebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)SPathforscaledresourceoftypeindirectorybm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
