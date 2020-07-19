#import "BMUIImageo.h"
@implementation BMUIImageo
+ (BOOL)NAnimatedimagewithanimatedgifdatabm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)QAnimatedimagewithanimatedgifurlbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
