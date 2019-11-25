//
//  VTScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTScoreSummaryTableViewCell.h"
#import "VTScorecardViewModel.h"

@interface VTScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *VTFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *VTFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *VTSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *VTSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *VTThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *VTThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *VTFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *VTFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *VTFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *VTFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *VTTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *VTTotalScoreContentLbl;//总比分内容
@end

@implementation VTScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.VTFirstTitleLbl];
        [self.contentView addSubview:self.VTFirstContentLbl];
        [self.contentView addSubview:self.VTSecondTitleLbl];
        [self.contentView addSubview:self.VTSecondContentLbl];
        [self.contentView addSubview:self.VTThirdTitleLbl];
        [self.contentView addSubview:self.VTThirdContentLbl];
        [self.contentView addSubview:self.VTFourthTitleLbl];
        [self.contentView addSubview:self.VTFourthContentLbl];
        [self.contentView addSubview:self.VTFifthTitleLbl];
        [self.contentView addSubview:self.VTFifthContentLbl];
        [self.contentView addSubview:self.VTTotalScoreTitleLbl];
        [self.contentView addSubview:self.VTTotalScoreContentLbl];
        
        [self.VTFirstTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.VTFirstContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTFirstTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
           make.top.equalTo(self.contentView).offset(10);
                make.height.mas_equalTo(20);
        }];
        [self.VTSecondTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.VTFirstTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.VTSecondContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTSecondTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.VTFirstContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.VTThirdTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.VTSecondTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.VTThirdContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTThirdTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.VTSecondContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.VTFourthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.VTThirdTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.VTFourthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTFourthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.VTThirdContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.VTFifthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.VTFourthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
        }];
        [self.VTFifthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTFifthTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.VTFourthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
        [self.VTTotalScoreTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.VTFifthTitleLbl.mas_bottom).offset(5);
            make.width.mas_equalTo(VTWIDTH);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.VTTotalScoreContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.VTTotalScoreTitleLbl.mas_trailing).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.VTFifthContentLbl.mas_bottom).offset(5);
                 make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setVTModel:(VTScorecardViewModel *)VTModel{
    _VTModel = VTModel;
    for (int i = 0; i < _VTModel.VTBureauPointsArray.count; i++) {
        VTBureauPointsModel *bureauPointsModel = _VTModel.VTBureauPointsArray[i];
        if (bureauPointsModel.VTIndex == 0) {
            if (bureauPointsModel.VTtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.VTFirstContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.VTtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.VTIndex == 1){
            if (bureauPointsModel.VTtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.VTSecondContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.VTtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.VTIndex == 2){
            if (bureauPointsModel.VTtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.VTThirdContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.VTtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.VTIndex == 3){
            if (bureauPointsModel.VTtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.VTFourthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.VTtBureauScoreString,deadEvenString];
            }
        }else if (bureauPointsModel.VTIndex == 4){
            if (bureauPointsModel.VTtBureauScoreString.length) {
                NSString *deadEvenString;
                if (bureauPointsModel.whichWinType == scorecardWhichWinTypeMain) {
                    deadEvenString = NSLocalizedString(@"主胜", nil);
                }else{
                    deadEvenString = NSLocalizedString(@"客胜", nil);
                }
                self.VTFifthContentLbl.text = [NSString stringWithFormat:@"%@   %@",bureauPointsModel.VTtBureauScoreString,deadEvenString];
            }
        }
    }
    if (_VTModel.totalAcoreString.length) {
        self.VTTotalScoreContentLbl.text = _VTModel.totalAcoreString;
    }
    CGSize size = [self.VTFirstTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTFirstTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTFirstTitleLbl layoutIfNeeded];
    size = [self.VTSecondTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTSecondTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTSecondTitleLbl layoutIfNeeded];
    size = [self.VTThirdTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTThirdTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTThirdTitleLbl layoutIfNeeded];
    size = [self.VTFourthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTFourthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTFourthTitleLbl layoutIfNeeded];
    size = [self.VTFifthTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTFifthTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTFifthTitleLbl layoutIfNeeded];
    size = [self.VTTotalScoreTitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
    [self.VTTotalScoreTitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTTotalScoreTitleLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)VTFirstTitleLbl{
    if (!_VTFirstTitleLbl) {
        _VTFirstTitleLbl = [[UILabel alloc] init];
        [_VTFirstTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTFirstTitleLbl.textColor = [UIColor blackColor];
        _VTFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTFirstTitleLbl.numberOfLines = 0;
        _VTFirstTitleLbl.text = NSLocalizedString(@"第一局", nil);
        [_VTFirstTitleLbl sizeToFit];
    }
    return _VTFirstTitleLbl;
}
- (UILabel *)VTFirstContentLbl{
    if (!_VTFirstContentLbl) {
        _VTFirstContentLbl = [[UILabel alloc] init];
        [_VTFirstContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTFirstContentLbl.textColor = [UIColor blackColor];
        _VTFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _VTFirstContentLbl.numberOfLines = 0;
        _VTFirstContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTFirstContentLbl sizeToFit];
    }
    return _VTFirstContentLbl;
}
- (UILabel *)VTSecondTitleLbl{
    if (!_VTSecondTitleLbl) {
        _VTSecondTitleLbl = [[UILabel alloc] init];
        [_VTSecondTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTSecondTitleLbl.textColor = [UIColor blackColor];
        _VTSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTSecondTitleLbl.numberOfLines = 0;
        _VTSecondTitleLbl.text = NSLocalizedString(@"第二局", nil);
        [_VTSecondTitleLbl sizeToFit];
    }
    return _VTSecondTitleLbl;
}
- (UILabel *)VTSecondContentLbl{
    if (!_VTSecondContentLbl) {
        _VTSecondContentLbl = [[UILabel alloc] init];
        [_VTSecondContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTSecondContentLbl.textColor = [UIColor blackColor];
        _VTSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _VTSecondContentLbl.numberOfLines = 0;
        _VTSecondContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTSecondContentLbl sizeToFit];
    }
    return _VTSecondContentLbl;
}
- (UILabel *)VTThirdTitleLbl{
    if (!_VTThirdTitleLbl) {
        _VTThirdTitleLbl = [[UILabel alloc] init];
        [_VTThirdTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTThirdTitleLbl.textColor = [UIColor blackColor];
        _VTThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTThirdTitleLbl.numberOfLines = 0;
        _VTThirdTitleLbl.text = NSLocalizedString(@"第三局", nil);
        [_VTThirdTitleLbl sizeToFit];
    }
    return _VTThirdTitleLbl;
}
- (UILabel *)VTThirdContentLbl{
    if (!_VTThirdContentLbl) {
        _VTThirdContentLbl = [[UILabel alloc] init];
        [_VTThirdContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTThirdContentLbl.textColor = [UIColor blackColor];
        _VTThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _VTThirdContentLbl.numberOfLines = 0;
        _VTThirdContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTThirdContentLbl sizeToFit];
    }
    return _VTThirdContentLbl;
}
- (UILabel *)VTFourthTitleLbl{
    if (!_VTFourthTitleLbl) {
        _VTFourthTitleLbl = [[UILabel alloc] init];
        [_VTFourthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTFourthTitleLbl.textColor = [UIColor blackColor];
        _VTFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTFourthTitleLbl.numberOfLines = 0;
        _VTFourthTitleLbl.text = NSLocalizedString(@"第四局", nil);
        [_VTFourthTitleLbl sizeToFit];
    }
    return _VTFourthTitleLbl;
}
- (UILabel *)VTFourthContentLbl{
    if (!_VTFourthContentLbl) {
        _VTFourthContentLbl = [[UILabel alloc] init];
        [_VTFourthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTFourthContentLbl.textColor = [UIColor blackColor];
        _VTFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _VTFourthContentLbl.numberOfLines = 0;
        _VTFourthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTFourthContentLbl sizeToFit];
    }
    return _VTFourthContentLbl;
}
- (UILabel *)VTFifthTitleLbl{
    if (!_VTFifthTitleLbl) {
        _VTFifthTitleLbl = [[UILabel alloc] init];
        [_VTFifthTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTFifthTitleLbl.textColor = [UIColor blackColor];
        _VTFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTFifthTitleLbl.numberOfLines = 0;
        _VTFifthTitleLbl.text = NSLocalizedString(@"第五局", nil);
        [_VTFifthTitleLbl sizeToFit];
    }
    return _VTFifthTitleLbl;
}
- (UILabel *)VTFifthContentLbl{
    if (!_VTFifthContentLbl) {
        _VTFifthContentLbl = [[UILabel alloc] init];
        [_VTFifthContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTFifthContentLbl.textColor = [UIColor blackColor];
        _VTFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _VTFifthContentLbl.numberOfLines = 0;
        _VTFifthContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTFifthContentLbl sizeToFit];
    }
    return _VTFifthContentLbl;
}
- (UILabel *)VTTotalScoreTitleLbl{
    if (!_VTTotalScoreTitleLbl) {
        _VTTotalScoreTitleLbl = [[UILabel alloc] init];
        [_VTTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:15]];
        _VTTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _VTTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _VTTotalScoreTitleLbl.numberOfLines = 0;
        _VTTotalScoreTitleLbl.text = NSLocalizedString(@"总比分", nil);
        [_VTTotalScoreTitleLbl sizeToFit];
    }
    return _VTTotalScoreTitleLbl;
}
- (UILabel *)VTTotalScoreContentLbl{
    if (!_VTTotalScoreContentLbl) {
        _VTTotalScoreContentLbl = [[UILabel alloc] init];
        [_VTTotalScoreContentLbl setFont:[UIFont boldSystemFontOfSize:18]];
        _VTTotalScoreContentLbl.textColor = [UIColor blackColor];
        _VTTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _VTTotalScoreContentLbl.numberOfLines = 0;
        _VTTotalScoreContentLbl.text = NSLocalizedString(@"暂无数据", nil);
        [_VTTotalScoreContentLbl sizeToFit];
    }
    return _VTTotalScoreContentLbl;
}
@end
