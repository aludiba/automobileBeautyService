#import "BKMITagsDetailCell.h"
#import "BKMITagsModel.h"
@interface BKMITagsDetailCell ()
@property (nonatomic, strong) UILabel * BKtitleLabel;
@property (nonatomic, strong) UILabel * BKcontentLabel;
@end
@implementation BKMITagsDetailCell
- (instancetype)initWithStyle:(UITableViewCellStyle)BKstyle reuseIdentifier:(NSString *)BKreuseIdentifier{
    if (self = [super initWithStyle:BKstyle reuseIdentifier:BKreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = UIColor.clearColor;
        UIImageView *BKbgImageView = [[UIImageView alloc] init];
        BKbgImageView.backgroundColor = UIColor.whiteColor;
        BKbgImageView.layer.cornerRadius = 10;
        BKbgImageView.layer.masksToBounds = YES;
        [self.contentView addSubview:BKbgImageView];
        BKbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 5)
        .rightSpaceToView(self.contentView, 5)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 5);
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.textColor = UIColor.blackColor;
        self.BKtitleLabel.font = FontBoldSize(18, ScreenWidth);
        [self.contentView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .autoHeightRatio(0)
        .rightSpaceToView(self.contentView, 80)
        .topSpaceToView(self.contentView, 15);
        self.BKcontentLabel = [[UILabel alloc] init];
        self.BKcontentLabel.textColor = UIColor.grayColor;
        self.BKcontentLabel.font = FontBoldSize(16, ScreenWidth);
        [self.contentView addSubview:self.BKcontentLabel];
        self.BKcontentLabel.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .rightSpaceToView(self.contentView, 15)
        .topSpaceToView(self.BKtitleLabel, 10)
        .autoHeightRatio(0);
        UIButton *BKcopyBtn = [[UIButton alloc] init];
        BKcopyBtn.tag = 300;
        [BKcopyBtn setTitle:@"Copy" forState:UIControlStateNormal];
        [BKcopyBtn setTitleColor:UIColor.orangeColor forState:UIControlStateNormal];
        [BKcopyBtn addTarget:self action:@selector(BKcopyBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        BKcopyBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        BKcopyBtn.layer.borderColor = UIColor.orangeColor.CGColor;
        BKcopyBtn.layer.borderWidth = 0.5;
        BKcopyBtn.layer.cornerRadius = 8;
        BKcopyBtn.layer.masksToBounds = YES;
        [self.contentView addSubview:BKcopyBtn];
        BKcopyBtn.sd_layout
        .rightSpaceToView(self.contentView, 15)
        .centerYEqualToView(self.BKtitleLabel)
        .widthIs(60)
        .heightIs(25);
        UIButton *BKsharBtn = [[UIButton alloc] init];
        [BKsharBtn setTitle:@"Share" forState:UIControlStateNormal];
        BKsharBtn.tag = 300+1;
        [BKsharBtn setTitleColor:UIColor.orangeColor forState:UIControlStateNormal];
        [BKsharBtn addTarget:self action:@selector(BKcopyBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        BKsharBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        BKsharBtn.layer.borderColor = UIColor.orangeColor.CGColor;
        BKsharBtn.layer.borderWidth = 0.5;
        BKsharBtn.layer.cornerRadius = 8;
        BKsharBtn.layer.masksToBounds = YES;
        [self.contentView addSubview:BKsharBtn];
        BKsharBtn.sd_layout
        .rightSpaceToView(BKcopyBtn, 5)
        .centerYEqualToView(self.BKtitleLabel)
        .widthIs(60)
        .heightIs(25);
        UIView *BKlineView = [[UIView alloc] init];
        BKlineView.backgroundColor = UIColor.groupTableViewBackgroundColor;
        [self.contentView addSubview:BKlineView];
        BKlineView.sd_layout
        .leftSpaceToView(self.contentView, 15)
        .rightSpaceToView(self.contentView, 15)
        .bottomEqualToView(self.contentView)
        .heightIs(1);
        [self setupAutoHeightWithBottomView:self.BKcontentLabel bottomMargin:10];
    }
    return self;
}
- (void)BKcopyBtnClicked:(UIButton *)BKsender{
    if (self.block) {
        self.block(BKsender.tag -300);
    }
}
- (void)setBKmodel:(BKMITagsModel *)BKmodel{
    self.BKtitleLabel.text = BKmodel.title;
    self.BKcontentLabel.text = BKmodel.content;
}
@end
