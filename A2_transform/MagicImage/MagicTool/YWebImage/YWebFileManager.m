#import "YWebFileManager.h"
#import "YWebDataHandle.h"
@interface YWebFileManager ()
@property (nonatomic, strong)NSFileManager * fileManager; 
@end
@implementation YWebFileManager
+(instancetype)shareInstance
{
    static YWebFileManager * yWebFileManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        yWebFileManager = [[YWebFileManager alloc]init];
    });
    return yWebFileManager;
}
- (BOOL)folderIsExist:(NSString *)folderPath
{
    return [self.fileManager fileExistsAtPath:folderPath];
}
- (BOOL)fileIsExist:(NSString *)url
{
    NSString * path = [YWebDataHandle documentYWebImageFileAppendWithFolder:self.folder withFile:url];
    return [self.fileManager fileExistsAtPath:path];
}
-(UIImage *)imageWithURL:(NSString *)url
{
    if (![self fileIsExist:url])
    {
        return nil;
    }
    NSString * path = [YWebDataHandle documentYWebImageFileAppendWithFolder:self.folder withFile:url];
    return [UIImage  imageWithContentsOfFile:path];
}
-(BOOL)deleteAllCAchesWithFolder:(NSString *)folder Progress:(YWebManagerDeleteFileBlock)deleteProgressBlockHandle
                      Complete:(YWebManagerCompleteBlock)completeBlockHandle
{
    NSString * path = [YWebDataHandle documentYWebImageFileWithFolder:folder];
    NSLog(@"%@",path);
    if (![self folderIsExist:path])
    {
        completeBlockHandle();
        return true;
    }
    for (NSString * fileName in [self.fileManager subpathsAtPath:path])
    {
        NSString * fileAbsolutePath = [path stringByAppendingPathComponent:fileName];
        deleteProgressBlockHandle(fileName);
        [self.fileManager removeItemAtPath:fileAbsolutePath error:nil];
    }
    completeBlockHandle();
    return true;
}
-(BOOL)createDownFileWithFolder:(NSString *)folder
{
    NSString * path = [YWebDataHandle documentYWebImageFileWithFolder:folder];
    self.folder = folder;
    if ([self folderIsExist:path])
    {
        return true;
    }
    return [self.fileManager createDirectoryAtPath:path withIntermediateDirectories:true attributes:nil error:nil];
}
#pragma mark - Getter
-(NSFileManager *)fileManager
{
    return [NSFileManager defaultManager];
}
#pragma mark - File Size
- (long long) fileSizeAtPath:(NSString * ) filePath
{
    if ([self.fileManager fileExistsAtPath:filePath])
    {
        return [[self.fileManager attributesOfItemAtPath:filePath error:nil] fileSize];
    }
    return 0;
}
- (float ) folderSizeAtPath:(NSString *) folderPath
{
    if (![self.fileManager fileExistsAtPath:folderPath])
    {
        return 0;
    }
    long long folderSize = 0;
    for (NSString * fileName in [self.fileManager subpathsAtPath:folderPath])
    {
        NSString * fileAbsolutePath = [folderPath stringByAppendingPathComponent:fileName];
        folderSize += [self fileSizeAtPath:fileAbsolutePath];
    }
    return folderSize/(1024.0*1024.0);
}
@end
