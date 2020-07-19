#import "BKMIWebVC.h"
#import <WebKit/WebKit.h>
@interface BKMIWebVC ()
@property (nonatomic, strong) WKWebView *BKmywebView;
@end
@implementation BKMIWebVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.BKmywebView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-NavBarHeight)];
    [self.view addSubview:self.BKmywebView];
    NSURLRequest *BKrequest = [NSURLRequest requestWithURL:[NSURL URLWithString:self.BKurlStr]];
    [self.BKmywebView loadRequest:BKrequest];
}
@end
