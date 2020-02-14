//
//  PVYWKSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKSetTableViewCell.h"
#import "PVYWKSetViewModel.h"
@interface PVYWKSetTableViewCell()
@property(nonatomic, strong)UILabel *PVYWKtitleLbl;
@property(nonatomic, strong)UILabel *PVYWKcontentLbl;
@property(nonatomic, strong)UIImageView *PVYWKarrowImgView;
@end
@implementation PVYWKSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PVYWKtitleLbl];
        [self.contentView addSubview:self.PVYWKcontentLbl];
        [self.contentView addSubview:self.PVYWKarrowImgView];
        
        [self.PVYWKtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(PVYWKWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.PVYWKarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.PVYWKcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.PVYWKarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PVYWKWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(PVYWKSetViewModel *)model{
    _model = model;
    self.PVYWKtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PVYWKtitle];
    CGSize size = [self.PVYWKtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.PVYWKtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKtitleLbl layoutIfNeeded];
    if (_model.PVYWKcontent.length) {
        self.PVYWKcontentLbl.hidden = NO;
    self.PVYWKcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PVYWKcontent];
    size = [self.PVYWKcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.PVYWKcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKcontentLbl layoutIfNeeded];
    }else{
        self.PVYWKcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PVYWKtitleLbl{
    if (!_PVYWKtitleLbl) {
        _PVYWKtitleLbl = [[UILabel alloc] init];
        _PVYWKtitleLbl.textColor = [UIColor blackColor];
        _PVYWKtitleLbl.font = [UIFont systemFontOfSize:18];
        _PVYWKtitleLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKtitleLbl.layer.cornerRadius = 14.0f;
        _PVYWKtitleLbl.layer.masksToBounds = YES;
        _PVYWKtitleLbl.layer.borderWidth = 1.0f;
        _PVYWKtitleLbl.layer.borderColor = [UIColor systemGrayColor].CGColor;
    }
    return _PVYWKtitleLbl;
}
- (UILabel *)PVYWKcontentLbl{
    if (!_PVYWKcontentLbl) {
        _PVYWKcontentLbl = [[UILabel alloc] init];
        _PVYWKcontentLbl.textColor = [UIColor blackColor];
        _PVYWKcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _PVYWKcontentLbl.backgroundColor = [UIColor cyanColor];
        _PVYWKcontentLbl.layer.cornerRadius = 16.0f;
        _PVYWKcontentLbl.layer.masksToBounds = YES;
        _PVYWKcontentLbl.layer.borderWidth = 1.0f;
        _PVYWKcontentLbl.layer.borderColor = [UIColor systemGrayColor].CGColor;
    }
    return _PVYWKcontentLbl;
}
- (UIImageView *)PVYWKarrowImgView{
    if (!_PVYWKarrowImgView) {
        _PVYWKarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PVYWK_arrow_right"]];
    }
    return _PVYWKarrowImgView;
}
@end
