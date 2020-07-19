#import "BKMIMoreVC.h"
#import "BKMIMoreHeaderView.h"
#import "BKMIMoreCell.h"
#import "BKMIFeedbackVC.h"
#import "BKMILoginVC.h"
@interface BKMIMoreVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSArray *BKtitleArray;
@property (nonatomic, strong) NSArray *BKimageArray;
@property (nonatomic, strong) BKMIMoreHeaderView *BKheaderView;
@end
@implementation BKMIMoreVC
- (UITableView *)BKtableView{
    if (!_BKtableView) {
        _BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _BKtableView.backgroundColor = RGB(242, 242, 242);
        _BKtableView.delegate = self;
        _BKtableView.dataSource = self;
    }
    return _BKtableView;
}
- (void)viewWillAppear:(BOOL)BKanimated{
    [super viewWillAppear:BKanimated];
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewWillDisappear:(BOOL)BKanimated{
    [super viewWillDisappear:BKanimated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGB(242, 242, 242);
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view).offset(-StatusBarHeight)
    .bottomEqualToView(self.view);
    BKMIMoreHeaderView *BKheaderView = [[BKMIMoreHeaderView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScareValue(160, ScreenWidth))];
    self.BKheaderView = BKheaderView;
    [BKheaderView BKupdateViews];
    if (@available(iOS 9.0, *)) {
        BKheaderView.backgroundColor = [UIColor systemGreenColor];
    } else {
        BKheaderView.backgroundColor = [UIColor greenColor];
    }
    BKheaderView.block = ^{
        if (!UserId) {
            BKMILoginVC *BKlogVC = [[BKMILoginVC alloc] init];
            UINavigationController *BKnavi = [[UINavigationController alloc] initWithRootViewController:BKlogVC];
            [self presentViewController:BKnavi animated:YES completion:nil];
        }
    };
    self.BKtableView.tableHeaderView = BKheaderView;
    UILabel *BKbottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 40)];
    BKbottomLabel.textColor = UIColor.grayColor;
    BKbottomLabel.textAlignment = NSTextAlignmentCenter;
    BKbottomLabel.font = [UIFont systemFontOfSize:12];
    NSDictionary *BKinfoDictionary = [[NSBundle mainBundle] infoDictionary];
    BKbottomLabel.text = [NSString stringWithFormat:@"Version:%@",[BKinfoDictionary objectForKey:@"CFBundleShortVersionString"]];
    self.BKtableView.tableFooterView = BKbottomLabel;
    self.BKtitleArray = @[@[@"Feed Back",@"Contact Us",@"Share"],@[@"Terms Of Service",@"Privacy Policy"]];
    self.BKimageArray = @[@[@"feed",@"contact",@"share"],@[@"termsOfService",@"privacyPolicy"]];
    [NotifiCenter addObserver:self selector:@selector(BKloadData) name:@"loginSuccess" object:nil];
}
- (void)BKloadData{
    [self.BKheaderView BKupdateViews];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.BKtitleArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.BKimageArray[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)BKtableView cellForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMIMoreCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"BKcell"];
    if (!BKcell) {
        BKcell = [[BKMIMoreCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"BKcell"];
    }
    BKcell.BKtitleLabel.text = self.BKtitleArray[BKindexPath.section][BKindexPath.row];
    return BKcell;
}
- (void)tableView:(UITableView *)BKtableView didSelectRowAtIndexPath:(NSIndexPath *)BKindexPath{
    if (BKindexPath.section == 0) {
        if (BKindexPath.row == 0) {
            BKMIFeedbackVC *BKfeedback = [[BKMIFeedbackVC alloc] init];
            [self.navigationController pushViewController:BKfeedback animated:YES];
        }else if (BKindexPath.row == 1){
            NSString *BKmailStr = [NSString stringWithFormat:@"mailto://%@",@"photoedit7a@163.com"];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:BKmailStr]];
        }else{
            [self BKshare];
        }
    }else{
        if (BKindexPath.row == 0) {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/termsDetail",LSBaseUrl]] ];
        }else if (BKindexPath.row == 1){
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/privacyDetail",LSBaseUrl]] ];
        }else{
            [UserDefaults removeObjectForKey:@"user_id"];
            [UserDefaults synchronize];
            [[NSNotificationCenter  defaultCenter] postNotificationName:@"loginOut" object:nil];
            BKMILoginVC *BKlogVC = [[BKMILoginVC alloc] init];
            UINavigationController *BKnavi = [[UINavigationController alloc] initWithRootViewController:BKlogVC];
            [self presentViewController:BKnavi animated:YES completion:nil];
            [self.BKheaderView BKupdateViews];
        }
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 55;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
- (void)BKshare{
    NSString *BKtextToShare;
    NSString *BKcontextShare;
    UIImage *BKimageToShare;
    BKtextToShare = @"Get More Pic Collage Edit";
    BKcontextShare = @"https://www.apple.com/cn/itunes";
    BKimageToShare = [UIImage imageNamed:@"AppIcon"];
    NSURL *BKurlToShare = [NSURL URLWithString:BKcontextShare];
    NSArray *BKactivityItems = @[BKtextToShare,BKimageToShare,BKurlToShare];
    NSArray *BKactivities = @[];
    UIActivityViewController *BKactivityVC = [[UIActivityViewController alloc] initWithActivityItems:BKactivityItems applicationActivities:BKactivities];
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0){
        UIActivityViewControllerCompletionWithItemsHandler BKmyBlock = ^(NSString *BKactivityType,BOOL BKcompleted,NSArray *BKreturnedItems,NSError *BKactivityError)
        {
            if (BKcompleted)
            {
            }
            else
            {
            }
        };
        BKactivityVC.completionWithItemsHandler = BKmyBlock;
    }else{
        UIActivityViewControllerCompletionHandler BKmyBlock = ^(NSString *BKactivityType,BOOL BKcompleted)
        {
            if (BKcompleted)
            {
            }
            else
            {
            }
        };
        BKactivityVC.completionHandler = BKmyBlock;
    }
    BKactivityVC.excludedActivityTypes = @[];
    [self presentViewController:BKactivityVC animated:YES completion:nil];
}
@end
