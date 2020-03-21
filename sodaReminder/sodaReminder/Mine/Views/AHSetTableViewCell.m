//
//  AHSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHSetTableViewCell.h"
#import "AHSetViewModel.h"
@interface AHSetTableViewCell()
@property(nonatomic, strong)UILabel *AHtitleLbl;
@property(nonatomic, strong)UILabel *AHcontentLbl;
@property(nonatomic, strong)UIImageView *AHarrowImgView;
@end
@implementation AHSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.AHtitleLbl];
        [self.contentView addSubview:self.AHcontentLbl];
        [self.contentView addSubview:self.AHarrowImgView];
        
        [self.AHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(AHWIDTH * 0.5);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.AHarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.AHcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.AHarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AHWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setAHmodel:(AHSetViewModel *)AHmodel{
    _AHmodel = AHmodel;
    self.AHtitleLbl.text = _AHmodel.AHtitle;
    self.AHcontentLbl.text = _AHmodel.AHcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)AHtitleLbl{
    if (!_AHtitleLbl) {
        _AHtitleLbl = [[UILabel alloc] init];
        _AHtitleLbl.textColor = [UIColor blackColor];
        _AHtitleLbl.font = [UIFont systemFontOfSize:24];
    }
    return _AHtitleLbl;
}
- (UILabel *)AHcontentLbl{
    if (!_AHcontentLbl) {
        _AHcontentLbl = [[UILabel alloc] init];
        _AHcontentLbl.textAlignment = NSTextAlignmentRight;
        _AHcontentLbl.textColor = [UIColor whiteColor];
        _AHcontentLbl.font = [UIFont boldSystemFontOfSize:25];
    }
    return _AHcontentLbl;
}
- (UIImageView *)AHarrowImgView{
    if (!_AHarrowImgView) {
        _AHarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"AH_arrow_right"]];
    }
    return _AHarrowImgView;
}
@end
