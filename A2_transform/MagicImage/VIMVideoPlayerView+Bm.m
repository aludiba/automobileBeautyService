#import "VIMVideoPlayerView+Bm.h"
@implementation VIMVideoPlayerView (Bm)
+ (BOOL)deallocBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)initWithFrameBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)commonInitBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setPlayerBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)setVideoFillModeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)attachPlayerBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)detachPlayerBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)layerClassBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)videoPlayerIsReadyToPlayVideoBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)videoPlayerDidReachEndBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)videoPlayerTimedidchangeBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)videoPlayerLoadedtimerangedidchangeBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)videoPlayerPlaybackBufferEmptyBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)videoPlayerPlaybackLikelyToKeepUpBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)videoPlayerDidfailwitherrorBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
