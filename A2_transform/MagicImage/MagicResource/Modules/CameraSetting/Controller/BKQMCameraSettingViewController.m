#import "BKQMCameraSettingViewController.h"
#import <Masonry.h>
#import "BKQMSettingModel.h"
#import "UIColor+Additions.h"
#import "BKQMSettingTableViewCell.h"
@interface BKQMCameraSettingViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSDictionary<NSNumber *, NSArray<BKQMSettingModel *> *> *BKsettingModels;
@end
@implementation BKQMCameraSettingViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self BKsetupUI];
    [self BKsetupDatas];
}
- (BOOL)BKprefersStatusBarHidden
{
    return NO;
}
- (UIStatusBarStyle)BKpreferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}
- (void)BKsetupUI
{
    self.view.backgroundColor = [UIColor colorWithRGBHex:0xF7F8F8];
    UILabel *BKtitle = [[UILabel alloc] initWithFrame:CGRectZero];
    BKtitle.textAlignment = NSTextAlignmentCenter;
    BKtitle.text = @"Setting";
    BKtitle.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:BKtitle];
    [BKtitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.height.mas_equalTo(60);
        make.left.mas_equalTo(30);
        make.right.mas_equalTo(-30);
        make.top.mas_equalTo(15);
    }];
    UIButton *BKbackBtn = [[UIButton alloc] initWithFrame:CGRectZero];
    [BKbackBtn setImage:[UIImage imageNamed:@"qm_setting_back_btn"] forState:UIControlStateNormal];
    [self.view addSubview:BKbackBtn];
    [BKbackBtn addTarget:self action:@selector(BKbackBtnTapped:) forControlEvents:UIControlEventTouchUpInside];
    [BKbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(25);
        make.top.mas_equalTo(35);
        make.left.mas_offset(10);
    }];
    UIView *BKtitleSlider = [[UIView alloc] initWithFrame:CGRectZero];
    BKtitleSlider.backgroundColor = [UIColor colorWithRGBHex:0xebedee];
    [self.view addSubview:BKtitleSlider];
    [BKtitleSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1);
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(70);
    }];
    UITableView *BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    BKtableView.rowHeight = 55;
    BKtableView.dataSource = self;
    BKtableView.delegate = self;
    BKtableView.separatorColor = [UIColor colorWithRGBHex:0xebedee];
    [BKtableView registerNib:[UINib nibWithNibName:@"BKQMSettingTableViewCell" bundle:nil] forCellReuseIdentifier:@"BKQMSettingTableViewCell"];
    [self.view addSubview:BKtableView];
    [BKtableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.mas_equalTo(10);
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(BKtitleSlider.mas_bottom).mas_equalTo(0);
    }];
}
- (void)BKsetupDatas
{
    _BKsettingModels = [BKQMSettingModel buildSettingModels];
}
#pragma mark - Event
- (void)BKbackBtnTapped:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _BKsettingModels.count;
}
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _BKsettingModels[@(section)].count;;
}
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)BKtableView cellForRowAtIndexPath:(nonnull NSIndexPath *)BKindexPath
{
    BKQMSettingModel *BKmodel = _BKsettingModels[@(BKindexPath.section)][BKindexPath.row];
    BKQMSettingTableViewCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"BKQMSettingTableViewCell"];
    [BKcell setSettingModelType:BKmodel.settingType];
    BKcell.label.text = BKmodel.name;
    BKcell.switcher.on = BKmodel.switchOn;
    return BKcell;
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForHeaderInSection:(NSInteger)BKsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)BKtableView viewForHeaderInSection:(NSInteger)BKsection{
    return [UIView new];
}
- (void)tableView:(UITableView *)BKtableView didSelectRowAtIndexPath:(NSIndexPath *)BKindexPath
{
    [BKtableView deselectRowAtIndexPath:BKindexPath animated:NO];
}
@end
