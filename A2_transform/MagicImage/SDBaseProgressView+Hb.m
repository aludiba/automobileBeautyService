#import "SDBaseProgressView+Hb.h"
@implementation SDBaseProgressView (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)setProgressHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)setCenterProgressTextWithattributesHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)dismissHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)progressViewHb:(NSInteger)hb {
    return hb % 15 == 0;
}

@end
