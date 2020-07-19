#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import "VIMVideoPlayer.h"
#import "VIMVideoPlayer+Bm.h"

@interface VIMVideoPlayer (BmHb)
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setupPlayerBmHb:(NSInteger)hb;
+ (BOOL)setupAudioSessionBmHb:(NSInteger)hb;
+ (BOOL)setURLBmHb:(NSInteger)hb;
+ (BOOL)setPlayerItemBmHb:(NSInteger)hb;
+ (BOOL)setAssetBmHb:(NSInteger)hb;
+ (BOOL)setMutedBmHb:(NSInteger)hb;
+ (BOOL)isMutedBmHb:(NSInteger)hb;
+ (BOOL)playBmHb:(NSInteger)hb;
+ (BOOL)pauseBmHb:(NSInteger)hb;
+ (BOOL)seekToTimeBmHb:(NSInteger)hb;
+ (BOOL)resetBmHb:(NSInteger)hb;
+ (BOOL)enableAirplayBmHb:(NSInteger)hb;
+ (BOOL)disableAirplayBmHb:(NSInteger)hb;
+ (BOOL)isAirplayEnabledBmHb:(NSInteger)hb;
+ (BOOL)startScrubbingBmHb:(NSInteger)hb;
+ (BOOL)scrubBmHb:(NSInteger)hb;
+ (BOOL)stopScrubbingBmHb:(NSInteger)hb;
+ (BOOL)enableTimeUpdatesBmHb:(NSInteger)hb;
+ (BOOL)disableTimeUpdatesBmHb:(NSInteger)hb;
+ (BOOL)setVolumeBmHb:(NSInteger)hb;
+ (BOOL)cancelFadeVolumeBmHb:(NSInteger)hb;
+ (BOOL)fadeInVolumeBmHb:(NSInteger)hb;
+ (BOOL)fadeOutVolumeBmHb:(NSInteger)hb;
+ (BOOL)reportUnableToCreatePlayerItemBmHb:(NSInteger)hb;
+ (BOOL)resetPlayerItemIfNecessaryBmHb:(NSInteger)hb;
+ (BOOL)preparePlayerItemBmHb:(NSInteger)hb;
+ (BOOL)restartBmHb:(NSInteger)hb;
+ (BOOL)isAtEndTimeBmHb:(NSInteger)hb;
+ (BOOL)calcLoadedDurationBmHb:(NSInteger)hb;
+ (BOOL)addPlayerObserversBmHb:(NSInteger)hb;
+ (BOOL)removePlayerObserversBmHb:(NSInteger)hb;
+ (BOOL)addPlayerItemObserversBmHb:(NSInteger)hb;
+ (BOOL)removePlayerItemObserversBmHb:(NSInteger)hb;
+ (BOOL)addTimeObserverBmHb:(NSInteger)hb;
+ (BOOL)removeTimeObserverBmHb:(NSInteger)hb;
+ (BOOL)observeValueForKeyPathOfobjectChangeContextBmHb:(NSInteger)hb;
+ (BOOL)playerItemDidPlayToEndTimeBmHb:(NSInteger)hb;

@end
