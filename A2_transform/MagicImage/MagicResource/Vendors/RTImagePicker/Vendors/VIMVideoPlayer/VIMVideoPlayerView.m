#import "VIMVideoPlayerView.h"
#import "VIMVideoPlayer.h"
#import <AVFoundation/AVFoundation.h>
@interface VIMVideoPlayerView () <VIMVideoPlayerDelegate>
@end
@implementation VIMVideoPlayerView
- (void)dealloc
{
    [self detachPlayer];
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self commonInit];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self commonInit];
    }
    return self;
}
- (void)commonInit
{
    _player = [[VIMVideoPlayer alloc] init];
    _player.muted = YES;
    _player.looping = YES;
    [self attachPlayer];
}
#pragma mark - Public API
- (void)setPlayer:(VIMVideoPlayer *)player
{
    if (_player == player)
    {
        return;
    }
    [self detachPlayer];
    _player = player;
    [self attachPlayer];
}
- (void)setVideoFillMode:(NSString *)fillMode
{
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    playerLayer.videoGravity = fillMode;
}
#pragma mark - Private API
- (void)attachPlayer
{
    if (_player)
    {
        _player.delegate = self;
        [(AVPlayerLayer *)[self layer] setPlayer:_player.player];
    }
}
- (void)detachPlayer
{
    if (_player && _player.delegate == self)
    {
        _player.delegate = nil;
    }
    [(AVPlayerLayer *)[self layer] setPlayer:nil];
}
+ (Class)layerClass
{
    return [AVPlayerLayer class];
}
#pragma mark - VideoPlayerDelegate
- (void)videoPlayerIsReadyToPlayVideo:(VIMVideoPlayer *)videoPlayer
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerViewIsReadyToPlayVideo:)])
    {
        [self.delegate videoPlayerViewIsReadyToPlayVideo:self];
    }
}
- (void)videoPlayerDidReachEnd:(VIMVideoPlayer *)videoPlayer
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerViewDidReachEnd:)])
    {
        [self.delegate videoPlayerViewDidReachEnd:self];
    }
}
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer timeDidChange:(CMTime)cmTime
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerView:timeDidChange:)])
    {
        [self.delegate videoPlayerView:self timeDidChange:cmTime];
    }
}
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer loadedTimeRangeDidChange:(float)duration
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerView:loadedTimeRangeDidChange:)])
    {
        [self.delegate videoPlayerView:self loadedTimeRangeDidChange:duration];
    }
}
- (void)videoPlayerPlaybackBufferEmpty:(VIMVideoPlayer *)videoPlayer
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerViewPlaybackBufferEmpty:)])
    {
        [self.delegate videoPlayerViewPlaybackBufferEmpty:self];
    }
}
- (void)videoPlayerPlaybackLikelyToKeepUp:(VIMVideoPlayer *)videoPlayer
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerViewPlaybackLikelyToKeepUp:)])
    {
        [self.delegate videoPlayerViewPlaybackLikelyToKeepUp:self];
    }
}
- (void)videoPlayer:(VIMVideoPlayer *)videoPlayer didFailWithError:(NSError *)error
{
    if ([self.delegate respondsToSelector:@selector(videoPlayerView:didFailWithError:)])
    {
        [self.delegate videoPlayerView:self didFailWithError:error];
    }
}
@end
