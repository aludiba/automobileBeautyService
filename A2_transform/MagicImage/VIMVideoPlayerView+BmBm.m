#import "VIMVideoPlayerView+BmBm.h"
@implementation VIMVideoPlayerView (BmBm)
+ (BOOL)deallocBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)initWithFrameBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)commonInitBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)setPlayerBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)setVideoFillModeBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)attachPlayerBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)detachPlayerBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)layerClassBmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)videoPlayerIsReadyToPlayVideoBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)videoPlayerDidReachEndBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)videoPlayerTimedidchangeBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)videoPlayerLoadedtimerangedidchangeBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)videoPlayerPlaybackBufferEmptyBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)videoPlayerPlaybackLikelyToKeepUpBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)videoPlayerDidfailwitherrorBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
