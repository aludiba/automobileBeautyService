//
//  PVScoreSummaryTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "PVScoreSummaryTableViewCell.h"
@interface PVScoreSummaryTableViewCell()
@property(nonatomic, strong)UILabel *PVFirstTitleLbl;//第一局标题
@property(nonatomic, strong)UILabel *PVFirstContentLbl;//第一局内容
@property(nonatomic, strong)UILabel *PVSecondTitleLbl;//第二局标题
@property(nonatomic, strong)UILabel *PVSecondContentLbl;//第二局内容
@property(nonatomic, strong)UILabel *PVThirdTitleLbl;//第三局标题
@property(nonatomic, strong)UILabel *PVThirdContentLbl;//第三局内容
@property(nonatomic, strong)UILabel *PVFourthTitleLbl;//第四局标题
@property(nonatomic, strong)UILabel *PVFourthContentLbl;//第四局内容
@property(nonatomic, strong)UILabel *PVFifthTitleLbl;//第五局标题
@property(nonatomic, strong)UILabel *PVFifthContentLbl;//第五局内容
@property(nonatomic, strong)UILabel *PVTotalScoreTitleLbl;//总比分标题
@property(nonatomic, strong)UILabel *PVTotalScoreContentLbl;//总比分内容
@end

@implementation PVScoreSummaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PVFirstTitleLbl];
        [self.contentView addSubview:self.PVFirstContentLbl];
        [self.contentView addSubview:self.PVSecondTitleLbl];
        [self.contentView addSubview:self.PVSecondContentLbl];
        [self.contentView addSubview:self.PVThirdTitleLbl];
        [self.contentView addSubview:self.PVThirdContentLbl];
        [self.contentView addSubview:self.PVFourthTitleLbl];
        [self.contentView addSubview:self.PVFourthContentLbl];
        [self.contentView addSubview:self.PVFifthTitleLbl];
        [self.contentView addSubview:self.PVFifthContentLbl];
        [self.contentView addSubview:self.PVTotalScoreTitleLbl];
        [self.contentView addSubview:self.PVTotalScoreContentLbl];
        
        
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)PVFirstTitleLbl{
    if (!_PVFirstTitleLbl) {
        _PVFirstTitleLbl = [[UILabel alloc] init];
        [_PVFirstTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVFirstTitleLbl.textColor = [UIColor blackColor];
        _PVFirstTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFirstTitleLbl.numberOfLines = 0;
        [_PVFirstTitleLbl sizeToFit];
    }
    return _PVFirstTitleLbl;
}
- (UILabel *)PVFirstContentLbl{
    if (!_PVFirstContentLbl) {
        _PVFirstContentLbl = [[UILabel alloc] init];
        [_PVFirstContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVFirstContentLbl.textColor = [UIColor blackColor];
        _PVFirstContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFirstContentLbl.numberOfLines = 0;
        [_PVFirstContentLbl sizeToFit];
    }
    return _PVFirstContentLbl;
}
- (UILabel *)PVSecondTitleLbl{
    if (!_PVSecondTitleLbl) {
        _PVSecondTitleLbl = [[UILabel alloc] init];
        [_PVSecondTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVSecondTitleLbl.textColor = [UIColor blackColor];
        _PVSecondTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVSecondTitleLbl.numberOfLines = 0;
        [_PVSecondTitleLbl sizeToFit];
    }
    return _PVSecondTitleLbl;
}
- (UILabel *)PVSecondContentLbl{
    if (!_PVSecondContentLbl) {
        _PVSecondContentLbl = [[UILabel alloc] init];
        [_PVSecondContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVSecondContentLbl.textColor = [UIColor blackColor];
        _PVSecondContentLbl.backgroundColor = [UIColor cyanColor];
        _PVSecondContentLbl.numberOfLines = 0;
        [_PVSecondContentLbl sizeToFit];
    }
    return _PVSecondContentLbl;
}
- (UILabel *)PVThirdTitleLbl{
    if (!_PVThirdTitleLbl) {
        _PVThirdTitleLbl = [[UILabel alloc] init];
        [_PVThirdTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVThirdTitleLbl.textColor = [UIColor blackColor];
        _PVThirdTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVThirdTitleLbl.numberOfLines = 0;
        [_PVThirdTitleLbl sizeToFit];
    }
    return _PVThirdTitleLbl;
}
- (UILabel *)PVThirdContentLbl{
    if (!_PVThirdContentLbl) {
        _PVThirdContentLbl = [[UILabel alloc] init];
        [_PVThirdContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVThirdContentLbl.textColor = [UIColor blackColor];
        _PVThirdContentLbl.backgroundColor = [UIColor cyanColor];
        _PVThirdContentLbl.numberOfLines = 0;
        [_PVThirdContentLbl sizeToFit];
    }
    return _PVThirdContentLbl;
}
- (UILabel *)PVFourthTitleLbl{
    if (!_PVFourthTitleLbl) {
        _PVFourthTitleLbl = [[UILabel alloc] init];
        [_PVFourthTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVFourthTitleLbl.textColor = [UIColor blackColor];
        _PVFourthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFourthTitleLbl.numberOfLines = 0;
        [_PVFourthTitleLbl sizeToFit];
    }
    return _PVFourthTitleLbl;
}
- (UILabel *)PVFourthContentLbl{
    if (!_PVFourthContentLbl) {
        _PVFourthContentLbl = [[UILabel alloc] init];
        [_PVFourthContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVFourthContentLbl.textColor = [UIColor blackColor];
        _PVFourthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFourthContentLbl.numberOfLines = 0;
        [_PVFourthContentLbl sizeToFit];
    }
    return _PVFourthContentLbl;
}
- (UILabel *)PVFifthTitleLbl{
    if (!_PVFifthTitleLbl) {
        _PVFifthTitleLbl = [[UILabel alloc] init];
        [_PVFifthTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVFifthTitleLbl.textColor = [UIColor blackColor];
        _PVFifthTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVFifthTitleLbl.numberOfLines = 0;
        [_PVFifthTitleLbl sizeToFit];
    }
    return _PVFifthTitleLbl;
}
- (UILabel *)PVFifthContentLbl{
    if (!_PVFifthContentLbl) {
        _PVFifthContentLbl = [[UILabel alloc] init];
        [_PVFifthContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVFifthContentLbl.textColor = [UIColor blackColor];
        _PVFifthContentLbl.backgroundColor = [UIColor cyanColor];
        _PVFifthContentLbl.numberOfLines = 0;
        [_PVFifthContentLbl sizeToFit];
    }
    return _PVFifthContentLbl;
}
- (UILabel *)PVTotalScoreTitleLbl{
    if (!_PVTotalScoreTitleLbl) {
        _PVTotalScoreTitleLbl = [[UILabel alloc] init];
        [_PVTotalScoreTitleLbl setFont:[UIFont systemFontOfSize:12]];
        _PVTotalScoreTitleLbl.textColor = [UIColor blackColor];
        _PVTotalScoreTitleLbl.backgroundColor = [UIColor cyanColor];
        _PVTotalScoreTitleLbl.numberOfLines = 0;
        [_PVTotalScoreTitleLbl sizeToFit];
    }
    return _PVTotalScoreTitleLbl;
}
- (UILabel *)PVTotalScoreContentLbl{
    if (!_PVTotalScoreContentLbl) {
        _PVTotalScoreContentLbl = [[UILabel alloc] init];
        [_PVTotalScoreContentLbl setFont:[UIFont systemFontOfSize:14]];
        _PVTotalScoreContentLbl.textColor = [UIColor blackColor];
        _PVTotalScoreContentLbl.backgroundColor = [UIColor cyanColor];
        _PVTotalScoreContentLbl.numberOfLines = 0;
        [_PVTotalScoreContentLbl sizeToFit];
    }
    return _PVTotalScoreContentLbl;
}
@end
