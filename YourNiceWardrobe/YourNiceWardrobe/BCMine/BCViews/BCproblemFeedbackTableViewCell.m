//
//  BCproblemFeedbackTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCproblemFeedbackTableViewCell.h"
#import "BCDressUpAddModel.h"

@interface BCproblemFeedbackTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *BCeditableView;
@property(nonatomic, strong)UILabel *BCtitleLbl;
@property(nonatomic, strong)UILabel *BChiddenLbl;
//@property(nonatomic, strong)UIView *BCline;
@end
@implementation BCproblemFeedbackTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCtitleLbl];
        [self.contentView addSubview:self.BCeditableView];
        [self.BCeditableView addSubview:self.BChiddenLbl];
//        [self.contentView addSubview:self.BCline];
        
        [self.BCtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.height.mas_equalTo(24);
        }];
        [self.BCeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCtitleLbl.mas_bottom).offset(15);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(110);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-12.5);
        }];
        [self.BChiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCeditableView).offset(6);
            
            make.leading.equalTo(self.BCeditableView).offset(6);
            make.trailing.equalTo(self.BCeditableView).offset(-6);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setBCViewModel:(BCDressUpAddModel *)BCViewModel{
    _BCViewModel = BCViewModel;
    if ([_BCViewModel.BCTitle length]){
        self.BCtitleLbl.text = _BCViewModel.BCTitle;
    }else{
        self.BCtitleLbl.text = @"";
    }
    if ([_BCViewModel.BCDefault length]) {
        self.BChiddenLbl.text = _BCViewModel.BCDefault;
    } else {
        self.BChiddenLbl.text = @"";
    }
    if (_BCViewModel.BCContent.length) {
        self.BCeditableView.text = _BCViewModel.BCContent;
        self.BChiddenLbl.hidden = YES;
    } else {
        self.BCeditableView.text = @"";
        self.BChiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.BChiddenLbl.hidden = NO;
    } else {
        self.BChiddenLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.BCeditableView sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.BCViewModel.BCContent = textView.text;
    self.BCcontentHeight = size.height;
    if (self.BCcontentHeight > 110) {
        if (self.BCeditBlock) {
            self.BCeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.BChiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)BCtitleLbl{
    if (!_BCtitleLbl) {
        _BCtitleLbl = [[UILabel alloc] init];
        _BCtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:19];
        _BCtitleLbl.textColor = [UIColor blueColor];
    }
    return _BCtitleLbl;
}
- (UILabel *)BChiddenLbl{
    if (!_BChiddenLbl) {
        _BChiddenLbl = [[UILabel alloc] init];
        _BChiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _BChiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _BChiddenLbl;
}
- (UITextView *)BCeditableView{
    if (!_BCeditableView) {
        _BCeditableView = [[UITextView alloc] init];
        _BCeditableView.delegate = self;
        _BCeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:21];
        _BCeditableView.textColor = [UIColor blackColor];
        _BCeditableView.layer.cornerRadius = 16.0f;
        _BCeditableView.layer.masksToBounds = YES;
        _BCeditableView.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BCeditableView.layer.borderWidth = 1.5f;
        _BCeditableView.scrollEnabled = NO;
        [_BCeditableView sizeToFit];
    }
    return _BCeditableView;
}
@end
