#import "hbBMTOCropScrollViewSh.h"
@implementation hbBMTOCropScrollViewSh
+ (BOOL)eUtouchesbeganwitheventbmbm:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)zPtouchesendedwitheventbmbm:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)RHtouchescancelledwitheventbmbm:(NSInteger)hb {
    return hb % 43 == 0;
}

@end
