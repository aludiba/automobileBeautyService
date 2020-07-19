#import "GPUImageMovie.h"
@interface GPUImageMovieComposition : GPUImageMovie
@property (readwrite, retain) AVComposition *compositon;
@property (readwrite, retain) AVVideoComposition *videoComposition;
@property (readwrite, retain) AVAudioMix *audioMix;
- (id)initWithComposition:(AVComposition*)compositon
      andVideoComposition:(AVVideoComposition*)videoComposition
              andAudioMix:(AVAudioMix*)audioMix;
@end
