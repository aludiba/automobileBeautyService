#import "BMBMRACEmptySignalLA.h"
@implementation BMBMRACEmptySignalLA
+ (BOOL)oFsetnamebm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)pFnamebm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)JAemptybm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)KDsubscribebm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
