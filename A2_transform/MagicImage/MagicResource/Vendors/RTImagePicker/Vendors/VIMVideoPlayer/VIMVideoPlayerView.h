#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@class VIMVideoPlayer;
@class VIMVideoPlayerView;
@protocol VIMVideoPlayerViewDelegate <NSObject>
@optional
- (void)videoPlayerViewIsReadyToPlayVideo:(VIMVideoPlayerView *)videoPlayerView;
- (void)videoPlayerViewDidReachEnd:(VIMVideoPlayerView *)videoPlayerView;
- (void)videoPlayerView:(VIMVideoPlayerView *)videoPlayerView timeDidChange:(CMTime)cmTime;
- (void)videoPlayerView:(VIMVideoPlayerView *)videoPlayerView loadedTimeRangeDidChange:(float)duration;
- (void)videoPlayerViewPlaybackBufferEmpty:(VIMVideoPlayerView *)videoPlayerView;
- (void)videoPlayerViewPlaybackLikelyToKeepUp:(VIMVideoPlayerView *)videoPlayerView;
- (void)videoPlayerView:(VIMVideoPlayerView *)videoPlayerView didFailWithError:(NSError *)error;
@end
@interface VIMVideoPlayerView : UIView
@property (nonatomic, weak) id<VIMVideoPlayerViewDelegate> delegate;
@property (nonatomic, strong) VIMVideoPlayer *player;
- (void)setVideoFillMode:(NSString *)fillMode;
@end
