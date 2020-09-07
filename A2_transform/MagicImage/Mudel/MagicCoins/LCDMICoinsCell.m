#import "LCDMICoinsCell.h"
#import "LCDMICoinsModel.h"
@interface LCDMICoinsCell ()
@property (nonatomic, strong) UILabel * LCDcoinsLabel;
@property (nonatomic, strong) UILabel * LCDnumberLabel;
@end
@implementation LCDMICoinsCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        UIView * LCDbgView = [[UIView alloc] init];
        LCDbgView.layer.cornerRadius = 10;
        LCDbgView.layer.masksToBounds = YES;
        LCDbgView.backgroundColor = UIColor.whiteColor;
        [self.contentView addSubview:LCDbgView];
        LCDbgView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 5);
        UIImageView * LCDimageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"yb"]];
        [LCDbgView addSubview:LCDimageView];
        LCDimageView.sd_layout
        .leftSpaceToView(LCDbgView, 10)
        .centerYEqualToView(LCDbgView)
        .heightIs(25)
        .widthIs(25);
        self.LCDcoinsLabel = [[UILabel alloc] init];
        self.LCDcoinsLabel.font = [UIFont systemFontOfSize:14];
        self.LCDcoinsLabel.textColor = [UIColor blackColor];
        [LCDbgView addSubview:self.LCDcoinsLabel];
        self.LCDcoinsLabel.sd_layout
        .leftSpaceToView(LCDimageView, 5)
        .centerYEqualToView(LCDimageView)
        .autoHeightRatio(0);
        [self.LCDcoinsLabel setSingleLineAutoResizeWithMaxWidth:180];
        self.LCDnumberLabel = [[UILabel alloc] init];
        self.LCDnumberLabel.textColor = [UIColor orangeColor];
        self.LCDnumberLabel.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.LCDnumberLabel];
        self.LCDnumberLabel.sd_layout
        .rightSpaceToView(LCDbgView, 10)
        .centerYEqualToView(LCDbgView)
        .autoHeightRatio(0);
        [self.LCDnumberLabel setSingleLineAutoResizeWithMaxWidth:180];
    }
    return self;
}
- (void)setLCDmodel:(LCDMICoinsModel *)LCDmodel{
    LCDmodel = LCDmodel;
    self.LCDnumberLabel.text = [NSString stringWithFormat:@"$%@",LCDmodel.goods_price];
    self.LCDcoinsLabel.text = [NSString stringWithFormat:@"X %ld",LCDmodel.goods_num];
}
@end
