#import "YWebDownManager.h"
#import "YWebDataHandle.h"
#import "YWebFileManager.h"
@interface YWebDownManager ()<NSURLSessionDownloadDelegate>
@property (nonatomic, copy)NSString * imagePath;        
@property (nonatomic, strong)NSURL * imageURL;          
@property (nonatomic, copy)NSString * imageName;        
@property (nonatomic, copy)NSString * documentPath;     
@property (nonatomic, copy)NSData * currentData;        
@property (nonatomic, strong)NSURLSession * session;                    
@property (nonatomic, strong)NSURLSessionDownloadTask * downLoadTask;   
@property (nonatomic, copy)DownManagerFinishBlock finishBlockHandle;        
@property (nonatomic, copy)DownManagerProgressBlock progressBlockHandle;    
@end
@implementation YWebDownManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:nil];
        self.currentData = nil;
    }
    return self;
}
#pragma mark - 设置回调的方法
-(void)downManagerFinishBlockHandle:(DownManagerFinishBlock)downManagerFinishBlockHandle
{
    self.finishBlockHandle = downManagerFinishBlockHandle;
}
-(void)downManagerProgressBlockHandle:(DownManagerProgressBlock)downManagerProgressBlockHandle
{
    self.progressBlockHandle = downManagerProgressBlockHandle;
}
#pragma mark - 开始下载图片的方法
-(void)startDownImagePath:(NSString *)imagePath
{
    [self pauseDown];
    if ([[YWebFileManager shareInstance] fileIsExist:imagePath])
    {
        NSString * path = [YWebDataHandle documentYWebImageFileAppendBase64File:imagePath];
        NSLog(@"path = %@",path);
        dispatch_async(dispatch_get_main_queue(), ^{
            if(self.finishBlockHandle)
            {
                self.finishBlockHandle(path);
            }
        });
        return;
    }
    _imagePath = imagePath;
    NSURL * downURL = [[NSURL alloc]initWithString:_imagePath];
    [self startDownImageURL:downURL];
}
- (void)startDownImageURL:(NSURL *)imageURL
{
    self.currentData = [[NSUserDefaults standardUserDefaults] valueForKey:imageURL.absoluteString];
    if (self.currentData)
    {
        [self resumeDown];
    }
    else
    {
        _imageURL = imageURL;
        NSURLRequest * request = [NSURLRequest requestWithURL:_imageURL];
        self.downLoadTask = [self.session downloadTaskWithRequest:request];
        [self.downLoadTask resume];
    }
}
-(void)pauseDown
{
    [self.downLoadTask cancelByProducingResumeData:^(NSData * _Nullable resumeData) {
        if(self.imageURL)
        {
            [[NSUserDefaults standardUserDefaults] setValue:resumeData forKey:self.imageName];
        }
    }];
    _downLoadTask = nil;
}
- (void)resumeDown
{
    self.downLoadTask = [self.session downloadTaskWithResumeData:self.currentData];
    [self.downLoadTask resume];
}
#pragma mark - NSURLSessionDownload Delegate
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
didFinishDownloadingToURL:(NSURL *)location
{
    NSString * path = [YWebDataHandle documentYWebImageFileAppendWithFolder:self.folder withFile:self.imageName];
    [[YWebFileManager shareInstance] createDownFileWithFolder:self.folder];
    NSURL * url = [NSURL fileURLWithPath:path];
    NSFileManager * fileManager = [NSFileManager defaultManager];
    [fileManager moveItemAtURL:location toURL:url error:nil];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:self.imageName];
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self.finishBlockHandle) {
            self.finishBlockHandle(path);
        }
    });
}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask
      didWriteData:(int64_t)bytesWritten
 totalBytesWritten:(int64_t)totalBytesWritten
totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self.progressBlockHandle) {
            self.progressBlockHandle(bytesWritten,totalBytesWritten,totalBytesExpectedToWrite);
        }
    });
}
#pragma mark - Document Path
- (NSString *)documentPath
{
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) firstObject];
}
#pragma mark - Image Name Base64
-(NSString *)imageName
{
    return [YWebDataHandle imageNameForBase64Handle:_imageURL.absoluteString];
}
@end
