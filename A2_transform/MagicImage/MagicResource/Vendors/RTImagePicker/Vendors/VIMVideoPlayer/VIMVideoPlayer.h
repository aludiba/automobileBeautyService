#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@class AVPlayer;
@class VIMVideoPlayer;
@protocol VIMVideoPlayerDelegate <NSObject>
@optional
- (void)videoPlayerIsReadyToPlayVideo:(VIMVideoPlayer *)videoPlayer;
- (void)videoPlayerDidReachEnd:(VIMVideoPlayer *)videoPlayer;
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer timeDidChange:(CMTime)cmTime;
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer loadedTimeRangeDidChange:(float)duration;
- (void)videoPlayerPlaybackBufferEmpty:(VIMVideoPlayer *)videoPlayer;
- (void)videoPlayerPlaybackLikelyToKeepUp:(VIMVideoPlayer *)videoPlayer;
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer didFailWithError:(NSError *)error;
@end
@interface VIMVideoPlayer : NSObject
@property (nonatomic, weak) id<VIMVideoPlayerDelegate> delegate;
@property (nonatomic, strong, readonly) AVPlayer *player;
@property (nonatomic, assign, getter=isPlaying, readonly) BOOL playing;
@property (nonatomic, assign, getter=isLooping) BOOL looping;
@property (nonatomic, assign, getter=isMuted) BOOL muted;
- (void)setURL:(NSURL *)URL;
- (void)setPlayerItem:(AVPlayerItem *)playerItem;
- (void)setAsset:(AVAsset *)asset;
- (void)play;
- (void)pause;
- (void)seekToTime:(float)time;
- (void)reset;
- (void)enableAirplay;
- (void)disableAirplay;
- (BOOL)isAirplayEnabled;
- (void)enableTimeUpdates; 
- (void)disableTimeUpdates;
- (void)startScrubbing;
- (void)scrub:(float)time;
- (void)stopScrubbing;
- (void)setVolume:(float)volume;
- (void)fadeInVolume;
- (void)fadeOutVolume;
@end
