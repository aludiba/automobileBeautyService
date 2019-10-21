//
//  GASetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GASetTableViewCell.h"
#import "GASetViewModel.h"
@interface GASetTableViewCell()
@property(nonatomic, strong)UILabel *GAtitleLbl;
@property(nonatomic, strong)UILabel *GAcontentLbl;
@property(nonatomic, strong)UIImageView *GAarrowImgView;
@end
@implementation GASetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.GAtitleLbl];
        [self.contentView addSubview:self.GAcontentLbl];
        [self.contentView addSubview:self.GAarrowImgView];
        
        [self.GAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(25);
            make.width.mas_equalTo(GAWIDTH * 0.5 - 20);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-25);
        }];
        [self.GAarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.GAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.GAarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(GAWIDTH * 0.5 - 5 - 22 - 16);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setModel:(GASetViewModel *)model{
    _model = model;
    self.GAtitleLbl.text = _model.GAtitle;
    self.GAcontentLbl.text = _model.GAcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)GAtitleLbl{
    if (!_GAtitleLbl) {
        _GAtitleLbl = [[UILabel alloc] init];
        _GAtitleLbl.textColor = [UIColor blackColor];
        _GAtitleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _GAtitleLbl;
}
- (UILabel *)GAcontentLbl{
    if (!_GAcontentLbl) {
        _GAcontentLbl = [[UILabel alloc] init];
        _GAcontentLbl.textAlignment = NSTextAlignmentRight;
        _GAcontentLbl.textColor = [UIColor blackColor];
        _GAcontentLbl.font = [UIFont boldSystemFontOfSize:22];
    }
    return _GAcontentLbl;
}
- (UIImageView *)GAarrowImgView{
    if (!_GAarrowImgView) {
        _GAarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GA_arrow_right"]];
    }
    return _GAarrowImgView;
}
@end
