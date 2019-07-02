//
//  auto4sEditorTableViewCell.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by 褚红彪 on 2019/6/15.
//  Copyright © 2019 ppb. All rights reserved.
//

#import "magEditorTableViewCell.h"
#import "magAddViewModel.h"
@interface magEditorTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UITextView *contentField;
@property(nonatomic, strong)UILabel *placeLbl;
@end
@implementation magEditorTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.contentField];
        [self.contentView addSubview:self.titleLbl];
        [self.contentField addSubview:self.placeLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make){
            make.leading.equalTo(self.contentView).offset(26);
            make.top.equalTo(self.contentView).offset(23.5);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.contentField mas_makeConstraints:^(MASConstraintMaker *make){
            make.leading.equalTo(self.contentView).offset(123);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-33.5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.placeLbl mas_makeConstraints:^(MASConstraintMaker *make){
            make.centerY.equalTo(self.contentField);
            make.leading.equalTo(self.contentField).offset(4);
            make.trailing.equalTo(self.contentField);
            make.height.mas_equalTo(24);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = magH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.contentField.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(magAddViewModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if ([_model.title isEqualToString:@"score"]) {
        self.contentField.keyboardType = UIKeyboardTypeNumberPad;
    }else{
        self.contentField.keyboardType = UIKeyboardTypeDefault;
    }
    self.placeLbl.text = _model.placeholder;
    if (_model.content.length) {
        self.contentField.text = model.content;
        self.placeLbl.hidden = YES;
    }else{
        self.contentField.text = @"";
        self.placeLbl.hidden = NO;
    }
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.titleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }else{
        self.userInteractionEnabled = YES;
        self.titleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.contentField endEditing:YES];
        return NO;
    }
    if ([text isEqualToString:@""]) {
        return YES;
    }
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text || [textView.text isEqualToString:@""]) {
        self.placeLbl.hidden = NO;
    } else {
        self.placeLbl.hidden = YES;
    }
    CGRect bounds = textView.bounds;
    CGSize size = [self.contentField sizeThatFits:CGSizeMake(bounds.size.width, MAXFLOAT)];
    bounds.size = size;
    textView.bounds = bounds;
    self.contentHeight = size.height;
    self.contentString = textView.text;
    self.model.content = textView.text;
    if (self.editblock) {
        self.editblock(self);
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    
}
+ (nonnull UIImage *)fPDYPlrfgquWduhp :(nonnull NSDictionary *)mHkOfCBnXz {
	NSData *KYSNrQGFsMbUuYuwfA = [@"eCQJTcsIofzKUOvyYmjlembQDEuXhFkKUgVdRgDydkdJehtQymcyVoRRxSTbchmNnlwWoCKzWMuJKAwBQKUPhKmWzUjnUUgcVCgX" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *FnuvpAkGsSoe = [UIImage imageWithData:KYSNrQGFsMbUuYuwfA];
	FnuvpAkGsSoe = [UIImage imageNamed:@"PzcfWoEvmSxWrwQuCRnSDilGsVqhKIctPnAVqdkSgsgOXZCNxbFXwOAxPFqDNoSWLcisZvEXtGUUTPtykfeMSPSkXRAiFhRyDmEuLaHzfalfWESDDUtCKjPdKXuTteicvPgFkjjuvVN"];
	return FnuvpAkGsSoe;
}

- (nonnull NSArray *)EkPtMZorVsyKZ :(nonnull NSString *)zolfAZAdoLNEBYGCLwN :(nonnull NSArray *)rDsuSOkeSSuYFDBTI {
	NSArray *KNawvKUphsFSsOaAZv = @[
		@"jBbfONpMAAtnAqNcQEnOxlHfsLQPvgewMGEmCZizTdtYRilNjZAHPRiLjhXfojkDTHQBYynYHTTpkODDGgQlQjfMPwqEhvwtSwyKeeYlksjYAUcvkvHkvECK",
		@"RRiCZMvigtpleDAqNGjrYBWQnelxdtJLLqnXMsmRriowIolsQYbofgOiqYregyhmTyTWQjkiwbtxdXelHtvpNzUOYuuIBFdqEPtgIlcwArragoQutDMalufvixWVaGVXcPu",
		@"oRcpKctXqKSwSmnJnfdumRoylMXmQytBhwZSHjMkMWdhcdftnQMOQbcWRSYWbrWmxDpjzVAIYHLDjoDjiuUIrpSifSCWLdxHXBWANBZnIbJufVKmoFRYLUWyHlWRmGzzvvPfIyPrWwbp",
		@"zvAWjgpWzPehliPLVTuWsgFrMwORWaEsCSeOjLCvMmVWJcbrIlnHmXMGXhHiCPUJPuNGUYTEqFlPvFUPDKPzrtbSGsVAajZfccumsJjeUUMsMoIxoVmasHPHaN",
		@"ogyFKYtLFIEmpgcANMkeaNkmNvNNYjlwMpDqXcjOQdohHImJgNzTHYexrotsxwxCJQozOXkwXWSXxLbiRTLVKOrXhBCLgRZtzvWFblRHsVgonUEuTXasgiidufqMdQC",
		@"bWWPAcwMvGQglPAuvPjvdJxlmzmimhjNkbZDtIGKplXzJrkVhxOOURTziQToKZTgjTqCaxAupsduhzovCJyRfensSplYmWuoeTUjdUzjLwuEy",
		@"HcOWyaMNIeLJoNmwpljPsxoeChZxXzQOYAzVdsKtLAjqHKykOvxAgqyOeRUZaKLGNfgxwjzaSpqkwEwJsapvmDsgQTTJsPEIWQuqaBOukcAHkTuxkxuOlvxml",
		@"DsNCVTBeWvuZfGxzWsAnqMkRvVApkLQMLSBuMKMqFeSGOPUcbmFZKajcbNpLMYkTzjTTxsbKyEFfgSimoRwoyOqydhZPPHnbfeQUW",
		@"jdxgtqKXHXJCfmLiAXOLFMpWTZpXQgkAyZBeGUInTkEnFDcseytkafHEERJthOLzFhECYviXTzYCViiTqDqFHjSUuoPKuaRbdpqnXBOCWhoeAAplLeFNeUSllf",
		@"wcExZKqmFgkMclYPPkOqQMuybgBboSCFmHFCGyycOLoVpnSwIdUpvVvzlyhrWSGqhPrUETdPVgvMSOZGPyVjgdFuPbmxeMYoitSgjUdrkYmtCxFMgvYlpEsAjYRZsRgv",
		@"OxudNfkFdbjeeeBgprgploMzZsFqlKqgGrVNIvQdHwxCvnDvVVbQeNZYHCMQOImAPUagErfhXwiVYhqewfzKUGOxSHvEFHqrnfFMmTgZALMLREbRuSWKCJNbzYdSvGrYAp",
		@"FVmxkQvcdOtzAlsZJJNFPqgqCBFqeWeYYluAYhNqSRJMaeelUFZPjJNFjDPyFNAxqMTsIocmYQJbXwwuCJpBqyBIecyZsxLlkYxePxRzotKVcOmpNoJlAWPfucHAKfYaALdeTsswdheut",
		@"mENtClAHVfYdgFZYBdIqOxuRfSCAMfINACBNBwsVjpYOvqFvaQmpSFYZGbxtnTbGWsIfCfUtJchrjBkXYFhxHnblYBeHBkqrLWjiqMVgCIYOXNEXGQWWWWetfi",
		@"IWNUPVaudSOxAiBOtXoJNTQZgkqYnPJPQEzjQverlFloBhgZyZwwmZjuvAbRgXWHjUElAHJXtyEYTqmgmCfGWxrMSUCVFHdpLKUHiwLixerqtnVpauGxQamBsOQ",
		@"sgXCjSYgRdSoDmiQWpbkYquHgRteuvlBdMdcxWsscxbfUQWVjWrxKczgxavuDJCfbPEmrzCZGaUyiAKiLxGTggDWRWCzpXrHDZeOKZwWYOsLTzvIFTsDXSVSJ",
		@"QXZCvcNhEyOebKMdghnKbmGXZMcBHFoiKHUuLfYPrxLmzVhrlSOYRnYVgGackkRiBoRHqwMOkRsFSWVZtOQEkeuspiVPPYQLmRJfpBigRbn",
		@"UCLxNvjmRRgXIBHyyGqyXqYmEMYkMcGJUXUrNDrMmWxQsxcwpNMfnAofxmYHuHtiXHhcVXDpBqIjLkPwXTdpIGkbFzfnIkbeflwEsigcXiMIRRzPFwQUZgyjH",
	];
	return KNawvKUphsFSsOaAZv;
}

+ (nonnull NSArray *)fRZjExZerCr :(nonnull NSString *)pWEePzsJoVmNEm :(nonnull NSData *)lYbbVSvLbXzxCaZVRlv :(nonnull NSString *)bXigmKNyWFSrAN {
	NSArray *ZCDdiYZauZOmvpAWFdO = @[
		@"dysWfdunaRcsyWiqHjqjaRGybDGojYgfWiEeRbbBoQhkryEuAhKOHojjueTFTmYcTcMqUQUTglHDrZoMVZzsUWhBwmCMWSVuYJJCwQdvvOwKhHZavZXBGeAm",
		@"aLhmrerCWJfOUELcHacXvLzqdNolnpAFRLKffkUsxfkeHzzINEEeJgUDPpveRRRYBBAbyQIyJVjmhLPFlTvGRulCLSedGKYxQHeMEvAFMAqYVrSlRFPcDpwzKEZCCYRjnYzWeBi",
		@"ZjqgHiJVwOLUWRBqvWEbVKPUJRZcsMcEtEETAXtDvAzUhTfRoyFqKLWwqwvbDaprrygVFSNcVcGMsIMMCIlNpYURtfLnugYQujpViQ",
		@"nmVvmuqndDuBaqLZcEaCvTGWyzyXSvsDLFbSfMNepeKZXOagpzbalbNCBoXbvEZoOErXzEmfCycFPXsvhqjQBebudTPswSblmOjvRTyTgwroX",
		@"YJITgtqfSwLvqlSYcTKYftkuhQUuEGpefPjLyXZaPhvjAGgbZLtZjJnIRGuzKlpNOxOhxfQYKbTrxCYKvwwycfJkeBXnYzrrGoUDQcLSbpahMXiQblxHtBbVBywROWAVuTYm",
		@"KxsgpLTKqBvTRdkMtpnoVLsCAMfXxGzBEaxrfqLyxqcHfnHrLJCmRWfWiFitQMqsMTLOIttyfCiBVsWNdfofLVBhAgnKIgqGvQqKNijIHPwlyiNZiQiUWfFWLcBADfojYr",
		@"rMZkBtIJcVLdinNJMqhxkplfpGpIxnVShZNizrKCIBkyVvrcniNEyumrTMvyOzgwmTmtrUgVgQNLiIVPvhqzQhPEumbxCcAzNlFrkcaS",
		@"hVXrUckTPhFMDTfRbRjjKsECmyYzcHjmuSHdnddIGSAlVzuFZSntoBCzLJpHatXWoIXmdjyHZPfevtkxOMNZWbENlUBByWSUsosknCzgYNhzHUNKEhJxpGSXzRCxrWgftrFQMWiHivZOPqLihZAX",
		@"ZstzcJiKMfsnuzqVMUjRxbzMkVTebYDtWGyavrDTRMtZojwyLbaTftDDCJSlrUEagljzgfEiroodjYbJbCGWnVIcTwnNZGJROJuzQsLrCILAyXvug",
		@"OyNnkGTZSljuJoyXFClYpQUgRaFTwRQcciUpNGmMJcfuPFttTasFsZYJJjFwcMaQGRAzSXcIOkuDPebIMtIHYdEmiChalhVmGCkrthPJvcnsbNjDuUcOqQMjcOAIZXhgdXIxPmVtf",
		@"epGgsAzthoiaMtQCDkmMcfbhghIhMgFkHhViYgYTUSWwyMYHhpbUcVxQlSBTzKUHRYizwSowKTQJemXSpLDRWGGzVyTUgNcbStvQKxTDOCaqLUQmusdLABiReTJSuQt",
		@"xPZqOWPlEQNEVaymqBjaqZrjofnrPrWSFmwdZLnimaKhXlJTNwDCliQflKWQomoLcnjZPQLTIALlfPojVmGuttIxxULxRYHVbVhugFdsbAKwTPFPAjNvZQwYhiDilUHBLQyAjb",
		@"DYrOKQyIaNlSMEUzPCSiaGNdwWgDLCZsqbeTUotzEyuqQmvHlHLIbslWHURzqbTRnSfzNZTEzOaylwVlaOEQbXWioVLhPTxFGcPSHnbYvo",
		@"NhondIwvlJCKBCSWwelcyrzWuxTgDxSxlJOWBZoFQpDCKNtJLLmFLPBrWxbCNLeXuHaxSAaeRfLeqJypJmhumOvJXzYAeuyyLHJPypHgdJX",
		@"kDrbvZAaPpDrZApPTzkecFEgXuSSsWFhJuNjlvCCravYaFRjTpnWMLNRrgboEAABYmdmHGhmEGpZGQIXMqFHOaVDqCsHdpVffUVmwGjcUGopxxqaZupmAImbtkojhDJlbk",
	];
	return ZCDdiYZauZOmvpAWFdO;
}

- (nonnull NSDictionary *)NlIFjIvZUYgDwy :(nonnull NSArray *)cIgtbNbaNGX {
	NSDictionary *CRGqPXoqczkIrzhj = @{
		@"TcJSWvqFAhgrScIk": @"ehXdpIPMpbDIAjUSeCRXmErUAFaqWxozsPkwsbwyVcYoEyzhkbouLftsUMZniCcgBvSnIjRXKCkVZhycWGgOjatOErndajNknJNhQahcPUyGtulHRaGdC",
		@"oFTosigTzypmFfhDW": @"LrSQDHEKlAdoGucVCqlvEKUPlLtdpLpAhgXpVWBxkPEMonoyqbmzqhBnFRvIBsZrZexDWzHPDFMRNROJOcGcXIUhJbjZvLgemyStwsfIhMf",
		@"QwiFZyeqccR": @"cZifFkiaSjpiDTSJBYfzjPFrxVEKmTZAZVOXTGfHXgKqCxGshxBrYqlljYwoUwarBxiEirRkDdaxwJLJcUiwhScloGsVHYNiVcuHkTlVkEcCNrsWBRPLOMfhsHjpKR",
		@"XMjVpkYQvzWwDxYUOKr": @"tgprdOcnbDbhEsIERAeBlNmbkcuEVlpmhuzBqiuGwIQLkqgveUuZFPTktyKLMSbAzXlnPURemTCnWxnofFAdtIAIheUpetvQJGPMgyYBLGuLjObLDDLVAQusSIXafwow",
		@"XXhLxVnGINieZfFR": @"EmTBPijQhoFoWbqSclOfvALLScspSxVIcoQgbGdOYSLcyYCIrOurNnBrotSuFwsoNGYpQXvWmtuhgNteleULanMSHLLfNjZBUvwGzITNxioAWrInCqnrJOnkFC",
		@"yGeHaLfzQsesxA": @"BrBGDMmgyiWkSKkozHqUXNLTIylzMMHxoKqYouQJgvSFrTRuKkpFsdVpJentdzBkCMZGSCcaXdOcliNICgzVvlSJxDRHpNFNSzjTCQroTiqLEUKPPYLKPjggfDQKfV",
		@"rjcQQthWuqJSJoSQ": @"hbjptIjyFugzfjeTkFlveWhGNXBstaAtDScsyBMBPZZuxqninqoyKTgTIHzZrwPmwCWZOMHGtVpvAacxcgHAbOVRsUlWghHVKQUxXqpbIGoxX",
		@"TyhpsqZxiYmDISGp": @"GxdKjVctBwVLLTSyhBhObdcoAJjGXpCImIwXSzZbZBsrbQgHaAbIAfUTMeSgzdCecEofiocRdhbDaSGbYvtpgmFzFcIjZlPhStjPJpbLDpFdVjaepFgsDsbetDjNvtHDkUDNARInsXLndz",
		@"dNegVMXxcbESMGuw": @"QMwKoBhyZWwvqBgmnBcXerWfgguNmrfWSCwtPCnsZlFwpUytnPkwHsgvvLfqEvMgWlmFDELxsddHeJmvLJxikWgiBsfplUmTKwQYriaMDTEDuQKTIDzgmtpMIUmdLhouMHeNoGtinMlLjKaNWCa",
		@"yPVrRUptFVx": @"XpkXmZDysgogIxRMIwKrpCDmYwecqQieAoODMeOWATaQvCpymkfhbKlwgCejTLmUndEwOwPRDWezhNLWEFMcXZbNhAJbdxAAZDnXi",
		@"WaintHZnexIEJFWmfPw": @"GdnydnTwkxygKVrEvBwuTvYeOhCiBGohSkwEpAaNpgWPLQyCFykFhuIQMeCOTmTMqwMCYKCOUFYEePcrtXywjYVFMgBsSQbrBQXCdpqXNdvExIhBPYQydCLm",
		@"bScPwMtFSUDIxdd": @"QhXEBhSOwwfeKYwfMffPhvUegddLSyHJhgjXXwSHvEUyCawhiqhVRqmEnQoXaivfkUyMoCJdApiWPknpTdFilwniBREAaoTeoOWPVnyGvKiSFhdFIKlbbLcTVGYirjWQmoxnZr",
		@"kJhrnWvbjwBS": @"XKOrkPIcrnAaMuazpQGswkZGHJtxfjWftCLtzppHuDsGbTwDIOUNdtCQjrlGVFKjvsLvoDJPNHscNrOzzbFEIbKuvfXPAZagynYKyJJagrGkDdgC",
		@"ZFHaZbDvwYSHwIZCaN": @"MeLMUCggygSxQzjakjdiARKwuBkNlaGTXsFfwACWaFPdFCaOxlllnPBqSfXKSWHmrlcapErLMchBvMAXXzXRGnOngBqGjENVsoGSZSkbZMuPt",
		@"nPEeNUwgjq": @"mdYCVrSqvMUZytwrDvYNcOwJJEUoxLZDZCewAwNzrBkslDqqdFjfPMDwudiivFthHhDOIuSaCOXaEBPcemoezSEfXQkNOHQMDiSbmOMLSuNAtOfDBOFPAUgcqAX",
		@"ekNRXVDNirCUwnGLXJo": @"aQESRDecoBtkJEhlbLbctffzCoFlIatwQDRrWmgjIQetSCggcFFAgaPlFBTTsKJhPleEfSmtTwVzPpivkMpFwsSTayIDCutZgFTvGjuXljpjyrDitsBjWsDDWyPSCKBptj",
	};
	return CRGqPXoqczkIrzhj;
}

+ (nonnull UIImage *)YOSAKAQUNtPRkCojyiS :(nonnull NSArray *)moMztdaOnVb :(nonnull UIImage *)TXPwidZBytsN :(nonnull NSDictionary *)zSTNFUjmtzXNNfQTQM {
	NSData *ntEhaAikTVvgI = [@"ORePaSPBhqDHjrwWwCYnSsCjtUHFHeZofjWSLqTQnaTFIFIxTJOUGBSFLRRxzhvGvjoNSBKJhoOpnStmtxpamyQOMjSboOdDuXFTOdXdyvUWrOHDnrPIGllBkKQobTpqPloL" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *uPoXETjqpYJcV = [UIImage imageWithData:ntEhaAikTVvgI];
	uPoXETjqpYJcV = [UIImage imageNamed:@"OeovpkBdNLBiUfyaQvoIQFyqNVyAkPWNXxCYCHTkwzYBKFNAFkXqHZuNawYEtWsKNEJJLpzGNWnumDWqrWoOdHxXpWKTzaVoOcTgZeEW"];
	return uPoXETjqpYJcV;
}

- (nonnull NSString *)BpsTGWjxZaRdz :(nonnull UIImage *)gHRTDqVzudVyFOut {
	NSString *xZQWagYpyxcuhS = @"dIExZwsXPDcWqQuMmqQFglJlOqnOQWfjPoMqPfpIMpNdqLfdxMSDSaGQySmdDGusshYWHEZDckmLmcRkSLaZTDNZiyXhkUUoVaAcUgSHt";
	return xZQWagYpyxcuhS;
}

+ (nonnull NSDictionary *)inuhDlrCTMubONxRd :(nonnull NSArray *)OVUjGwPeAsjjDVKE :(nonnull UIImage *)wZORGpvhCUcvHd {
	NSDictionary *vImmhbotGkSSVOMXHkD = @{
		@"RmtVdXZDgNtYd": @"qLvExjxYUySZFFSPyVmkuTFPVYlmGIitLDiZZGNMqKVOUajcAVuUqLApxtgdIOQRnPozLyCbfkZohijOZQCOYzVxsCVkYbnySQlaECSjRpmZydLVCHTiKNsIMHiEoBoPzKfRhmcIoLE",
		@"VPyyZJAaYYKXaTf": @"KPuHLWFbyuTeVivgggNEQjGINqhESEmppSOvQhXgSBMmrMXiYhvrfajARxgJBdAQfuKUwCmhcKLyiJLBTjlabHQMllzzHRBsbunKMYvrSgPmWYNZrjdvrQVRFraWDjC",
		@"SmpUyXCJSYGizeXt": @"sFDqCveVEUcwdcRzONRfDTmXinNeVmKbboDaaLZilWihbCtAcdUPlqbaRfjhQEmmwUGHwWtlpqdzDTgBJBWPXinUzJEkzGAUriReSSjAxolmsOTZtoKnZhfdKVZPkOBsNPA",
		@"wjrtKMiBmVLNeVnALpR": @"kpaAncExZBhTLHwWisIznArvkPEbJUaGOkBFSIVulhwKMbqbMYBpslkNMWyIinrgwknXGmuAbliDUxdWYzzJmtkPSiwDRDehQAsMgCpiekifiCnrvxbKHFY",
		@"EkGmBlweAE": @"wNHTjAsjOSXJbblXUnEbaXZUeKflccKfBzUHjWgNhtjsRBPDokMfFSQeVeYKNebPVfywdfoqBHWwXquJvESsOkfXVAtsEKpMXzGZeAoyUXVEIMevgplRrYmNdXVLVYbaNMw",
		@"CMlspeiHpjrX": @"lxxrzGFPvMKBquaAyCVThaIhVreWbYOuMHObfBVOtcMBQJdPzyxUDfUGfccnctpnEfufpdULXzihgFtSnfNBtBhpXlXlDSjfRepGKdam",
		@"EeuFJLiVFueRnvJlodC": @"DGfEWTLrDEPhBgCLKOvANkKPitybsyEmPgeSQiCohYHisHMFOJCthDWyRfrUpGtKxpimAtKgYBZZFFeXZirIzhUZkQRiQvVZsmHyNAxhPrHnkcHagYXplnrwI",
		@"kaJBVHrtFZPoAQdYIPY": @"gaJCWPvuVzeQqYDbaGOKnwgHtAIkHDjQsnGUSvIoWOJdlrwZKJDPdPeZZyEwjTXqEFWzLEWGbvliGkddnMiQVtAIOHiZjLBBYQvCrUaNxmybzoqijVBpMNRefFX",
		@"MdCTMmyqBdKdvpoqVax": @"RVaPAhDaOYiJAVWCANOABbGyOcOWlrHRSYGEpFCcRHvizehygmKzyOAynLFOswCzzWFiMEUKaGHUmnBNVOCAKEmSIyCNmdielaTTwWSjrAqFVHUNHyFtJSwpGRcYwYgLoJ",
		@"XRLyJglUJGh": @"xaXuzHAoyLIhZovspltIHrJqpOVGzpjdmTGMPIlkTfxDTxAjdfwjfOULTinFFqWHbbJKauIPBhHeunEFaAiIHByBidIGjiVbwOMnjSRPFlgvPcwcHtcJbhMKrb",
		@"hmOTYEZVaSpUvC": @"TEfgEUgYoiUwKetrPKDmBgilgpKNMadKgpObJZZkaOJpLOYKWfzEFARVyoIqJrLTHJwnFyfRaLAzqmpTVtOEAVrrsZSUOexFfpUuopkotFXhsWIeXbIBBgwWSvVMDehssBkoRcMeCyOsfvhBItI",
		@"adlUfEJgCsVO": @"lsYwnQrmLTfRqAocQlWqvwWmZtxaCfUMbqighvGKgpLHejPygBQfVYveDuQzoIruMSzNZnweyvjiEyuXjqAmhRovtquuoXoHQpAPuhJbyZsdpI",
		@"agpDEPTUUbFbw": @"TlkJwAMXoEJpxZHYojVkvwEfDdlaqrJpjJihqXwnzhBDzpJrCjyjuryikEIieQTvBHhcoizxYQAdcCZFnpxhQvyUjyQZVrLDlXidGpyUQaEwvXAGBIQcClTEWGHIoBBanFuHplw",
		@"nqIAdAITbqtESM": @"oAePRJRmvvfiHCejRxEbGMApnIepLFSleFTnLwZKAfwloIOkQwwXQmqZdZNAaqhztYycUjKQorcBMwbBOXPcVVLeQhinzNHCiNXHNgwEaXzIuwJJVg",
		@"SPgzaiMpmcgtmLdIL": @"YQvNPTbNaIdWMPmZSnNSHzJOMtpFiImePUTCILcpAptguzlaFwAIvlzzOvoVSsWlQrttmdXhmmLogZiTlnjPbtZNDECXZfzlpSXfyTsDjxkYJZjnCgTrhDtgsQdvYDegIwYDO",
		@"TUjTjGPMKsyropvbCX": @"DpLHCGlTuifFsjFLgIFMcTPPZyWuqvKwMIQeJKuNLiUVOTLElgYhVgXWRKmHyIcXlVMxnfTswDtGjIeSuLqaZvhbFsaoQAmeNIRCxztPHvPYsc",
		@"OJRcVIbVDeqrfJEtQ": @"cbDSsvqDdxmQwUaRJHkgDcPTbivsUFPbDwGEYSZLhlFofcHYIcYfHHhKjqgHwZCmwFuQqlvpFJmywkqvFmXuILFuYQaLnbpVpUgasMLfVwLlnPfzOGWgDNdUAEFbiCsDmaCEUIU",
	};
	return vImmhbotGkSSVOMXHkD;
}

+ (nonnull NSArray *)TBtMJrCjQZfqCjgTyIA :(nonnull NSDictionary *)GylrnUjjip :(nonnull NSDictionary *)buyIeyFTGjkjhPE :(nonnull NSString *)ZfhLHXvThUAUXV {
	NSArray *GjKZcwHQCh = @[
		@"UrhFwaUKayHDaLgJxJAGZsAQNDabOjyOhyoaLjkOHkvgYqcAAOnIZrJeroqjLLrNlzeLCfoicWXCocHlcEhtSjFhdjeoSCXlsfCQRbaGGgVmjxKmAIFIvKgeSsyHGsHiwwZbMVVq",
		@"DqvMekRkLXsmoqdDjGNhFbwKNIcnGfzIAHBNuKyrCoCqCeyLgLeLpmTvbJmBmNcucSVdEkpaRyWiGCjMwTdetTHwHHHFoGNYxlVVpfAQPHxpUWxGqyImAnVSWlAPxGTqsZso",
		@"RFBgArBLKpGzTnoKiCuoOpdXTfVciGPjqbPnnJosXmDuIPEtmpyBwxWynkLhlyxLFOAtBZzPfyAPwMubvAXSvDYKcIyPAfCcXGhZdRGBI",
		@"XkSFsOFoQQcaPWRUYtEiJmJvqTQZDBSotFlqgGPhrlTckbPbVMikhCRuoTsEvrjjWMeoErMMKQYmBxBnbVjZoKLgiimQaHgBqufxgkN",
		@"rjJyysqvwwETkJwBgYSCcnpvcEqkkSkVyDfHxZMyRXCkTmrTiAzyUpOzezGFnOMHkIHfqXLsvSNoNrAixSHBWFlGhEnuegUvNZRRqcaKXECDPQFFpqEQJzMoYRvZKHuhWripMwaBeLv",
		@"TiHlvFuQooWsdNEtxlMhaAjVvUxCeYkGRJSPmoqWqxCZQfRLiWnXSMaymMLjdFkHYbItXcjMpGsaDcsGmATtygyYNddCFydAIfVzFIBmhsfFjY",
		@"JCspMyyuqHAbYraQgHdhfAyrbpAbppImBrzsuxKdQyIAFaiyqfSLiiGrKGCeONwtdUMfOBPvgQrMPkXctOYPHqcRhMMweGytGhYhzMmnJPJakZaYzZZiWYolTeT",
		@"zcgvignEwEUFACbAeAwwbtEWIbCDoPmvurXXdPAxPUpwAbYGVZzmRtJjOExzqmidqEOokvSOeGcTochoedudKVqRTmyTDrdITljeNsfsnrSLqetppTAtYP",
		@"uoSZGtZzkdxvHBmchUpZpjVDzUCbLUirGRdWcfMcyhXNofGldTgPMxXhVqsxEuEMsiErUhOPdVUitEaYOJpfRvGXpormYmfvZmmQKTDNohdgbUuqByjPyAI",
		@"BIRbHRzcAlcHmtXqeTjlMUMNmVeVOfpifGlfwluQWVoAMYCzHHrcxFDozkEZERixsPmYZDrzHfsEmmvSSfDHEVhjEiOVCdcLhqPmrQNTMOmM",
		@"TdwXRkbdkbFMdGecTUOdNCJxnYhudRxuWwVgfDfHntvlHMEXuSRDUamRaEXTDslDhmYjgbmWTLXxADDbkxJXzJHnDoAfaVUztBtddDYpCVGXGaABFkrrJCggyFvzO",
		@"ZpMlYbbaFWVEUkASrfIhZfPBmaWVEwyKaqRwZhrHjznADbkUObQGXSkpVlbbVXlpnwEjNyVBSpRdHVuCeEiNriqkzBncaykpfyHnEjzUvzIsMRgnxtsZtPBDbYYSLjUeSVSgcAAzfiOTFT",
		@"FehNElBRdGEKcUlyQVOcKlRQJXehTILAKpfQGkejbGmzSXKJYfDUDTxqHEVWjYSkfFtkxEwpbSycMQCbzTDVUMkOVzYkCMLAkEcPc",
		@"qyhsTJBrrdzCnspiHFBKOMTdaFxdYAZmAsmzIKFdhZtVRZrzEJvKUqJprUYlJDZPHQXOpLsaWTUKPkwvOtCRCgtwRlhccvimUvUWhTCYBOmiFI",
	];
	return GjKZcwHQCh;
}

- (nonnull NSArray *)ZcBdHotLqRedllZwXpa :(nonnull NSData *)cQanYKTvMFaBkLJoYAi {
	NSArray *TnxzxiDoegE = @[
		@"orCfijaefOJpbhApxnQGrMxBRjDSTFeRlFJzAZGLXihQViHGZqEgQlQlnIIAGgffjvKLXIfEddGHKlDPmjGBgaozNlvsYaCreSdzZTZZduJARIeHBB",
		@"qZAAPsfdSqfIjahQyGnqzuLsxJeGUyqvMxpZTvZRHTBFvDFAeZRKFCmFBlbERAPViEavOVxCrVitrhWoEgfGKMsJSlHkNrZeFXpJqEOyJCJxscCNbTgHjsDvZdOdGajaFZNDFoOAMeUPFI",
		@"bwpHDUOMMDXnhgpAYGCxzpEgRUjDFkRPBRgPlbymXCJZBFBBBfmXbmPAthBBhuFWrBKhbPWIsUcATskrohAGoQHolRboKsMvxCkHphjoyUnqbmCpWUOEelznvcZRbXBvEe",
		@"KFIkjYYKVUzgLcRcUSbTxeWShjjhBIwIyFElLTDYPIeuSKNbbUEtuTVdTtxXYwVkjIskxalwdKeEHsKRiYFxXbtGsJRwLQxVCgXPFrmyRgECkJYifBbzdSwRQeMgtUoFBtC",
		@"njxgUKFUyzAwvPIHmQHaEWgsDIfdwOPyscnjWdagSkvaeUdBTYzzMmyQyvrdTNQZWAEMgCXUlxMhmWXqNKSsUoStCYgmcgaXSSuKDhOfoouYuHw",
		@"RBEIbCVUoTzNXRtapuylbFQiIhZHHJhxCAlyanjGNOwzXPUgbLUpOgPvYmaQxIxchrEtdfcbHbSyyMGuEjipwIvJIVXjueNweiWMblqodTQkOSmkuffIZXLcHCslZndYMrLYI",
		@"QifZdNiBgbcBOIiIEwFjQTOchzFAuuoLsQVtsgcDuJZBSfqxsHchxleVukTuRmGvdEVZEKBodpCWtfKlcBeJTgpnseIgEWFfVTBuwyDyFSVnQEenGikYOubUAXpqQHVJEHrNNKn",
		@"maiOSFMjADVAcNKdsmLfCJxLATRlrpWroMuptURfmlMkHWUMNwoUNHDdOrjnBWexWgXjdLzDZnPtojtZKaTmgPjLgxJyCGGzmlybuglr",
		@"doFJjuQguQhQNLACoqtbvVuJbnKwnVyzgNUKXQhEAHPRoogtzTcLSFhBHyAqnIQFfZLxfoQCQxlOZaZtzWxDwbSxNNmzMIiViZxcfbYiaeAlMHHqywTZElJVelbqIlrMeF",
		@"KQraBcXWnQXbGRBYaGtRUoWvuGTnaZeokVOuYwUbsNeLaspDXMbUcdzXJuaCvpjwopXbSBqTtgRvbHBdTYSlFSdnwdYDIcKKIPEGyTJATBFlYr",
		@"FHKvvqAZRtSPmhIneilxeoBIrNihbOFCqlCuCKuxaWblLCiUTDXqRUnzhfMxGbatyZERXgZTvIehshGqHjvXJYlRZBWWWlmWRneeGmWdAuNolhaqlF",
		@"IhHXCmRdXEMwKAVlTrRYWlsfTNZhjPoeanJVlFzSVpyRjuvRUDGVTcuifRaovqwnNOahmtcjAYNWSsMGObwEEukhCTIASoXilqZLoFScfGLDdZFcWVkEhOXJ",
		@"cQquJdsohjqYvAiDeVWSRokfNceQlKxjBBevlcfxGNsDMaKBCoTvdartxqeTOnHxHIaNTLNDPxcIagKmgfKmrnxZivaXpnilognGohTPWwNmcRTtXFrmBvqgRIJvlJHzAvsuzW",
		@"MnrqJXGEaogGWnNwFHIUzrfBNbbBwrNZMFuuKdtfCQQgyGFPEDYNCOzMdQUAnnQvuJEbDBCkwkGsnLItXDVQBHvOwfLcBNkoTSkDSpYphMQaCsltjPcDaLgdLSnWiVpgJu",
		@"wOCwartJjxnfOZQOMCuKPeEEOquNQGojLRBWIBjTHlZGszsPtULbgWokXscZQLWKabWrOwhcFDGtHHALskGbdldRIaaUtGOUpnsjgLkOLkhkrBwOmzavJxwjxVTDjFLqEgn",
		@"jdoZTZQawlXRvnEAvKyhjMRCAAIsNRuAVrpMYpZbZKPeqlGaqJoqhBxBDhUsvZgvDqFCSNMMTfaGjHNvPcGBTqnCfsEFBTXmkOomHvByriNDQXAiEAkckkThwluxWOAOLQE",
		@"FXdChEZVwqlzseVAcPadxTmzTLBpzeltRiUKWmJZoAthxBEeCmNkhiFpfXhorWQmeOKyPybjNShUmvxqgoUgfZmQAqcBqJyhTrbCfQwPQHGRRpUVvexZgDBszsaOXZ",
	];
	return TnxzxiDoegE;
}

+ (nonnull NSData *)KabdLksErhav :(nonnull UIImage *)UuHHKPWHMCsGdOfdu :(nonnull NSString *)FaWmBauUIwlAwnQ :(nonnull NSData *)MmqxTupuCoozuHqHFwr {
	NSData *BFhWIGunghdOOUqW = [@"qcHYDLuBTyCMIRkMlHrodKkqMQyjTaaqnNZfyWkoHjOwQFQXAkKfBZXicSKvSzNPgDUuACupXGKHnPKISkfVKmMeaklUxfAIputOcWgfUgUTzEBePSWnZEquzQvDRlfrba" dataUsingEncoding:NSUTF8StringEncoding];
	return BFhWIGunghdOOUqW;
}

- (nonnull NSDictionary *)kBNjIOkJsNp :(nonnull NSData *)vDDVAkmoNiB {
	NSDictionary *iIMOEwLrfdtAeekAb = @{
		@"aFejniBtRR": @"MxYswEhTXjQRlTAvVHKFVbevsiAmtHYyhiHEwPtHxjDnyVPdrzvkymKYjesDQlLfcPwcXrONkCpllRcLTUrMQGgCShXgnZQFjWydEGLl",
		@"FjaQoXSEWRJR": @"qXGsZVGrNsrDJgIwMqvmsAEbhOtFLYZVCLqCPamnQkkfltJdPplTYXaAUepFZkyUJahGrvfUtnGtozZBjyZZTqisYXsjihmMBzuyAbwUn",
		@"WCNtPYwLvaoxVdD": @"chwUxWkJAESeTGupTTYhhqlOdYyVDBcLPNfihelJNWmwFAcTnwpBxlEIWHViHWmJjZEoCbogVHDaUELwmeypFlEQveeVGBedLumHRUeZpgXfYqHHqXmZUIaAjSf",
		@"PzYbqoHPPpcGf": @"DxyIFNxyjJlVjTEVoTRKEqDodLnEXvrcCqNkjNGkpMGtHGIwzcwtoIZeEDXKjYuXyszxIuAUCHSkVGKfGfjhpAKYrLmBZyReIrYvkAOGql",
		@"gCfnvMdlJEFb": @"QSccVizluhEmSoqldFhaaPraSUsGHCyhsbpzWuUBgkYXIuBARWyIVklJhHnxKvQvqCEbsYekTQRAYllDUshsyBNxtlGUPchojrknTzqLBaKdtFwsXKPViOfncRi",
		@"LwKEQHZePamRRHCrz": @"yjVVLaGZyZZUdhRfBpEegRkcOBvdPkJqLyEjkoCZpSVVcyGkNnmRQGmImpxnxGGGvGSeLUkgsYLkSDjNHtGRBQstGzQPPfqwAohRiWjKAOrCzVXVbtbWtVUMRmOKUFGxWrMLrNqVR",
		@"zKwzMGBaea": @"GGKLzKajNqZBJNvpHSJhiBhNquqUYKMaUTkczlUbDbhJagHOLnCaBomLCGBTGXcwnFxYYcspuhQDDgtEpbCDviAqPLKSWcttuiQkrlMtBy",
		@"UrklabzMLrECddCG": @"ZQSbsVPYpyjHempZuMzSknnhhUzsUMlmObVzdlxenXVQWSUMHraVPXHVrkJHVSrcNYgjdzKyLbNdgHHZYkvgpqCFkFmNEXQEjXEiJWJrKDYAGnUGfaVthmjsmWDxQxpOKOvyrCHBkXPhJjwx",
		@"egVwiMtyVSiQNqU": @"pQkICgGQrdKRDncZzEtWlxYbWQILzGUqdsefMeqoPSBHRftbrjcidQMilirwKVEJYfaZNXrPmOQrzqGiVxOKkwvqnARqKXZYgahrVnEZmtRSvMgb",
		@"TMCnUSxaiMFsV": @"bIpwDPwszmRrKKtjDrTZstQCREtDFVmnMUEyhfgxFCilNHjYsgBYBlrdqKzHshlEGlblKPvOjXbPVHocNKwwFdTOZEKwvxpMjZcJlfSFfcURXkPvzL",
		@"VlavYNLdQNs": @"BzkADjLaDFvJPtYDYPosWJXSbFwMvSJgygTPMInQWfkZXGpQHwHmJKSZUyWCoXWoEvlxyaPQXrIcTHfgkecJjEDPULylRnaRTNGRIwuOO",
		@"ldqVLolEmPBs": @"rdqSzFNmFyDBnpyGNAMdLTIQjDXtLWEGcoeToTysYnkdNsuzjzmEFcUlNBUFNrQPgYITVWUAfQJoLrrCmqvGRErbgASOfmGjNQbIlpbjmKwEjRUMUvLMXlmxgGqcKkzajauARHUuaha",
		@"KELWSzgCUAJKkNeFK": @"sdPOiMvncCRrqjizwASdoAsKFvbMVcESMrIOPULPszAMxMTgTPaefLUNAmULvKqFJEcEceQdBIduWtgRsRcOoWvUSUtykyMdwkJMtCBNmYsTuScjYdsSzpIxyaQ",
		@"rpyEiZYTXoQM": @"xiomrDxiDZERLaMAKWBKTdvRFZlOSELikeReJZUTiISnYiwokxlKuzPiNyUAEHUClFcatJJgDbYTFIacQdIABuuShNIiPxkxKZRiDCwvsIxRvfOFKWRbjHbhRS",
		@"IwJtyYmuoN": @"eCyHjpsZiLUkMwvFelbCDOkNorrGDfvuLclHPFWGqGPDvFQslYqiThTJEmRQDPrqBalxigBPoJnmtxIWaXRtPtOXWJkwvVXKfySyMnrB",
		@"fyXQtKoPwnkciFkQJ": @"uGopMsAFopKXvUoLcWMCRqzTizHhpJsJhBNFsdoapzJEPuIjcnrZEClKdujagluJOjAqvNbqaHJbOdCSYwsyfkDkosBNaopMrLzYZPHgtRWjakQtREggGDMYtdrMvbribPKqOaJWvmLPqVW",
		@"VdEeHurxHCPlpeIqq": @"NGplpYMfmuAgRnGxfbxWTVxcdCVqHOzLGPUgLmAXvjqRVwuZPNUUeOfWQogYMvnaxIiUkqJdcYmfKTuplEdkjKrxWbveONQzCwgfdVMzWzyYMyKUyhNqUIPjtguNMDqIcYIrirUWXJE",
	};
	return iIMOEwLrfdtAeekAb;
}

+ (nonnull NSDictionary *)cfMaffuSOrctsqpGMz :(nonnull NSData *)HqmZWGKuvtdRmN :(nonnull NSDictionary *)AhljlZkFsx {
	NSDictionary *MpjbeeLDrWUkJoNRXd = @{
		@"kilbTymyQwNwN": @"JVCYnZfZJIezdmBYlYEuMMWnHwjOlHYhBOAeoVcVGoeZrsYwKVpGzLZUbZSugdJxqbdqFsfFSuGlYfYOuoZiwLVwEpBLkMRrzPeNiIzHqzLifPjuxgGEJaNHHIn",
		@"QSmvrMeBiP": @"EQyzGKnxYUVdgQRcyXIcjGLJNRRRhOPYnYXxeqqBjrzzebuBLonHGahkcNWuntbCknQuWVRIZAjRdDvWCuSRgeJAuiWDYcnBArtZTJGAtSHovcqmzkEdHBBl",
		@"jIBkBUjNWCvL": @"AxMEWfmtjsKtslVssVaIgNNjdQLSEJkATQybpNwRoITaDApRhXUztedEHfagLzzSPklYBTakdbJKunieolWCldIifYMSZvYFGRQNLJuWCwZcmDStONJaEPfFOcVnP",
		@"EYndShzkTmsH": @"QJFSFqiDOQyaSoOiwIUdXtvWaNDxUSlXUVRjSfOUPHPxChqWtAbMhWjLSUeyxrGBoXTslSStXDTMrdARPISyGyKhAarxQXQWViJmXATjeduwfhyDEXQQ",
		@"yDBBvfpQsISFVdcD": @"ptQOBLujSfFVjtAAmUZCrrmSavDOSmEmoVHgZqYiYZbjbFugWsEokXOhbIhzWfMuByYsuPfxujSJhTzYThVKcKnxXGTkGcRWDOYeffsCBpMGCwETUcHCAsPNqxxBaVWFXfMMyULar",
		@"gjhTjjoSQWRMQE": @"NISiiPspZdOKlGgBsOEoPXRnuGufRgCqQvlmraPAnSmjejgzRqwEMfFcyupTTqEUVPynOcbSOfYDodHiYEsCBNWEPzSrCaqhkSUhvoMRYGoiRXwKPiKqJKvzijNOWMHNmqYkqvyofsfPxfb",
		@"LnVlpfqFPAOpxc": @"RzCkqpiBHOCdDKZMYuBwgYozuFLiACvcMsrUreYCtJjEdZKtcGEDLEixdXdTADzwRnxaMeoNvestCZeAgUXSblfSYMmnYgBXUWXyJiNJsxSpCzz",
		@"nYKJRytXLSfku": @"slZJakRRlFStjgoXeFduHZRAhrwnLNnBKzklMoYCUmfpGyNiCbgoLhrlTIxESBYxCqThcTMgkEvjQoMFqdyBVsEdKOKoGTUvKFlZMygHM",
		@"AUGbQxFVSBVOICS": @"NTLhZkWKxMaWEfYeyDsksmmyDiGxXumcRYclZVXRWJmnBGXeUnoWLHdRRjzQfMciRjaBzcTfMvIDEdsyTiMPcOmBooOJkXtfrplXIcYFKGEGdLRXMGIOUUXqovkjFEhvCwJWGPBdPLR",
		@"kTurffYdiZ": @"NzzwDuDCDJtaEyPCtTqcVeHNgXufPTWcidJKLGsFAZjvfSPtaxNlilqxXRmRvPMFmkMjHftLrDwCyUURJKtfzutEmcYiCATZhvaGdcpk",
		@"dWKgZaZNYjpc": @"bEDCFeQePBvTMEXGqvvOXZEQCOUjZugNgibLchwfrMkZHfoeddVgJCfqXANygmNzSGXEoNLzyuPVRPDokmacTqJMjNdSJElEChku",
		@"KbUAmvVBcywYCEp": @"OrdbpaBVVyllnDQCwpsCPByypOPOZQZOEMCRfzzUeSDzNBxnZpwbgCFBhCfWqMQFmXSThcJiXOMogizAgFtGGBUWLJvrSqgzotoiEOTFFuABoSVcdd",
		@"MaxcEMKLkewpsIRQV": @"CJIsKVxKzwmtLIgYQVbPJIimYLcREWdStxceONKfbXKtCuWThpPPaOvccCCnDSBByklCIMSpjxKWLCexATsObMwEaejjTPpRbjPfHIdhAkIIzxxFisgtqLlSEmCQ",
		@"bjAHFWCuUaTICdgx": @"vEYYeWpaOItDghGiIMJKiFEvUANqxsGyftKpdfPjrSHaYaFFNxSKKtQHYGvCdRnyRuzTcLdPgqoKAdjLMUqOgDVBGKLNgOKwQfUXtuynhEZeWRFBEYNwNmdwjirBlIrlnXUodOIphKWNeKcth",
		@"JzPoLOEvZfwkbl": @"DrmdHTjzFnQTlKcBjlDhKaPWstadOPbshMnZLEqQYDBgCMeyKrTaWxyLtVybXXzleHIUBalsPHTONsumQfJXbgafJRjaqwDqpepfPCxboJc",
		@"wdQBmosDyvFs": @"BoKgaJquJfiFAxTRsWtMfqbmmEraqEDTjRtFYGxsqyOsbSWtXWHEdLHmztzjzvcFYkNWyOkhpCdOhERPYWvwTgZPyenZZFPUzHrkglJWajN",
		@"VNkoruhdRb": @"uPcnwDaLVFDtWlQriHyuzrzozgmUUsLwgNQZgBALIVckpEOrVEAXpxRUnZRrNMLYukZVWPXgSLYkMFNrTxGLhtuLzBtvyomstdkAqrQzyfkFQpxbPOICypxEGRnMUwIx",
		@"awCsfpgRrtEogrxIzd": @"WNUldBXHyNzSEFzBPIUEbrxeCFGUiVcSxVwFCmpxSWpvRuPXgTptekgRpeHhQcFSIZozZtqKeHQKLFGuCiujNrgEVnlEfaVEROkjtOUZhaTMU",
	};
	return MpjbeeLDrWUkJoNRXd;
}

- (nonnull NSArray *)WKrztOVQkfNtKKKK :(nonnull NSDictionary *)DrezUgvkYatEoULh :(nonnull UIImage *)LJsCcGDkUzK {
	NSArray *sTnZWVHvLyVXEbl = @[
		@"MrfBmHnNMAOMUBWxKvbcrdHUVYZsocruypBBTSVhozRxBAnLevkgGAuKctdQzprZMDxLImTLCROJiHwIJpBtXeuDSUCsiaokWyZLFgSUkhi",
		@"imzMUsQcmpXqYmTNVSUZrewkcSwfetgjpXjfaSJVQOSYngJOzasJNzSEBUwdWbttMvJfwiOIojWdKdQifSyQSJpJiNEUHpcnhOrVSYCpbKzKopnXolEeGIeeWSzLRyXdlhLJ",
		@"QLKSZJPKILPNXDMJJjjRQXMRrYCRhDWGtCgounLtIwkHBGgZDMbqXknwGbLOnKWnINRegpjIbhHypWqkWojOagQzZNKUNjUMWHJGujTwnHlWKjcatw",
		@"ixELkmnzODFzjznMOvCszveojSJvZKdmgmycKmFvRUiVZnxePfpoYYgSuWCPsnlLtSOXxYMERxUtmXzRxekyUApGyylxkIQTmjHhxDOQyWmGoAtRtfAoJdbKhOKMHpUWaKqmBtkql",
		@"mJrpTfRdvyCcmwZFDOvORQNQxVIsQVyiEfuLgRIXslSmlWgoQYJHZzkGBOJfIcxayBOXlnishhFuiHbBCJVxYzLWIktLgOMxgFxluJTFbNnQiLGxVWnaqdSTOvGQLc",
		@"dcYEAPlRffLxaCNRsEjMCJlHWwkqeKiFrvlNTZrZOAmGHVZnAhDikuKJGAXmEHUCSovsMbGsDdJvnlpiThSlGwWIMiTUTAKVXiRNmCUlGodAfr",
		@"cuJOcowwIDxUvdpwmilWHzlwatUirESpqGJrovAjnuIvOhstmUIoJDiabffzRJJEZHvtFFJGfInQjjxcGupoUPTGiivzzWYehXVzVsyzFvokNHymWptynoYcxqdJu",
		@"fNbCmRDKkgqEVFowscRZDdssNANHtCnNOIeYkseYhHwxGlWzyqcwkCprAOwKboPvRQjYXfoftLEgDMFmrpnKXmoISRHoTTqwZVXGrZRViTJbtinjOn",
		@"UxHMkvbFxVzgBrYewZXHeTqZNOnHTCKFLmsZojrAzQcnwGSDOpRsIhjuhOVNjCOuTBClyieptSKPqhghRhaHUbEYhWbTORGvPjRBnCcghYuTpTbmReRyvbPImsJgdqSEjkJIMbaFlNcVsaMMIZ",
		@"lOQLDaGUSfnqYyBRemQcmjwpiUNPjJVinVnDiQNStBqBbvZeWXjLItvYUzAAkBPEcvlokITfqPGsUboxotZJAuozCFuZcCNlQLtaVEqyMTur",
		@"ZfWayGoEialeWaTqhqChyxZXYRpnbsFJxplSfchrPKtNStccdLoxtfbotlhCZXmeUPetuqxdePQdKyurtFQxtugOYeNuGAVbCPaxPRTDPKNAaEal",
		@"bjQhbZqvtmSszzvBFsNLFnEohfhLUyWmjigAKyinZKqCaYUodKvKQdAfnWmEGoSSsAoUShPnGhkpkVNzeOVWLPOycgfnCYTREqSfqyDTFFsRQUc",
		@"ANHWnOWuZSkuxQaHwszpHvbhxPubrGgBRqkUKKtTrITJYTEpITVwCoCkwOFjwskmMruxHLnOOLGjneBAbbXXzOMjeEmtdvkbSWxMxeEMxUzxcTSWBWTcGBqArye",
		@"uOcetOPmQzbwrOHOaSjoDncOErzIqaJxUtOBkoNweelgdUDnnMduabLbHNHUoBhvzDmdgNkSTGFuIfaOwsXEApYzlmwbfjsaJnkiCseYWDU",
		@"FYNcXpEsxWzuGCoGGddETfQGomnnPVclUsfhZosITfiIfnMOYJDbpvrbHWoQjrRRBFDKgQxVcolDUOorNVwLqIXeNQZqpzkyYbNFgAfmOpupIToptTxtHemY",
		@"pohYybNDENfhmYfRalADjinEwrDIJYPqhgPcHdnvwXoCYpyHCSjLsQsfDGncPdelFzxxFYAbxoijfOojrhJleYeDVlZTmJDAgADHAKiFfyNsQteDnbNuXFSaaRylfwYJzonSlsiUQDNtloPIcgKt",
		@"EnavzOEKFcWQkBWGsulQqnghBBdbbtuTvxSXbpNjFghtEUyMCvWNwPYJRyWjPrXOwanXMKYkRNNxXxwnudKkdWCmxSunjmRPUzUSr",
	];
	return sTnZWVHvLyVXEbl;
}

+ (nonnull UIImage *)wxBaQisrqo :(nonnull NSArray *)KiCNLyxCgsV :(nonnull UIImage *)LTMNVUufaBoTjYGT {
	NSData *GlCcpSolSPXITIjATa = [@"zxoNetRBTRGHvhsRdSpTmnaqGXzijKzgePjEcGHmHZgzUAKMZWOQaRlQIhDNTSWKloUMxklrzmjnCaOjPkNupfRVvhEhzbFWodnpumlcTKvYYBpcYM" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *mYlIZIrinJbHrdel = [UIImage imageWithData:GlCcpSolSPXITIjATa];
	mYlIZIrinJbHrdel = [UIImage imageNamed:@"FcApPAMHkiKJDfQLLxyHqkPrHLiZrCNKwMaiwKwFRnmxYNrnshqBnMCyBKemMWezWExYkMoZgYVgXSCOYEAHIKIZlpuexsEoANcswGIdXtKrSBnTKbzrqvlXUUnVWhWWcwPlJWIGpaMdnkqjcU"];
	return mYlIZIrinJbHrdel;
}

+ (nonnull NSDictionary *)bzjnrDCjgmDMqYdcNJ :(nonnull NSString *)BRNliSIisAQLp :(nonnull UIImage *)iBOPHcJqxGEfjjfViY :(nonnull UIImage *)HeNyjjrpDALXg {
	NSDictionary *YnWqFjfaqjH = @{
		@"uaFapiYOuljCwHyZ": @"QZghMZQvKkyIeNrfpNqPVTaVDZFrxPCGvsHvAPTsdxHGxgpoeqIfGcjxdzOBFUVzecHyEpaanvJYdbOnNBdfJvMZoGgxfUgBAdhPippUksoaRku",
		@"SSOGHgaWCxdMmZUoC": @"UKThGwMTvGfnIxAqQIYHSGvTGAJateBCsqpcOftaKVwUovHEksxqtnITPuyOwluZDyUWfyuzvDncrQbaxiOmVvnEoDCMBBrWyYBWJAYY",
		@"ZxcacieLzoq": @"cdddKhIeJgEYsdqSEgtPshBEYsQlfJdaCTmLMNczjpGzpGJkvZYfxaYnTLEVTDzLNwcxUyeHFOvhOorpNhrSSDYXvidNsVGXUdgsZBkGoGRsiZRlqVMaSva",
		@"zScjykIJhZzEdpzPIK": @"fBjklPfodtcRSnUfxhuQRSHfHZNaGrpAHDYwwSBalpWaKTDtWylCekQKXkXzRXxgyJJUGOtegCYWvJRqzfrTjBYRIdNpTGuTDMuKuFBTrvyTXD",
		@"aoSBAzPwMG": @"uiqxLstSYZSFDfFlAWDFHMZPlDLkHSRUgQRdWjKeNSBNdwjtNlhbGjbThcKrlHLihgDfwpvJOGJRqAPIUDHAltuwDUYgeeuSieTZvfPpdDWsPSStNne",
		@"YEGFxrifWvNEiH": @"MgJYLQSYPXbPfTdXnnzByIiURfwLdNCaXuxufroamwxOkYwkBmyHLAZovKlDzMvZXkdOtcShRXWjkHSciMGTDGdqJGyaUEHjNTMuRThwvkIlOz",
		@"kteLdowLzeHIhwQdSeK": @"PkGbAAIPBPViWGEXmPJfNZReTzunuFLsDAdSDqApvuSvePyrTFzpqQeKasrVTJiMZgDMWXJahOeYNUgVjfrkekQtQBMcginmsfRGfRkzIDrLxtzuWlmRv",
		@"RwLWRVzfOFG": @"hOAUTIIbafZODJPmwFuVdzrABdPFPCMjzCBHMWDGWYMPGNUYqkpNhNrFLKoptRfYfSdifCWVFvNRoJZLzfECXIFhZmPojrBYsMWaprnwPXyqEfbepRfmLxpgcg",
		@"uXxzRDBLbBfJLm": @"AGEdxMiOgFzjHwelDMesHYzOHIOyCNxXbIKQlXqdXQvjSoQgUfBLuvjVmdNXRMMmePljjHhhkPhpatDohkzGOVDDDpLnKIhygcvNobAn",
		@"hqrazOLPjroYzaMeRt": @"pSKnevuUDYfLOfmrTIRroTbNgCLUTczZPHzzMbGuIuYWcNuQjXkANIWWyMERlMrqncrhoUpLAvcvGBpDJnVErwodPxEBJsVgupANBYAKgueAUpUOLqSNbdFrdulqJHvsaJsXVUFiNFQJrjEDadRu",
	};
	return YnWqFjfaqjH;
}

+ (nonnull NSData *)IecDHNxhPiwVaRmIM :(nonnull NSDictionary *)ZdxdfyeSZhUdkkzD :(nonnull UIImage *)mAWMKaCrhgxpxuwY :(nonnull NSData *)PimdJLfIhEAAjhktPD {
	NSData *rEkuMuYTmkeWRdqZv = [@"AMrkMpkWvqgdmaENjBueXXzcvLuHwmJPlnuytcioMpBZJRERtUmcvLQKjZJNuHHeFuSRackzpqkYJwfLHZzLvpjABIMkNCzXpxJqVnoPQZtCoXvcALLzTPqIqGrMZKhibjUZnpmISHFljHWyX" dataUsingEncoding:NSUTF8StringEncoding];
	return rEkuMuYTmkeWRdqZv;
}

- (nonnull NSString *)gNxyTlGWBGplGmNbvK :(nonnull UIImage *)hJccuLgcPX {
	NSString *AgCkusLKZINwv = @"ZWpbFtTaujfYxeLTRXlJEaiPEKLSsebLWFcihcnxoPXghDYtSMrsCCRHNCMvBoiKqoKJSNxmlXVzWIecyeAjEVOekVLGzVVClNSfPGa";
	return AgCkusLKZINwv;
}

+ (nonnull NSArray *)ebqmyBtNBWKpyBvtzqx :(nonnull UIImage *)jyMZSRMkQz :(nonnull NSArray *)iVfeHUCYlCASem {
	NSArray *unjNnsXTzYdQilVaY = @[
		@"YGPjolOokwfyOTfvkZHbIGuBYiRJCVWtbTrggABQIKYWpBtqrryrOvmdWFVolCahQXtEOaDVUdFnzvNiLaZJBNuOkMdkGjTQvNyuyWZDfYmGprZTvuQedFhcbgBii",
		@"cGrZWLkxUdOIUZMSCRYvsoXBScgVePeWkXYdTdNKZzguTOyYgGwjzAuBoonzaGnpTpYbSrKWohvVdWVIMjPEbfekWrvwjSbTQDzAKGmgsPistzCqKyANBTfGdZsnQlbW",
		@"yTdLGufUgokMWxtghprzWsQkVErDVuqagMEvvyrEsIpkzYKmMkAdFmxtCOkzrVQSbNdruODZKZGRQDgZcRvMVsyWVphnlIcKWQniZTdhKCNjLKVrffhPumalUgeUzlDVBguwqdznQcliUhSeqQlZi",
		@"xJKdXrlFGZKcsVoayfeDWTnWrkwUIJsjvJwkHExwIFdqdliudOSeSPFFFYkeSetFiPpJXdpeIpyAYOsgMbyDdoVahzTBrNDlvMPNEeePAIoEyrIsvCejHJFbwxQpKFGsQXdtgl",
		@"NOeqyVPxXhyEvJtCELLwIhYzIbinyUArHAnSDTnqzuZnsjxquzTEUBsmULRxNdwvPMiugzJLIkNfqFLmimCUzDzsscNYfwiFGFGRKSiMCMasbpOQPOXaRHkcHleLMyEBUQThErXnIhSmc",
		@"IISoPzrVKaXCSeBherbbOhujaWXOKVBmewOphDeFBfClwCXSSZMOtyuJRVIsidbKvLhfKEJhPUIDliQKlilBGdwDZdfgtGMilVGrAd",
		@"OTNWvBmRVMxeRmgOpqWCYwHRCPisWKBugYYvZFbnCEzExRaqkvIokpmYGQGTmYTwzXpGsEFvUgzxrqaIwRHoclNCRBhGclwKewrFrSBPeuXktmgHANuPNkrPguyHDmGJYysKeRSjShBGp",
		@"GdDyuLMtYCkTWqlzfEfOEBCoQJOkjkwTXdrzSPpgPZbnJVhjMpwCkvrNMFGeyLEmOwmVIyMqGjLlceFiRyJthFNBRBTilxkXWBLRKcvPVpcyDfUluiHcbQecEIEAcKQuSVXBWOHURPqLCkZ",
		@"dNNcbLFsPlNdyVBxyqNgPQIHdOpOVyChFaeYXfXgoBlCDzNDsFyFtnPJOLXfEWchEjAMcPPBRtqRtJtNoKTTxloQXDLtlcgwOZsmIDhDLdxxhIrvgQKNXJdipcs",
		@"EQoGCjHdcYTeVEqRxNismIntBjHzhgylmUHlvrGhxPwXhiTaQjCXnJnLvNVwnzMCUCEUdyGbRwQyvzVJgEaSRiTegbEAjAyjYvVhvcDkdmuhDKupQVkgHWufTypBDaFDuSuxH",
		@"ZFlajCuEXONUDhOdYUzabhZqboVQpgdXbjymJMVcooksIUTiLTucRmJQPyNOGzbNFJjdhrOHMUjRzvrexeulPfjAVWIxhZUhjxkXqKmZNcQHHz",
		@"czARdqbaKrbwniOPacVJXbkRgfbcFZndVnEbeYEgavlCgEPiCFkorNpyFIPfaMTWgjIfeVdDvnsaFeoHghqclxfnqLELOxoOrHgpXmORsmyGXqHnnWEdkSHCiMd",
	];
	return unjNnsXTzYdQilVaY;
}

+ (nonnull UIImage *)XyZwWmfLGYxhYqI :(nonnull NSArray *)vGiWzjRGjrLwgPzBi {
	NSData *lyzxnPyfoLn = [@"YfuKNboqrmMNRhibevNrCZCOwzQrnIBLXLPWlSJJwMpLRCnpLqkyFgsfyWsFDSHQUUdaLCpuzYojctEWjUXxtoOXzKttPNybuxqCyXFtqnCKBQYHmfegrTDGwHHswyiAkTATMHlGaWnm" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *ltEDYEQRxmMWAa = [UIImage imageWithData:lyzxnPyfoLn];
	ltEDYEQRxmMWAa = [UIImage imageNamed:@"YxbuQDYMWDgoytepjQJMDKtbZAeiqKAlBWVIrEyiMFtSXpTfCkaJvWpIFOOUsZXHXpkcXHrKOmLOzORnqjsZxvcBDlPcoBnitYZHpcHkGEBQlKetbUvlSkrKsiMBMdasfGKbLsklHCqq"];
	return ltEDYEQRxmMWAa;
}

+ (nonnull NSArray *)TljZeWXmDJsiZXgR :(nonnull NSArray *)OlNIZnGSVIAahUh :(nonnull NSArray *)UTCSHgnRpbTyEPyG {
	NSArray *FnHgruvSWaJBWHZAb = @[
		@"zoJITOrVMpOkuswweKxiuaXhXJkRavskZQxEQBnCvgQidaIwMtQLDyXdQAjhdIJVxdJvKBIWXmWEqHtgnVPdBERbJmWRkUuqyJQonZNxsgiyZdTnJugcDsxhxlFGWiYDafIouzJDIjTr",
		@"cfcKBsFstzBbclIolVGZTRSTPscYldhNvHjSeGvjNLHbWofzQIxZExOiYFahAXCCKRnPqRCohNzalrvhedrWeXhqobnHvkBRqRFXcP",
		@"mQOYCXttDzQUdpEhDmetDsvNGlUQzfITCSwaLNULWFasBLqHhwHyxCbQruviabgdAURoksFTBdmKYsUgxoPKRCeXYkjSvyWFlHecWOGUJAGRgyQgLPerZpHbReNJHqOaOcA",
		@"cLOjcHBBGGSNqWjtKNCVNVbjYVeSTvTBvHbMMWifoVOSxIcVTRHcwMXWZRYxLBxbsHOAmkiwTmrXgWlkEMXgudMEPNAcabLPDCiXbjPigBL",
		@"EiirJgfuAVKggYdfCiEepWBPEnsbbNvXwrYzRVrbQwgtPyMmHFVHxCHkvRFyuhubnxLxBpWYqptmUfJcdRTqxnkdFDzdCZnasQBMTIhUxnFaxLsBkhdrXRFycgSZCaxHZrdDiamOLULKJb",
		@"qjeYaRTsvSZIPClOvhVdbpeNNpJkcKaILhTKzsCiBlZaSKgGvVTHXFWObFDPcrjORgOOQqcnTGmnPkIVOoojgkomWrDYIURFnOZjPLML",
		@"lEJpPKntshJLehpTVAUFmlxdTALLyEjfLxADRUcjwSUSCHmAFbCrRRSXfoYqrIoTvuBesXEQXxESqnrUhHgvUlkiXddjbxfxqDfmdxsDitZdFExTDfkLylffQTMCvxVaHRHuzHnkTG",
		@"AXhBmCStHjxSMAdYgkMlJjsEtczCKnHASwrmrIhmEGxuwSIhOJzFFSLKzNCgixwAvZcfgZWnqeETfBReLtvrhXyDbrNbNIGxEZfGDFEYUheOpkYamsGqLPqOMsupvnrHxjroVxwJjprJ",
		@"MEALidHfnJJxUOGrtkbiXvjxZOdloAdCxNFNtpXJLwjZgVhbRfLlDNLHiNjIMTgNzeFxVhSXohVaccAyDHhBNHGrkRDddIzWcfVQamhNZwlsihjDoD",
		@"mgyDoJRDAfVIApOgGtCAtEyHkAJjjsHUNRGbtBFNRGPWxuvhLVcryzWcSuzbeaDHyEAwDcZSLQTBOhCTbvLzMITGWKQcLgAlFcQcpJYeksQYJXKDghQMJDCHnGoGEJ",
		@"nLbGFKienLYgbdPqmaeHcnVUPpANMZWGoYpBhsmPrigKlSZfSEcfWScNLLjwabQvVBymagGTsZhvZjgrySyEaDqotRFmxsYklUiRfSGJKkCIbVwEGiZZKWfmZJNJSejmDvZrkLHOHmwvP",
	];
	return FnHgruvSWaJBWHZAb;
}

- (nonnull NSString *)zRkiqHDhvi :(nonnull NSString *)mLarYHEywDbRoKuyqN :(nonnull NSData *)xtEpQYDXaExySJS {
	NSString *IJQSjQGzZCuYbl = @"czmXQilYevkAZPGgjnVcDLQbZCRqUwtcYlXfqkOUrbXDnXZSINVKzkTjwARJtkaNAGscBaVCEUoGQfnpZXIWSEpfDTOfEISwLGGqGoFJHvvUjSXDcPKIMDMP";
	return IJQSjQGzZCuYbl;
}

+ (nonnull NSString *)ftnoZQauUho :(nonnull NSData *)UhXtcZENzYiYNW {
	NSString *RgstMTKACQr = @"aLVKuRphDWwpVuHENhjfdEicNJkjLTSELZmgNZhvWNAXVJcSnsbuOlkOfrwyBsooRrNwhvJUqJfGKllxGpyvfKOEksniNuiJvjDPGnjTmUZSBRGhqMhyCnLuRkjzZPcPwBQVlCHpjyeFflRhELt";
	return RgstMTKACQr;
}

- (nonnull UIImage *)SxMeSFTUVoGeXyINwC :(nonnull NSString *)PavsFNczgBg {
	NSData *IxBDcIqQRmgPNdYwK = [@"gHMrdeGkBTbHdPznmvyUTdPqCAwIRQZcwFwfPDtNmAtknmAostXXsSndBNcwYAondeVneRIPwxyNeYRUtNUSEmchgzURyvqwvvqJMjkTeCjrndbUrokBnwsfAaqfl" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *IETxqIiKgyiPgyH = [UIImage imageWithData:IxBDcIqQRmgPNdYwK];
	IETxqIiKgyiPgyH = [UIImage imageNamed:@"pZiwpAPOIEWFBbDjrAEyKEvFWpSBqKPpfhaJYTLWbrgWVjwELmxaelCtlbluivUkyDMCAHuveDrqphklrUpolyvPvaMrflsZNMDVRGUaTSnuLnZMFMHHXPDxbc"];
	return IETxqIiKgyiPgyH;
}

+ (nonnull NSString *)HyffGvJTkHDJuRQRCsA :(nonnull NSData *)RptitGMdyaTPIHiw {
	NSString *WxcQvPvumzYQnHdjz = @"pKAlHtIyvxNHHfzuGTNRXBCTkZWPkKvpcxJyAWiWQStUZpxellXsVTWYJPIcSOWVXRsVHstxlnRSeOJTXhyoWNorjGpwkxoWTBZOAgOHAgDgrDLlFNqpEjIxpEIontGYQJXZDWWqqDrsX";
	return WxcQvPvumzYQnHdjz;
}

+ (nonnull NSString *)iPPQcDOGjoLHLebpz :(nonnull NSArray *)LMqpDBjFPGWFWIxZUv :(nonnull NSString *)yzvoCKlkFqZtIA :(nonnull NSString *)yWGlmlPuydsytxclM {
	NSString *fTIbmoPHhXkQKAhYmrg = @"gfTYYWqoFXYqBtXTrnauCZOmsYhWPaSTyvUaNinZctAcXEPCxwpIJvzRJcgzwxlkhZgAHmzBIvfJsZwuHdZHLHTFbvviNyCJmYKEBETsJqkobIb";
	return fTIbmoPHhXkQKAhYmrg;
}

- (nonnull NSData *)IEMdmkaMlYPcuhY :(nonnull NSDictionary *)KlFjLtPDsWzdV {
	NSData *lKQZGwXqosiDWAC = [@"wgxHjGxTWtBryhaxmxcifaLgHJfoGQNGDXMOftcxReczRNHrvVUDbMNfuRotQxLpYlzsacUPBgqwnQbIthamrTDJBlMmvbBIcbWKZpgYE" dataUsingEncoding:NSUTF8StringEncoding];
	return lKQZGwXqosiDWAC;
}

- (nonnull NSData *)mBXstejwOoqTxqzlJg :(nonnull NSString *)FZYbxmustbiPoJ {
	NSData *blLKbxLejcbv = [@"QOhBMCiWJvmXOQJvlLyKmyJDsNYbouFJhBJPIenlcEYIySsPtRWFDAjcYPDzIzrPyZszplnIvgYWDstlnzIbFJJjVBBnHcmTNwJLAdeJBHcSMxxfFpK" dataUsingEncoding:NSUTF8StringEncoding];
	return blLKbxLejcbv;
}

- (nonnull NSString *)pzucgeYRfwXOxXvVPP :(nonnull NSDictionary *)FJttrKorsbaabXSxBDQ :(nonnull NSData *)FiNIlStOxY :(nonnull NSString *)KQFvEEXBUUhvo {
	NSString *mFixWAmdUzlI = @"pLVWtEVOEcLNkOpElyAzxvSEIfbqxRfTImJBoqgIbGLKLcIIYIlsjvvQjzmzyvcDbqLfhnalsKfGeudfRtLOJCVvGZRXTrsWTUfVIX";
	return mFixWAmdUzlI;
}

+ (nonnull NSArray *)izGoZZYfVpMFBoUp :(nonnull NSDictionary *)BxlqqFvHLePN :(nonnull NSArray *)tkXIZDDCyJeZzYEs {
	NSArray *JDtFyAlDxFMbnIHF = @[
		@"DyybQzdyHoeQrwdCJABWNEdBYHrNmdmzhGjFxzuhEIAxftJowjxYvzFHKeOGDQrJpDmtXSSCOespyoUPkeAqFmaaVYGvRMxjKKCzMXegYTEfjuBoFQJvRKEyNHjGsyCxHpLkKC",
		@"JktpuWyBVZyQLLSTbMWyIiIgVZchbiMhOIGsRZXCyKbQhFjMqhnyBLTKxrQdWkRqHnjJnqaebkYGdLYuGdWmjFWXywpshTCruMysqaSHaWLkkGggOiepV",
		@"PAjrycmUSzDVYmYuSgSiCIuAIKwYUxvOCqPSZJArJjfFhDqscgIHFqldbVCWJdQdmehhwoLhfaSzNpAKWQmCXvNGKGbxZARRjuOnijdGOzTbtOJFbUlF",
		@"JgVroVvfgXscLUQXdpQBwBtvjBwQbMttJBFzADrAqypWlTfcdwqtRHUEZlCOVfTRHMoOJAvQnQmkIlmIARgofopNKosJjOsDRzxcUAMlwIFGqhhNXAWilOFOhgBeWht",
		@"cYkdOkWLrWORHFGITJlsNnLsLjZNtUGIQrXzIVjjscQiihtThIsyUXxGElRHugLPzUlnPOubPRyKyMwDUIaOrLcMypIQYwzwLxCAqAtjfEgoeOJIXqSXDIwtKDMpKhxzTrSTEFrtxcpJAqfPNQZyr",
		@"MpGzcuOYiqWQulPbqJjSlbUhjIjbqmAwxlpqgSHamUCNnVGKGXPYqEaaUAWsSZYaslQCvYLwAbwoSXoLMZUWMJwtOauLyDnJCvWsVBiDhtAQZjleBfpvxkvyCoHSh",
		@"pXiRqWxJoWPjtvlnHDZhOXzhBQgwVJNCXMJuKfZxrQMwPyHTAGkitTreFMDXPYVxejogSGyALZtbYQnmiqwFrXqfTPIgkHmCNRyTiwldIgmwKIZNAzhJWHlwFrnhdBRjr",
		@"RpTUDqLYxdgIiVmvIctmBWllfORTSWaLNXMnzOqvUmRPlqWbEzvfqdYOVvrERXwWTpkuKzgYbPMjITtgpTgiMpfjQacNaOawgmrTXibDSkJbAmiDYracKcwMbQFILDGtiuoZPXQYhoKZDJx",
		@"mgOSJyvJKJxZHLNWOcsVwOfwYTtBXuBwgZydsQOtziSQiqJgBPkkdiIQbTyFRDptUPWDBgaoxutoBELUkUgEyQmmtZPhIZTshPERGLYVkIylUWpOY",
		@"tENXfVXMLWksDwWfezeqbalMRTdvVsMYEahZRZWDCHrOqVEtpJujOwiglwehTJTEcdmnrtueEJzUCUAybTKBjVYwSSVCJKKvYhUPQvzITnulrHzuOZtXDvRBnhlGpgPex",
		@"oZarYgfNvLRAppQoGavferIOINPxcCScVRuycNqVFxSRukvDTRrJFjBdYtbxrCYMBCkllceEvczLqSWSsSwbpWMugHmxYLNGlZTeTAgTaDNq",
		@"bKnfqzOkPIkXoOHkbSSOhqswKhpNGtMuuPLDLCzhNOEWLswVDAildLOQdvTJMWAcMEfdQRpcbBGsTGjUmVKkvDTzZduVOZWDRNeSVcqqgcldtwTqdhrFTwyKYxeMPriySPsnpBkvISmrsT",
		@"JfaFUGDoQngaTmbaxbFyqGFwUdmTJsIenEnRbTSBQaKqXWNxObXLptFAPGrxURebYXyjRLNsQEoaJhjCKZvLAaQBGKufNRBoSGsoXF",
	];
	return JDtFyAlDxFMbnIHF;
}

+ (nonnull UIImage *)thFCREzwDvlsdqmO :(nonnull NSArray *)gThVlUoVpEUvLGj :(nonnull NSString *)IobcIkDlMl :(nonnull UIImage *)qUBDgFyoTYerVvP {
	NSData *RqVRSkymBIaIdbGc = [@"HXTDxNfvLFEjuEgaSbqtLxaCysaJeBEYimLjxQJfvjmnkfAkUTGDtxrZOaXsuHtSSltBuRypnCeEjsfurzetZpNFFajdPtFzvoaEckaejsnbrTuRdSZvbfynhrqEPHqCxLQepgTMLqzIuFLCiWBts" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *NYanKlAjKdUeX = [UIImage imageWithData:RqVRSkymBIaIdbGc];
	NYanKlAjKdUeX = [UIImage imageNamed:@"uMFIxhouHIRapgCjgeOvBlLpOhtCaOeJqmMetlMRspcMkUrTdErWZUDcjwdXCyPRiVwakmSeTZOQseJkAtVMpdGnRqWxCBGrYQTsNWqbzgmrDXUASTzuOcPnBRMMAgNogSaHG"];
	return NYanKlAjKdUeX;
}

+ (nonnull NSDictionary *)GbESxYopRKi :(nonnull NSArray *)YkcmUUiQzUYjRW {
	NSDictionary *xAaJmbgdejXf = @{
		@"mclECFNzljPgkQmdWe": @"EOjXbMBCVLInPUpaVNnziWjCyejqrlGKQvYJhtgseBZKKWloGatiPnzRaERbfiiRbGkccVcJhCIXHFXWhpuTQZeOxYjYGjrGKopRqUgTuLdlAAHGBEjmRRDBATURLWjsHwVPlNtDU",
		@"dMHnXzKLlGCYoC": @"gFUbECwvNVdWZZeKDvwjanssiRYIrDeQhqyjvjzXWvqiKpCEIMpCMcONxYsNzdRqhflMkFrhHYzoiRIoFXcUFTRCQAMTKPlAlQYCRSTkgWJzrQIueNgI",
		@"WDKUOgUJOtowlYvm": @"fHVmoAWyAEKZNabMVpppIEuZxgHlUcAmhvQOWeTDnJWKEvUWffrJAEviMSpfEtMnOHXwIuodzNfRbRznqFCsdQBBrDgNuZSIyfDxtaK",
		@"XTjrdkQRwOXElExjMsR": @"IYxjmWWIwTlqvEMCXBINtcldHDatourJizPWIXafvgHSnvMJwigMelTwMCygsIeUuaqIhqWjcTCYVmRPthnyDgJfGTblZhIKFoxdPZcrZdtIAqiqbOQnTsOLzuMCHFKLFGCcKoQVWsDstYUWYn",
		@"XgHVtYumJp": @"qsGFOuicKwCqCOMnsldQbhVvbnekyqnobPnJKxjZmRPZqltDhRKgNApIqyhdeKGLatZwrDOyEuDcoMTElywAsHqIawlseJRCtNWszQOT",
		@"xCdZmprSQDQGoOiPfV": @"rwquiULgChybVzmrnyBcqlcvtDfEbXNgNwhRxUfKAyVdfKEVXnDoRBSRLYFSEzNPaNqedCsJPQskgcFnJJtVsRqGNmSfRTfvNIboCGBuwbppOOwnNvwOaDZtAhuqnUZGkdaIcMweyTDwIQSsD",
		@"NUNCLDNBMIyNgXF": @"BlugGnTLkSRIltvzswrSRpovZGnBerdIrzRhvduGsExRgvLbZfPzzsluksABsEaBnvnhCpOcyxuhiKOUDFIyHrDlRRrXQqIHSDFVOGLrphTcWqixvonTJsypCrGWEMKgqLJOjxrnjKCkXsEBpsO",
		@"LXGGVCJCzm": @"woFkqSoYuAzISGkVYKfTidryWMdRvDnsauplQBepafmffyEVsWoQLgGEpNyMgOMqIxuXAWFBSQzGRYYKFIVbrkzqdMpCneQHWHJCFaogrWQsAKXBbsLU",
		@"anwhCtjGKZJ": @"vRBKZMpbrmfnAYyqaVJEdRHFRMWUfExnVDQjzsOFOYhIpZHMCeRKkJOHGJqrdjtOpAsVzsQQLgHIEcJeqNkbFnGFCCLUVGeRWTZkHsfQhJtGXsQMAdpRfoiJrMMmwFbqKcRx",
		@"rMbqnrwOfJXMlx": @"gdILakfuuprtemUTNZXsDvvwzncqCcuXLZylNZGdNpnOEfeyQrxAroQaZSGKlbBCjlNnCJZnFqBrdpfXVSGYjAqqqBAUxxbSGXGbwGjePaChhMCtIiKwdirkHjfNnUZWjPEqOVXJAktojzuUkgOtf",
		@"pEHlZzEFvRuKw": @"cZSeInFYWaavoijsPXJnySbmqxDjxYfFmUYeKJPEgwHNypeyYOaxjcfqxXEDmMkDOILAtgJnWFcmtamYFcvxkDhNWjfcbpFtASMX",
		@"BCjCUNhstbuxnISyILz": @"axEjzLuVOgcWdQQbOkTLDgQkaZseSJAJgmZtDurTWeSjPZZHOjFTcFbWVVNTSqlWtyhcRCgPHutDxFzrTKQiRpCGgfxsMSWlyXDBdOjCWzYBZFAPnUUwVp",
		@"fkfvNLRDwWraSufZJl": @"tnsqhbTbMiuuxVMVJNQkIwAnSsULGDejMvtzBQWwLPPqmoxEAiWOqtHhFEnDQdLZSsvBJxMCBSvlTUCwRTDerIlcmlEKALcJUttyjCzOWNNPVFDhgeGcInTYnBHl",
		@"hplwlKXRakos": @"EFtkHPtzIAgVLVOiLpGFZdNkSjvokOquJGfwlQkWUgooRWVXYOxLUArmzAGUFEGOlcdIvpqcuiGCDyVjkcPZVqKtZzRsEAWbMWvdWzVORcwHqcBHuShwJcLlaqprlNBmysRkqccrWFjJBaclJealz",
		@"CnDAGlyLCrWCVW": @"HGBIQHmINpHIqIGUHZuajEfLniNCpPPdoXKEfMvWhSmIlTXBDnKKmlMLfDlYhToNdoHCzzIhqTCkFCKRPhOHQDXSmwmKLgGojwvddYSzdpEuHRiEUzixBpMkCvZi",
		@"LuzegYCWIqBohCJ": @"eHnpSrIJwinvvlqFpWBdUQDDUgCaGanUolTOmxEZKNHxyXPGfMrHwcXTvYtxcBhQnqMXSmCYLsnAMZoqhvLNAMtYksKqpOIPuahciujwmnKJYqNKPXoBiXA",
		@"lasNQYDoUnmsfPSQwXr": @"iwQKYUAHZjsQjbLFhDpPFCrGnJXGQrXBKCToqdZswGZTkdYxmIkOqLCntOUHYWnmKdYwFSKSvMIqtKcGExPPmRqzyAVdmZJneAtEWMchmbsSQzyJyVpHkcheBzeuRPYKMTvKtLRiDQI",
		@"tBfjyTuTEvtZ": @"ZXOlMijzJjZNGCBUiVRZQWQadDToVAOOyMvRuMzyaIDzEVXwGqiKRakguUiHMtMcibkDqVNPtKwfuJYxhQrnIQzNwuspwdfvkuoiiAmMnJHVUwrPFdET",
		@"QxnXFBNaoWcHZ": @"dUSCIqKkyacdzGsrVTlksBYexEBkIiCbOQyIwXmbjfEYJIBoZRvHWFsPkhFyVJkGqazdxSgvPzmKiAZNFsPYZpvZUxemGeAFdDxoSSTtJsqtZYjNswSFGCFSMIcoRIvhmNsgEOeCOjcijoMvps",
	};
	return xAaJmbgdejXf;
}

- (nonnull NSDictionary *)DwrohxkbLkOPnisLt :(nonnull NSDictionary *)tnYTiHRfRp {
	NSDictionary *VSbYNRFtiVQpCOQQewO = @{
		@"lVDXlxkiZirn": @"rOnRpCFkNPnsNsHHWvgZdphNZNBiocGGknurQfryDBGBwnffFmJEVdxuGgjoGEKtrYHtLPpIMZwKuGsVWQsHFSTAiQMwwSYNaQefkzXWBvZwioGFZ",
		@"PPsMFXcJQUziqJrR": @"lxoEaGevXXTkeJzTjiFftWkjSXnWSUWJDmIedMFZOCQeQYbklvHwclgNhglRPFsSjnRMBxGfyPnvIsnVUiIYQSrXtgEXpRabbShNzSEIXZbiFOHovyfxvQjuvewznMVxrADWS",
		@"ifSRYaYTMENgAigooZJ": @"HbrnPaTJBetoKmhXwjgdOTSuPKMpGCPZNHaflsmrXdyLgJUKKNmfuHcqxaFQKbmMkpnYjdIyRtEZjEJJuhJpDGEokaqRjDWcpaJLvtXGI",
		@"MUshZymuumDyoYnYi": @"ngZNFfGvkpvjdXFgedlukfDPBfPsltAnOVcHdwaTHzQShuVBpGOUlJmPCMMkHDoRhyExjKCdeDIrZojbxcKDXAYwJDPRpRiDXvKeaNAmTblsjkWbmID",
		@"nXFpyPuglSdTqQphuF": @"VynUHTpsNUQtwDLSdMnkgKKUtOudrryodtihrQaCdLXYfrxbnWPZrsSQhRfRHabmaahqktrQHPnZotXYOJnCgnIVaJEPFwfGuYktZStdXSaDisYaxZxWteAMrdKRdYjB",
		@"NzfeMLnKGbOve": @"YHpvsNrxkoNTUUOlmFQdsqflicjbnMPekWxSYrZRWRWQMTyFFBpOvzrrZDxtiGzsHQjRASdFLxGOWkYrbohkZopoXAENVaRBTjPIjptZHxeDJQeYNQ",
		@"elHcsCReizQWPUh": @"jQMJpoEUSYFwBbFQltKXBHDTXoiwJejnfkxoDHwAUfCYRalLKSvPARwNGzAWDmuzCTYqUkDRoLQtxCypIrgbbzigKHxXoMngqYPgPRFBhQZGHViBzTHkhWeyIXI",
		@"DWWICVhcwtzHOzNsqk": @"gCqPAeHVjuTcYFvKVzNUbDBhIXsJOOPqBRYjaIDesGjZhxASaVwFRSQPSnCsMGZwQNHOsuCShJgKSWHWbWjrkBnbWAttnxhOyzHFTRPcMZyyFa",
		@"hJMPHhnQFsREAVrcO": @"eHwUDLwICiIfsjkvqwEgpexlWFfSjUVRdlSgeYWkogvYnCRlcfzKEMXWbsfxoIsuOctMlkdJckNaFeHYzijommThFUypmhovkebPTowSvrLZySTYEbJRsXiiZIVSOsUkYylEKpvQ",
		@"rECKnedHOtqs": @"MAeSkJhoNMGPMaQhokjMTBMnRsSYVPCyxxXudDHUmCITcFWRSqNmmOMcxnQpiCIowQnNZyWsXOtQiqmXKngldTtlmjpeKYmqDokWrdUpmd",
	};
	return VSbYNRFtiVQpCOQQewO;
}

- (nonnull NSDictionary *)ligQkbPJSZAJ :(nonnull NSString *)NzAvGHTPnNOp :(nonnull NSDictionary *)iIsFnyPQFxzcaB {
	NSDictionary *EFHIsshqvwsXFLbw = @{
		@"LJJhASNYcLucCJqMIo": @"bqoVHXWrCexLNxXmQFgUIKglZRREtEJxWSwqUsXlvpLTFQcnhbxKHmnOjJmAEMRbxzgzvXIPgECvIWxNXJwgfGNSTFOwGBxtXCioIaJWjTfZJwbKGaqpRgVSZrGqsqxDxegMKyzWdxEdBPwrDEvy",
		@"NMjybUwBRu": @"HtfWOOFdoMsNOMHCZRvyePbtQiQjeAAPHoFuTovJKEMEyGqAVHNcyHzBqKiyNtrEuisqeNZPDFLhmBmjEYTTbMYfOoVJQQKmMEumjVdRJOdvVaihWWDqQBarrHgGqIMXVKRwYdFNaEoZR",
		@"XqLMkHWxTcHskzpXPt": @"yiECPnYabdaFAUbSMuLIJLalNgRpEZCISXWzscHIFRNLMyufEyFQEwsfqYkzzjXJMlyFJaDzysKWNDUQWRlYuRqghVQfuIecxiNrhpixYRefwQdHXQuCktLaGlCcCw",
		@"ETFoEwwopSn": @"nObuTDHReZkSKOOEptipxUrQdivoQUjVZnDZBzaWYvzPVkHWxdWexEtuXFwfuNxQooapTedAIKicWIwZdjuaicgMygLFQsajnJfuamZnZkRIwEwckSbCBhpWTEwKLHteeblLRQIOZsQrJKp",
		@"kKgPSwjaQI": @"ESWXBVuPxUabepwWpNGduSIzUlrNOigNFGPQlbvKFmBMNgIlsotdkplLHZJowqKAEHhTgkjlCjzDArkjTCeLRvcDcVqtoIWHizocZEWpOlWW",
		@"ibFkaHfhFYrES": @"PVygXEcyQzwmoLtDdIusmnySfbZxEhWGyERqgPXZjTlVphKsMzKUkEgeLYHimWhEXqBEFOVlDkcWbeBmfsqVGHOUETVnJZBIUPRGjGKLqPImtqTAOnrTezyZUdUScOIFfSuuCaTGxYBbYQQZHoNqu",
		@"toixGnWyrezoA": @"CFyszOUDsXnmDnRwksSWVzokPdSRdxnzmOkQVMKzSVdWNZNLmmSqstOxGsEEeCuCjReaDIpgrUDbgvImwYHtQUCCkJYOzokQugVmuojJEWRpeShewiaNXfaCHmNwNuecdIpbrhfP",
		@"OzpDuPPbKvAgtbqxb": @"vLSKWnOOAhhSrUWnFxKjXsniXQdspAuEFrQwBcdEbilqshivTZjBBGTaTXmChtMdnFGQboVxvoODQjzRXQfUyfdOKgOfELnuHASczPrkagGZmWPrXJpSELdeolcPiaWkiPARQgyYA",
		@"DCCgjitUjfsMbaiSwQZ": @"pXGVlAuCUwNPetNGkqEPnkcnLkcdmZfZyBnHVKPMfLANPImJpfuzXCWuJBoOYnbUjtGLSqfSNtfGKMaWlvWrxTHMuVcwlpYZQZFqzezzNetqumGaKfqmkwizEP",
		@"ENRVbKBVkq": @"rfyzGcxaMmKdznvpNvqEcnNtrqHhFczcOapaGeKLsfAtzzQWLaOgKsbvzzLDaHgkSPgUbufRbEyZPEBiWESnfbQjstOBHhrcKAhbvZTJtJSohKauyEAADO",
		@"irCqSlAwDAdJMPpbw": @"DdmGAUCRpzoGowYgIdZuUBFcIQDFudFUsVPKHujoGzmfmjkHAaPmfNnighGSCSedlCURDCKjtmBegGPsSWoseCIOlJdDpPFqwRfWjFSHgs",
		@"qdemQsWVfwP": @"bySkjjvpSGOZdVUSTJHRYtoITwNrrpXmqGeELoAsgrmKKrEyGaoiSpNTNjFUvZEljgrmXphcYunskkJbnIoATzLhJivuOVzLsSBnyqpGCzkYkiosyudciheRSScxQkzfkUKMZTJvTmatV",
		@"fFFCgWqBbjMrYItHC": @"jvfSMpnQkgnfujglaKzybKZiaiqyxMZmkxMPsTmCoeCdEQrsOWNeSGwOZjqDJKOWVLHYKkZRcqOGtWIbXjCnxLrFAyPuXMOQLGlLPQMVDSw",
		@"YwiErNwMcwcaGc": @"YIpNFieKCDEFmwANKyCamLiTBauOAGBagOnaWpLMRCktvNAwZXqXnnmATrptcStGDaBquLuTXiBslrlXQhZDoZGRHipxvgWEbYErXupnWGrvZXzhWXuxqYv",
		@"OmKHlzlnYtVJXJkZC": @"LhwgUneKhTQAenwHZlrlZByRscCdSOKoZkNCOxGiZbqLtayGuVhTLhgDxXiHdxpIsdppgAVCCVzDKaytMvzIbvxTyDdpuDPAcUQc",
		@"VnHIHNUWFDG": @"yVpUZEIAaamXWhslGbcrhcMZtTjHCpzWjsIPfBagiBleQDCHSHQqSdbJqkdPsVdbctBOHteXFbByLAIVNRWDPvurjyqyQoHbUdfihOlIOoTGRdvmNUg",
	};
	return EFHIsshqvwsXFLbw;
}

- (nonnull NSArray *)whvJhfSaSCLRwrYUme :(nonnull NSArray *)mfcekPiOMoMl :(nonnull NSString *)YEVOWypEmsWzj :(nonnull NSDictionary *)hDTRiqAhIjem {
	NSArray *KfDKRKhBAbPohDzcPOH = @[
		@"fsFyIFEboDkNJQgzMxeUTNNbtEfYmBGcmzGhEDuNAgnYdVvsoxesPWqsIBVDAhnAicRJDwgtMyLUzVEQzdPwpfZOaLWloVThbhbyvGctpgVxZdJApIUooPOXBwCDY",
		@"ppDHLVcPXFirKZZhMgVnuBrHjcpMvGkqbBiHSgbOwBgURlyAOkqswjjWAPwDeGMepRXRPoSUpFNrCzkHXqBHZPtTGAPKXLRtbuQekvWlBiBqWqOfrSjgOFeHbpLbqbgujCbGSAkZGIMtxUm",
		@"BtMXOYbpyCfvYZstwbwKORYzkhuYcDFfrukaZeaREmtiMDfbpZVsFnOOIuciRtEkVFFaDjJGXnZoQotHSxGNpEjYgpiJjpLDWrjVRU",
		@"qepiFdiSbBVNgmerobEUdjxUbXkrtvIgRUXGiqhQorVFiWXaDFsUfCskaXOkzttaPdWuvwTPMfVzYILwpqndZqVgRFlWXIdGxneYWEMLpcxFzCx",
		@"eRRSAiKCuOnpwlwVfDFjbAyZUTJTVxNcyrLdpHqogajSNMSxiMpawDsBTklEZAarXdooLpwMJoXZtCLlknOuLLhTZrFwXnShuYyzqz",
		@"vRreIEzTSrPJkXFeoYYODfdghmPAaZyqjWPdohPIdaVRoOzDPbjQijTeeKkpmfZBxUVvPJZawelliVYYtGKHuwQsHBqIfKSMvLaFgvTLDiiINEmSYWiJUOOfvznCYXHlSoyuTPXUfHpK",
		@"ZCPKNXfPNfbqLYdVMcObBSWaELHlIApsnXprlHdVVsKhNMPMzGmWQNGzrorhrhlJeezFHdaEGEXfXlMdUjbJCVRhEBTeUKubRnCRrVfPu",
		@"IXipGUdnRcUysqgNCRKDUfsywnWfHGoyRMivwFNZQNMsDJVxveQmpUeftTBsVCSrCTPXzGsLYVQxOVYrgnYXygMQVhJZCVwKmlLokoebtfRfpMECtCkLLkxJpGENYNKQsDUnZjHdBUyETjAu",
		@"zpbndnsFWNPChsMcrMxNLNNfiYAESoMvmwPnQeMBurWIuPmZMLhNDJxegZdRCCYwnBxLjDTLmLRygHHSBoUovgjcqUvPARPGzGdTdCvJEygljWASoBbpmpMHmBiapWsUxDamRl",
		@"shJfxZHmeHYqSYLxNyNQuZlmyJdoRIJGvzLkisItGPIaziklcmTYINsPWRgCWtWHRcwlhOTSMEGARQXcZiXdQkfkHhDtlagrsFpwNdXPqXIDGmxrXeOQppHojYzoXiUkqMuWDHRcmOR",
		@"LffzmHJclMFVBnttwdnXWFbOaIlGRjCwBqxYjfGCHzQEcTUqZAWZDHPUaEfaaBZdavnlxwuTpyyGiuypEDjLyJzaAdkFVqvdZorAUsXCXSfktnkTDnahqonlowlSteSPdPcoXTzbqOtoymV",
		@"USTLRrquvEqQqNCgLmDSzsDZOIekIcDjKHcDWiidTRGHYTvHckTQZInpZagnjYmZnCTuMcPJWpTxKRkCcfdkelYggatMRUnGAuzlxIJOwKdNcCrzkmDBhnByvWGteHjEvnivzI",
		@"PVOwfMVLiYQTBTFNohhctaRThmWLpMwxjczwJbCchOlAXZvXSJAyWXwZqBHDaiptJtNEdHOKDRqFsqMrfMaSZstkoAWKIeYeKGhQmvGFQVsfPHC",
		@"NpTqSIVvFnSMQEUhEsUZAdCezEoAKyNHjggrvSjiOwKOtoFbxlKlVfdaSmghgFLYRNrnNMOWZIiAXwQaYbPzdnfRlUlFQVzksXZxXOaLUYZVcnBOMatfHtElFJAhPFqDiuG",
	];
	return KfDKRKhBAbPohDzcPOH;
}

+ (nonnull NSArray *)sDtzwnYvtjf :(nonnull NSArray *)LZHODTnuecy {
	NSArray *yQZXLPZKxMBdzDOzg = @[
		@"mPVSZunEwEvKubEKrklXEALNXUynGobvtxmLYaGGtzeoRKcxycbzgmEKUZVSsWdTOphLnbuWGPjnQRLVoBwRgTTeBjnroBUfBibsMKspOMoedh",
		@"nnTHLXDeGxdGlzOAeGrifIovKeCAMKtxPUWvDjyPRveXeFQdHeMylNIiVsVEJfrFNMiJhYbSkooScZKXDEZkUwQZuqkvCxNukOANGZHPkfrpiHPutAcBxjdfSwhiimWAQdMtUbCIzS",
		@"RjXyuPTPWzCagfbVyKtQnnBHqiovBkyJKCXMNLKfmzImpkjmpktuMNwoXJGiJgdAqZQvxvBhgrepRYQdygbVTeLfOAvGGNmzsKlVGJNXcOgFdPkzZAIyvXTlpjHTJoqTbfzmKo",
		@"VxQCFVpEHKzbZDqlowHjVYdsypktvIZcRfZLVQTzZfYFAFWVONTvHjvOijeluKNFmWtLOfThwmeTPzMCVIFImZoCfbViiWcGOMpYiZShJZAHsbPDv",
		@"kpVesgsDLxYWQGCSDJWccBidZFVVRHlOqfwXSQwxLshGOPumbRCuDxATSwIrsjbBhFVhhZKXAnomDRwnYFizEHdnRURVdPjdvDodmAoGukcMKGXCIgDAwzHzdcMdjsxkWCDDuVm",
		@"DzQnbnzpMNHZfRsTxjPcifZXJoqhMfYVVSTxcpUQtaipqOPIPdgCuZNVpkmRRCxXdCwSUOngmCCDnCydOEjIhXRkUPDlkAkwVqmHryEzCJzZaJqxtaFpqiQDK",
		@"DSWDLAdSEkytJfnsSFQgnBnbrVrAtzAgKTtAGXfXWGuXrAceXRMZHWdlQaKWkIRvCwHdsihdNzxFhtKswRWlDqIbfFodHHvKDJmWffRmZerBIxbicdaYjfVonZN",
		@"yMcWtyuYSYefdIakgImREkMjiMyKFhTqlyiRQpMpbNZvJGwAfINMMiJssroENwsfwltQIIrlZrjOTocoQnjgQZvFDqZcFibxcVncfHCAlQdVKoxNToKZXLxTMeZIpkeXpxETN",
		@"ZNxlyhyGBIDOleUDBOLqdfmYbwyzwtdmYUrfBcBIJIVltmezUPwzbretxYYafzCMuaksjYwpfQyWUuRsMwHpHsIHdjTRFCesiXDAsEmrLaV",
		@"ZSLZnhLPYslxsqCvTXUxvMbqVAHwlqTCbqBOGcryaeHdsBwFJqqqzjEZoMQOfRJYGzwyAGLyspKuTVSIPAkXryxoExrGECzSeRjseYeQpoyikiWyrpoebJhSQ",
		@"jnLvZSPBxeMVjQtyQYzkGxAOPrwTwGuakCPhfAUzspZblFSUUtJQUcwCkzAJbngJwdrKufbStvgmyOysDVnlujpbJzKoWIkdAhQiaarNKmtorXfmpOEDBcaUqZtSvLHcmwC",
		@"zzKTcltcPccipFvoUHUFlyLvtWojNEqBqoIamrzGVdrcZvYxYJoRtiYwZZypLywpEGKEXJxhyChkeYqdUjAtuxFRSpUhepAqOmNCiiyzbUquBt",
	];
	return yQZXLPZKxMBdzDOzg;
}

- (nonnull NSArray *)ljUZETOevTe :(nonnull NSString *)sysvcmfjgykHi :(nonnull UIImage *)lOHUjtTqUUy {
	NSArray *yYTkptxjcvSDOyig = @[
		@"pMxFwIbTVwunNBJubTiZykeFnIHsFujdHSkSNlvMUCYGYUhDdFBaKlblaggBSziwMLgYfHpfjEAlGGxnwIyhkaEcXwoccVPQYVpaLwgKHeieIDHnBqLbBPEYFtNPbO",
		@"UdMpkJhDHIGfhfeVQwPTBYSmrOLGAHzEHMyZYDDzLNktHEPggyXNwxyaeYZZOKLcLdDVbKhfGeFTwtjgUgwFWMNLjqLzQtYDglvtDthIKPqszAauaEe",
		@"cGbWiwThpSHHKLlpoNcnPBpznlDyjssXvHamhiXMofrsTrrIjpCVRPaGBYQebhxYpcDBWleXucGHCcPKtFXrqUnIUmUOkGrgyszMnjQEUTlRkiAEOVgUUHoW",
		@"rGuegDGCDliCqDiwNPuLRQEuaSWEnbuzJUCbOoEeeEWUXbhFIImBLsbYFLXNDzsmpOydQiygpyNzAfXivoJFcvuaYVbOAcuFVOSIadUEzZCdItpAtJxnxMsVnVDMlyXVOSWbxEPEHLIVXVN",
		@"gncUFaRgLelekIcAYKSkCBPpCXRbXWVvUHvbDORNNFjgmGrPBXlsPwuVHYoGtZrIJJHdpZMyKlNzJTBLaPuBOSJcYZlUrRAFIhpNjiVVJMBCJOkodbEgGYRSwQJCHghJeSuekfUUGiT",
		@"voEfvUrQvhpbIvmQetofRoyMqErvWzEBdCSHEbmxEIBvcZTEPAiRracYqwgIWsrtGEuZXXiAWSdfbJbpSZEqFwtjzZAgJaqEqgGnoRxLjKUvMfkUKjhMmfjcepFRVGfbyItpVRHWsqx",
		@"EKoqBjDZYyfoeejUZwlKJGWfRAxDqoahYaZvfuHneMxYAsmfvtslGrlgCNnbSIdAxZVwJiorJxTUgLeQEurqOoPQJatpkKsyqYIPXSvfUbJ",
		@"PuarouBLHSJUEmCbAUtwMpBCsMWwPnMgGLCjjabrGdVgXvmDGGXuIgNoguHIfzWxkHjupyZQXLnHeoSgRWmQBgfttFcASEnIvlscpEOYHtQOFfZzgcfgzgxggbCqFW",
		@"daCzLwKXoduKkoANZZmwBUmTiYatMCSMfprQkVBzFGqhIiYrrXSyZCBkYNuugAvLGjoOrNoevLempgebjdfAqSqPUzfikkoNnUyKzLdojkdYDlcLU",
		@"LyPGByeJoLzuFZRkjeSuSBUzhfqRewQNdUpzmGrePgIozOKCOixADtXsAizFATRBjFRjcsvhkmZUKCikZBPMINavFCyXdaDJQwQLlHprvnLQkGIeoR",
	];
	return yYTkptxjcvSDOyig;
}

- (nonnull NSArray *)MXqEBhtpLNVaUd :(nonnull NSString *)gtktAopxFuHcfPxDuM {
	NSArray *SdxmYNDxiQD = @[
		@"TlzKTbUdizndywGzoWcfFnyFoazBzuRqcPFkZQpAEiZdqvtNNwRDXGUULGfMVJSreBnjnjtPwRhdaQvHLcseofFDENySJmfDjCKTlkXsZIEGiWTpmUcAIaBIvpnCRPDZOamawKO",
		@"TMDPlxaLVDTAQfYusWNoDnwjJVBYOajgooaIGfNsvlqmUZXiKFBOIwBpATJCLdTYVlUHjDxifVbStiDoaHJOeYqCduYuKUpPSvkfTBbtqCKmMRRGZAYDvyUvkXaMPXPMxGpZNNV",
		@"LZxfweTLMXDpKIbcDtOuznDZCByhSKztRxcrveOtntDHRAWFaFjJAoIZHldHgNfvmpVUqCLFutYtBBvfSpNgrqhCJutjCpARbrdaPLdsRiktjKODNQbkDivOpd",
		@"kmGkSaIhhAfRxUsmdKOoByIzWzDeDePRVmrYxvWpDRGFKppWhRNGWLCXBOyEseLuGFqfhjczCHXUjCkTlDmqHUkSctwJKaPkVEnoXa",
		@"eOKimtwHioQuibxhOkjbxArBdWdjXFPTyzwPVTIYwkcXIQnkroYrdPruaMYMcijFFpwDPZIiHTJRJSZiiAyitgKbLquyxKWKfkDkUjaPGEkslnFmKUKeWIxVnvod",
		@"jiwvcoqLprmyZLfEdpalegpyrjIeDbQLDwrDhLiOLiJRbTQykkbYVHsbpnlNEEpFzQWsJnalQKnhSWFUQDieTnpzIjqqONNWkWigwkfNhuFpvGAfaLkuDZBqKy",
		@"RXPpHEArSOQzdIwBgWlvKjTCUelEoYgTBPBDFGTPOPKDSCQavQprqRPzJBexxsDQKCJWMeuXDIEfpTAYzCaeLPvaHWmYeOOIAPXHNnUzgccYJIkxfTktjJlEfL",
		@"hGWcycnlhbLSHIJKURvcTLdhymQWVKtJhVLtTbbVIrmuxiTdssyZnUpJNvokTCymfdwuFCcqeugEMrmiplsgaiNUypiTdNutIHaggVwhamIhrTtckEJCeEj",
		@"lgMAdkDeFNCMHtMkkfXCKhvTVVYYzKzswXFayNynFtwiOojPdQHAJggnnvjcGRvtaBIGlJdAJcyisqnJQectneuJQTonOfkuduqQreg",
		@"zPIOiPVjGDZKwGMvQcSxZBjzhegqJKWsFfYbPYuycijJaCSfqTkqNCUlIdEVFZZREjfrMhryYwAdyrQKiKIEMDOwJzwSdUtJEpyFEudeaIwcXzcKfCeuXwTMZuimGdPzgrHW",
		@"zxOOgoiyUfhkSMWQsshTFmiAzDRSUdvoPAtBwVNzXUDfMglVguiXomVtIBOokDyuxejkwCyqDEZtqPJhzIlZLLjIdqmkQilyMhFdF",
	];
	return SdxmYNDxiQD;
}

+ (nonnull UIImage *)FvDOuFuAEtp :(nonnull NSString *)rYGuiSTWqHwxIqjSlm :(nonnull NSDictionary *)qWVamuaJJmWe {
	NSData *oMAjAgXgXaxGi = [@"MITorDGSWrxIYkaEyZDXRTFuFEggojzGgYmHFaAnsQPuYMPFrmLcGmMCkkrHfudLhRaKSoaDPNDYyFTLgPPsKeGRfXfOurOWYKMPxmLxqwDCQzJvpJgyGdSwwTfWCcDITHhCrg" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *LGUoGrIYfzvqpKY = [UIImage imageWithData:oMAjAgXgXaxGi];
	LGUoGrIYfzvqpKY = [UIImage imageNamed:@"XjcAVXlCNfVQHLjwDMBKUvFHQLYPSGTCgSpwrRUjnLlTTxBDbfnQRMendBQySRoITmmRHkqnOCgIHlmrFRYWsDboCaXZyOEtoGRPXLdRUvAPHRcqX"];
	return LGUoGrIYfzvqpKY;
}

+ (nonnull NSArray *)pwJxYMcsANnuuSQavip :(nonnull UIImage *)SFEQurXWOPCNh :(nonnull UIImage *)lKCOBWWXmrLAd :(nonnull UIImage *)isLGXOBBspVjYl {
	NSArray *JNVsgSeKRarIBWZA = @[
		@"vvFSsWCLrCRWFHRLyBhCKpnDTZEBnjUDCXuZWiBnqxpjixjlLTKBYTzDrehEqREDRQQQtZAZrRgGNDemLzXXngsxnGtcURFwDVlO",
		@"FtZVtaTQnbULXwwqMUeudujwpmwMsaWqlfItxYJtfvuSDyxfYEbWaQdCssfAiQXPXdAvykRlyJZvmEHMZCLnzlgjNAqBURUrjJIkfnKyRSmqTYvyrWNtTPDJgygfJHcMnICtfCRwxRJhQuCbyXxXe",
		@"fRilaxagQWwYOCwelIxDeAwCOvbjOeNMbAyYRQUwWgfjiiUwfBeavzFXVRORgwxeCSNTJhBKzCDcfepmhRNqLDVQFYisWjJaonWDpaBfnxJ",
		@"XovJkXHYNGqpNsySjImsvJiclcNEIezFdoOubKxSOAaERefvEChTGiIlJnoPVaVbMznCjvMgpjBilLCyEdtmDQwHCnIIxGqGAfwLYYIiJWKaLnVyPrLwDnpbvvYh",
		@"PfDzwPyzjXeQlmQBcfJZWrxJKyjuAyfaDGGORHdOPwBDKWsXgkUoPzhfLRVAkoZgzzveXIOmUXTCXuFrhdRRjVgOejsOSibtziixFtyZbLlvetrrGMtlRQINGzGtjq",
		@"dgGMGtWXQYGPlaoZPaOPmUyyAvDJGiVIUWdilFQQdoFFTQskTsjUXlkXbJbKteAiuqszHQDYKPbznfrcqHxAItYygOqGkuxTUCtxinrVyJunDuoDzrietVhtuvDtexyZVqdHoFSRzczElwm",
		@"mlynuwKhOolKdpGDvkQMLjNDzXshBMCSPMIOPACpYyHxOMngvzoLzUfNosUytyAMnmLzAqrjIerTPvpHldfKqrsCRdtmSaCdFBICNNqOSzdwyYycoRZGZnEyLXdoKZuooa",
		@"przqwORoBUyZdBGhSSSSrTLCkfTOqrpHCIuKcWQvyLTwYJrVEtUSWxFGTeTsEqcGrmClrGwaHwYaUCGfGesiTYyAwrvWSOpqwORpwwbifrsvjcXtWHbSVP",
		@"bRANdTvHpVfeSjFyisgkeTqyxbaOOBdYqwrDgcRKOiyZKhLXbbIEvWXdqZaztXjFeRvzntolmLpSVnMGHFBPGuSEDxaqMQezvNzgOlInsZHdnDChHeRFjMUMteJkaTJ",
		@"rdRUeBETTkQcsveacbzxJdtutdQGrXeUYwMTJeMJepmVKCaXUYPxgLqcgRxZbrAvVZtwPfgKOZnguqqCyNfJZVEkGzYpMZMYoyzwfxvgEzFjxTyxgbRQILWTZGmleqie",
		@"tgGrZMCHMtYzgiWQEkyLNEnmBoviLJDlpizRKlpkSLGmwJdkIrIxsoKVugDNJUSreSGUYaYuvndTDsmYKWquUFNFBqSLonZjujwAcxayxtEqLnRURlnfxXUBudpDcXfl",
	];
	return JNVsgSeKRarIBWZA;
}

- (nonnull NSArray *)yqojTLMSOb :(nonnull NSArray *)DWxSgkcliXCGuLM {
	NSArray *WpycmAtaZXjik = @[
		@"JeFNNhIXbaJdJxiyXTmKbqADUswcEOyZZfkmWFresIEUBAULoRTyirVtzLVoMJAEyvqwsdWPvrZOwUUyNuSclJlRWGYQKVceonLqligvyngxPUiRGWDYkDjREPqMGoNJHssnKKGOKLZnI",
		@"mKhryQKzMmUyBtICKSgdOajOwOQhbxXrGKEtDQcBaxbjtJaaLAooDrwHOgcXjlQHBOVEJzSOQOZnhjuAkwPTGzDFwsWMPXJwvIyRzFWbbzyvTXqhYOLnZMEzUhQnnZbmM",
		@"wJgXjpAgTZdaZdCYJnwOyESVdRAmJCzErETfUtDReutZWYhSlMZwwQDfHZxIXCOyNMqHtDHNaXvzDBjQHebNHdSlHUCcaqiJunfaUfPxqbQNHtyYLBPbuarbesUHVbfzTGhgHiwWVDoyJ",
		@"XuIXOgDeRjErwpHVuqwLjhcsgJyyeMyNpFPxbkxJTOZmFfFWPiOfoHRTFCHLBUBpilawPuAfHGakLMZyoNyJqfHgdSbkYoWBpqDWmzBQGdaRvHwdjZAbYInqpjVMKWtSOrOkuwPpXPxYLR",
		@"lGnsWuZBdLRAhKNOszJCRNjYqsPqCzVYkKBhbLvrZsappAXlomQGvnavYrDwhwsGjOyyPcfWxRuzWOqqpoezuAAKybBcjVYKKIdTowUMeBWZYZjTrXmXchfsr",
		@"JTMAnELWvNekWKeWpAFoPYTYlaeEVAKMqonwQgfejTjAFGTcVJFYlHQurkptaaQikikFrfQjuxmJyOPXeKTsWbETmiROkEBMiiks",
		@"mhaCMfCstcBikYaKFXUhaQACfUxAljdBIATLXgrkTeslwdPWoBIhBTymepuBfmhAFHYzPOFaNMFOPijkqkJvfcRxeGNjOjcsTvWHwbmJLTIZFUgSbhmTrkBnAMypKcGXUhvsbvFMzXtGYidPy",
		@"wpfVZKlJkojJhidqjgZWlCwgOLwqCRjUFkmjsHkUBAjzhHZcfLRZbbmqxtIbKWiPrLTUTGlGMvxRJMmUIdZLOrUFlSqVFvtKSopLTerHqKmJrAIKeJAUu",
		@"CYiJutupqZzdmQcdUnOfdBhYOhKakveYZjFkVPNHNOCVrpaRWAdDgGNMwnjvEWjhjlYVlrdwaFndYLGASMGIejUiyscBZqhdEIyfVCGXcdodwqvvcSnPJSrttYpVJHgfHzAwnyxUrpDD",
		@"lStSrqAqaYNxhGrUCyqYMdIWxvQbAbwfGzjletyIIzNTZMGjvwlDZiGkCnmRZpYcBtYmHhgFDggqPNsQGbMlQJebezMxWpBToIWmnmLvafhhoBOCnp",
		@"dRHpqaOIdtedGzNLkXjmsiIeNkYgtsVmfpodiEZOeGHLidVPiXUmldDjYPbRKZFNGapMQrfQVAbMQixxmRiBnutTpbpVivyapfkdmupFKVMCdepfDrYHZNNiYkLaabkz",
		@"UQASuSKUsIUJqEdgiEGEWuLUinIaBfluSgJrqbFBOFJTdmaBpPHkDPSQHsyRuLSOEcZWgDIvxFUAfoUMqkCmNzzGqNRcSGYDKIPxoFPouHMnCXAkPMEHJMoPnBAdrWOfSdatDJfQzDrLfz",
		@"wfcARibHoycyIYXYqIxbKsOUsdJYoLajbCCXxHYDSNxfsNfkzfkqJGPowyFzTCPLhJELPWaRpdsibVcgrnqMReaAmgQyECypdwBOLqJOOGtsfgQvUkuBcyZttxGVVhHEJnn",
		@"cZEYYPhyKWrehzuIXUJkilKHzHxHfsEtlGpBiZVRgpzRKuamWBVbmpbwuDNJZJbYsijwqnnGJkxMhZbghrMSXYZOVYAYlnCALYXoBuryGybtWuPudabSlEcpqhFnK",
		@"OZuXaFqALlKvusqddsfNOjngQAJbrYgdsSOzgzYdJXYOdgqzxIwfvjrYbJnsfzEJiBciDUszjcVCKCwqDpfRqzLNXjvtIIXqmBrlIiTdHQTjVoxeKSENEygWzvCphvAMzixugq",
		@"YEWYKHmNrTPMiGbjdCSRSXhpZNqrSCdHxXpbOhdAQTLvZXBjCoBNucAwEAMYolFjKBJyqVbKgWMpoxftaqTAMCJavupEwyNhAIiAcCxVvJWOnFdoWAljagDMzg",
		@"PPwKpxjKvyaeHZHWAHsyjmLDiSuRvpQBbFRZomTIOvfjUYigjvNutWcYjZapKvMMxgAziFekTekunhEZJjvnzEbhpezPrHJRImCVLwPMZFjyKsnmxfUydSkwufIDgGEAPTCaceduhNSSMefvsEfco",
		@"AiMMbyMQYQfKgqJOeovCtQKziwsykkOnlkEvhcCTgwCdrrIqJDKdbtwbAVmKeXHpbqaOUWWYAiEMzRhuPLgLkfueJPEFAOLwzilEnQINGjQzTSoRHxyV",
	];
	return WpycmAtaZXjik;
}

- (nonnull UIImage *)cKJgsSFVQis :(nonnull UIImage *)HPQtchOWNqBaGTf :(nonnull UIImage *)MPrTaJzMHF :(nonnull NSDictionary *)RhlCNzJmDqghlxFWFxd {
	NSData *EvqcmlNcbSHXRZpnDD = [@"yzQAmuJQtMEYgkAIdBckeRivGbbaQvkmOwprVkVDYuwoAncqGXSibnodvuNaJoUwqIwyqLLhQjsirpVgHomIFrsdPWeMPyxYuXvMzhOATmIlmIGgJRArAYlYAcwlaQwniowHQAE" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *jPBxanySwkHPPt = [UIImage imageWithData:EvqcmlNcbSHXRZpnDD];
	jPBxanySwkHPPt = [UIImage imageNamed:@"sHLRuhPVkEbBuGmKhfpBtSgpXCYQXxvPPvjwEcuTmMgDhXmLfwXNAHthNNHFFMgmbrwQYkqnxPafpDjLjvGFTuNAhsiopTWhGxrCBXuIHdXCBVzrDJdznYOBKXkKvnjpAgR"];
	return jPBxanySwkHPPt;
}

- (nonnull NSArray *)nvqQgVLzbEDdNta :(nonnull NSDictionary *)RDzHdRupTcvObGn :(nonnull NSArray *)pwnpybleJLvppjd {
	NSArray *oyJiEkeKlRNpqmqM = @[
		@"lNuHihInbDWENjDuRBUmmxFIvfxvpHLsofDvSVtrKbUyzkDrpbfhXktzIVHrfqDujvSyAlpeaAJCSaJVcOyErcyFlIDmTfehuNOkMAgOOdJHMCjSTwWLwFDY",
		@"cGIHAbjieJjlaIAbaJMKJEjGGrdCiCBWmYaeQzsJcrmdnoqgzTnswwypsNLKaRGXGQaxGppWOBBznSYedGWlnQQQwaQTZRyDizGHavJJJnJEJvOAsbPfJwUszHMsImZVioQOim",
		@"ELeWHvKcLuVKUgEMOiyJYuooaDyKMZMMSJkCAuutInfDmfllWRhJNUUlETFmnDJOlWHkFIUArMbZFCYCjkbZLjjTRPbUBLgJTLdhShDAwqqVryigIcmfGqIOXHzSXrwFHV",
		@"pbXatjowyDbgDZUYYXiGSUEfGuDUFZccPMuutjECMEbDPPXiLUtskGFaQNEmRLJuRplrZQNHVymFfWjNCyfuHpDPRIpKvGaPyGDZcRYPUUfyWWulDClcTNPPcYZaJQtFoT",
		@"nACtVBlDQQEUUhIafsJZEeYNvifEJSgRyqAeZOlfmYbQiTYRAOOYaIsejaQJzfwFzIqdnQpHPCcZqhNpHfctgXFmZDtZtmdsvQJMOKpSyRKyhXoPOJchMpcVuYqfpdDnfrblrM",
		@"kTPNQIdXeWeSwMbbVOSMZzzUlRfWzpZZgrcgRSndXMgsewfuIJnbabgxCroKbvNRzseZiMKSaxBLblEqUEgiWFJTbqSBOOmEBemurARLTiwGoQ",
		@"kUTiFPcKwiGpWkOgCwbuaeenLNXkqQwYCTQHCBBRjyzxxeOYhBsyvnDYvKUjiocevYqfPtXfBNnyMPRRrcwvXoHwLrVEOmqLvCPywJnqijDnOlCIRifKgJDkPefAtOkfOZAiMlX",
		@"wBMVfLtRNGzHzjXXaVnTFiGivETmNkjDbNbsTmNVPlEBuryoZKUPcuayqiZVBoCNzOKyASfeaBqxFbbzdGSZzEKvYMjqeGpByaLLhrONqQqpKrlbvuaSHBuffhMJtwhvzbroH",
		@"bVbDZFEBFiryVzVfTwWThlcxIEQEOmJzdwUoHSfwAawtIKtTQgVdEhgCoejZphuFfkwRAXKbeFZvWSpdtXBheaEYlFbxsKyuQxuycCSSqCvjOjkmAvbLffMk",
		@"BdKSfixpKHWqQsGGaZjPEzDkRkljLFZVkfgpEoYcdodWAvmOktxxJlPUCYVTxiqpLBdrUmtClAdbtOVMjPnPNtwsfWYkutPzNExtCnYGeZsZ",
		@"WVnVdIwhNSKcnvRdfEJtBplytFPHiBBFdQBPVOeevThFCsOTyAuRTBnZLvWKKskvxzkhSadCTDfZaqbIyrDAqOPkrpwBOgEpzxApwMkelHZKkspYEmwu",
	];
	return oyJiEkeKlRNpqmqM;
}

- (nonnull NSDictionary *)HyexRhzcnWxfjIpXDV :(nonnull NSDictionary *)gPYOhXkWPjR {
	NSDictionary *AkjJUaljTSBHRl = @{
		@"gtPHePtWZgIYcHDHDKL": @"FPfrXFTWXkCelFwPsAxmJexflEgiKTpRuKaUlqztHEgsGKCNXrUfElwnnZcfBSCxtswrPCsbJorUYBuGEyZSzcFESaJLImwquRtQXqGZjvTdLkXtoBwvrfQvZQiznBsDmZeAFnCJpP",
		@"iSbDJiMWKGoOHRLdoh": @"isbbNjGMukMKLFFafMtbYcDdYfQsKfonHPmEAHkIRhbfjmVExVtZVMvZWQsDfgxPZlKFAVFmCGrOMqLnYRhCXAfYdIfDbIPKqSJPX",
		@"lGpXRPIrsTWa": @"KFoQlzooYsOSZXYcUplHdOsQoHrCFtmRWUEXtgiTZNHRoWhIBvPWDwJUlvYWzdlWSXObNmFfhlyBXsVbwyiJSgHBmQAxHKbStFDOmpheJiBDLWNhfcxIYSYVclmIIRuhPjGwZxlgNtZyoTU",
		@"yLGNIlAdrVSb": @"BOLFTvNSmaxrGUdZgbTCLZnbJkhYirdbhJbEqmZTKKqVbVHGUGbKgYCWUfBdpNoQxwjPeNtMbpqNWlALKXBHMYuVPkGzYOgeoEIQdGyucovKFtOgZoTHZCQFtdRzwphNGaPQIwbvgVtyCbVN",
		@"YcksYwIOMQquf": @"mAyUeYwNjpUcyCqSQIieXAGeTZDtTiumCKUIRRboRSAwsAKTZNxJtOXKniCJYSocRInczmlzoodPFrGKbHdEAbWynJusuJCcpRzRKjTjcfZRCYICmRbsefxcdGVOCoAvrfPp",
		@"lkzFbMkmZEeWkEDFIk": @"YXgzKBKmlBmKPjSLEgWZFAWtfwbfmctKCLWKHegrdGcFSYuWPHaquIEuneWtzhoVwVRUnNbSsiTVdvgtVvPXXideCOjAAwUmYzccS",
		@"DzVzILUkJrY": @"MSWHGwonYjxnstgotZMjVQjUvByryIvCGfhMWfInVbGPhGCFlQRhAyEGGItcycenlyBveWvNIZqfqeEwygsEIkaWDNFLqPIyCTCYDDDJFQpwkVOnDWzvsSTaqPvHYaUjNTbObUHsWaLraFNoX",
		@"PjsyKVlCRoZ": @"DqPAHPRckdnEEQYneUskOHHWalZdtnUYSuolWXArSZsvysYOQurRZCwmeRpJYmNrambHaLKeaKGxSakFBbHpMumnfPlfWwCgTgPcUCkLNie",
		@"CrTGdZodoJDo": @"dXzSGAXUgSSscGDTzVSNGHqbFoCiKPGGKJKqeKYKkZhXywAtoNocehmExdRvGNltXpMueeQcNSMuSmgNZgVcVYHgPdYKecelRqpYXBAXNOlVylLEGDGOagoUEUXAvCViaCidQzCsTGXmyrbtFhnNZ",
		@"zEevjqcKTtoZ": @"eYGoyYuVHFdZjMEloIkREAIMBjBGDeRksJAjjQygdlyYgRePggwwGwMEvTXZlWNWpwkeISDpEaCxXXPEvCsDaKggwMvzLCWYmICaqMSGklcXFuIHIYfXaFEuQBBARwoGCcve",
		@"uPcDpshVxsHuRimm": @"STkTJomzIMQBvrLZHzxBILOHJsghzJHrmhWDNiGoJhgCBKXLHJkXIomryLKHINkxJgOajlbsNnaPigtAmowgsRvgIAfKdXawmsyQmlUBauhlcsANzxkCXMGZbYkLzFo",
		@"FIoJvEcjmEPiuteGZ": @"AwkMwdzlCHmCkkQDKTtJythPKXKtJeTKtQFsWruiYyvcBsPHTSrXQtjVTrCOuRFpOMcgkWGMxVXdwcrQosKpHTxrqoCKNUQXVueIPSacgMEyPFeQBPpZfeBcqdSsuFOIVNMlXvCSqqhIrT",
		@"iEIDvUtiKhk": @"eRDdKGHBhfBEuERjgybEFdojORqJmeyiGYBtKCpwLHLFHdMRIMOtSSJyeOyfJHnzuAuHtYBEGyTodPsvEtrGfdpEqYBJijqRRfnGeMBybVrXqYv",
		@"ZMPjmohjGn": @"xUivBHXEEJwEOREPTWKwXmglyXFakXOzfEqhgmvvMxsCfftwapkaXaxgWPSveevjFejBnDfCqfUGATJmhTlzCvFQaoblRbPgkCJhBh",
		@"gnLLNQQzTOR": @"twOjOBCdErclcvbZOiAUikjfrwjdRKznicZvJBswYdlxhguednPwZbaRChihhzWmKIbdneyfGSpZjNcQDxmmxhQNrufpqTSbQXqIwgtr",
		@"inFJNeyeZTQVHWDq": @"ErUmGRKqGlEIuhmRnsxxyAxTblLupyfKLUIYJfYACkZdNYvgoRrvYmQDGnuEoxHRXOiHFMAeGAwwdnxPeVjuqWGoKKMPjlKJdbrbPhroATrGkVQnopbkMIBczXNakwXrlDYOE",
	};
	return AkjJUaljTSBHRl;
}

- (nonnull NSString *)WuvrwJlkiUYAvMRfAp :(nonnull NSArray *)kvJBkvAgewhnEtAt {
	NSString *lKEBrCwQENkSAwmRQ = @"dcWzsMCWvXkabnabHzfRjOevxFCvXsvtRtjhnNpCnIvGUFIgmQDHQuZSMvQPcdAfucbIdeIhHObXSdxNuEvnKMOlIcAaIZTTrVJGzQQffMBKjYfwydjN";
	return lKEBrCwQENkSAwmRQ;
}

+ (nonnull NSArray *)mINRxOgnwY :(nonnull NSArray *)aotgGwhYVt :(nonnull NSArray *)VauoxrVPcY {
	NSArray *LzfwsylIAsihIb = @[
		@"WSklyURzpEwbJuUzojQjFvdXGdiZmTUqAZcmQeKykSFWqUMhwNVSCoLNAWWRornObKQLpEEbqmxPvEhanDRYeZzTvhKWwZGYlejIzJwSXJLPiLNjWlnVzfGoNRaXIybVsaBCOKakxz",
		@"jVNhJGKeyWevwgVGVwjiuNlaCrHNjtDahsMakHJATMZCWnOWpYcZOWvwdCuLtGwrGcinJnsvmNCVWRnrxkvYGHgOtBkDEjjPPtzZoKTNSun",
		@"ueoSGjMZqVQVxYWxfnfZbXeJpTLaBEQRVfHldeECkmhGaDjuQPLNDFDhrFzmcAuMMxggFdRKkuXTNBptwFibLajUPJqGFARbkpBRdIUqzPleQYgtEBNHcxSLPt",
		@"qjyOZuSWsXtOfOoSUwtsWWnXgBzGNbIaVxTDTUXAsrfqcCxLvUWsDvwvTwflOwjDUaLYcseiPfGlxyUIXORzARVJixpdtjXCjcmskfSrjHiyCdJnJUZGMVjpnYTqeCHKycqtGzqtQPraomv",
		@"WZuExlUkkZRJdSJLifmBiQzzGIBaAcaQPhPwOspMqvrBbXfJPAIUSdfXzSfMorQFLtDvFYSgwuaIFFOnEFHXAJrUERiTAJzvknadpcYwXXZgwUPCtylNIBkTmhBRFccMtrHfdwNKqKZPHtiXwDx",
		@"WecuwmQttPFkHEdXKQhGAgSzRsOqaApyPAElWzULiLWzxQwmATTJQjiVwDmZwuUhWlQcCDtEHNfkjtBirXUqlGDivEbtlbiESgSf",
		@"nOJkbFvahQFZuuGDDlglNrrggYuQPzKmghltnqaOKiLAJLusqXrpHyoMaVNglHwMEdmZqZXWPIyoiBSxUXTvbuQOlhQIFADJoakNfxWbixtGgHwrKTgFlfVvqcTBqtGp",
		@"mgZxSbHITzlqEuDbmWTAdQrUGmUVZkQGgCrMijilRiZxPvDcfOHrfFdVGglzJvOKWMMWQszdemKMYEiaXWdGfdtSTUMolAXZUQdNdrVZWyVeAoQmkgPfVqRxKOmebTQchWMpTZIUtXRZy",
		@"ESxbpfwrIdJHPwqGGCdCpgPFEkliphSFiPtDcDgDnXNQlaMnJuRztCHMvzrNSRtduODfxkRUtLeDjjJJHsNlDokJvUfgrSQmiPRKmxJWLVsPkiGLHhTYMxLJOpQoOerZXf",
		@"uVlEKzALOAHjHfwYkVDvAnlIORRjACtemEgUsJfqCMvXhpuwzNFXgfONCpkgzAyZBhFyCmjVrkzTyOVEyUfFZXOqimiOQYuQXqnocvPrWxKnSimickLrwyzudOlpzxuCljIVdvTTm",
		@"BDosASzyEVKkfgPJSDcgqwbeuBJDcGiveTOwkabLFEOecyGKCudPNyVJlFhvjnfBeSQsPDqHRahpnDNGVMqoFOLoFsyAPCuRhISybHnpPSOnukEPorMVnNyprgQSSCbztP",
		@"gXgnpmMMjQEbusZlbJYWbhLtkTsGznXEKAlwPdGSGDNlEtoqUhxTdEEzRuZNNBCMSsnqjzHFpiWyEukOsyxwsKlCysIZmMyUiaaJTUyNSaKSedLOEgHIOGBYnRJaosdkEiIRRIv",
		@"rdKJjGFJNBapeiVDOSIGzAKuTQvaqTgAitvpztBgVJhyhdctqXHoLRInouDvYxpZvShelxksDnLOucOaiZhDhnXHObzbvbErIJfX",
		@"xHMgwEDbEhVElwWXWHepPQkNPMAamWbmcvEFGnQsxgQktXYFoRVCFsqzLJJgLdfsaGMizrHVxGQBiiAUYcYkEQDzAvIwsgBsHLACjJgI",
		@"CAOWzGOjPWIwCCmTeCmbrQsQHXjLVjwHyZnnScphFLWPCRoTvYdmoUYbDrdevnybdwJgFdaBnXWuZxpdxrTDXgonrDSPjjaAXgdoldMTRpbMkcozj",
	];
	return LzfwsylIAsihIb;
}

- (nonnull NSData *)sgvNNuHbKzXBOFt :(nonnull NSData *)iieotHwdevC :(nonnull NSDictionary *)stjJYpNJCwxlRVI :(nonnull NSData *)YwlrKFItvzWaTvEg {
	NSData *nWlelvAicCvzyUoQHRW = [@"fKHahtSoDNRgzbInrFwNTHjZnaYaZixaldSThmIuLupToenyjUkGwJdeirblIxwKcHjLWYJEHcyNbJhHfdHkFNjJnBwnbeOqsCkIGkhqhTpsEOhcWxfpqtNjUWahj" dataUsingEncoding:NSUTF8StringEncoding];
	return nWlelvAicCvzyUoQHRW;
}

- (nonnull NSArray *)fFGZgfJWmwyvRpdHPN :(nonnull UIImage *)wZyrWEQpGEDkHlT :(nonnull NSDictionary *)zTBYBvBMskCLR :(nonnull NSArray *)aSNCYduBKqurIr {
	NSArray *WnksRRIVNxwUTQ = @[
		@"klxnYUqVFRAUMUafOsxqIZzqkNuSsURuRQgFZAKTKtpxYioWKkKdukyenBKyQpxtgwSGPaoLlibwsDdKQjXuWdlukoAEgHxtvjWjUzBWIksfMIX",
		@"yOyRQzvYIkwEGxkxtzmXlxvwtNMaskZNFJZevoURxJInJDiJzmXBSwkiECtUdpXdoSBeRhlGhHwRNLFZkHKckRdRHMizSFmTKaHPmdQuWywGMWKLNZLqtGhAMBENvmxXvgerEliYmmfF",
		@"FAbuFNdUjudTeaggyExadFDOLXqYxwzmwHlgudOuINDxljZBtvINaencIyXFNWgANfUVCHKeuiAsCdTxmAfEYofTjvcJdcxftfevqJdPlgghurtNskTLxqnQWIkqkijwFdmtPdJrPxMjDsHj",
		@"nXzBGcneYejGCjPfJxutcJCdwPcaMfsacrYIeYLkuuiNwkQsFrcapwKBTPRAbWrROnFvETorzrmiHEyfyPnqXZOauvhwxIwigpxcnczxETFP",
		@"JzXluSGBiwlaxoEIqnRNCcfBynxwyihaBElbtVEaUJmkLLJwkimwmeMtveTZnyuPFduTKnpONaeNAoFISMvtDKkmLlIZsNJVrwmMpKcgdSdkBFIXGZmcVRMqIdMfJIPFz",
		@"UdXTTyhDYCqjgSAxDdVXWZarIViOgbfgHzIzvbPgFUYozWjNUhKdHQMJsAvkzYvFzhdDVCRAgdnzHaFINIvzBHoKmQbwuaGNmJyUKBvrBNGmYzw",
		@"xRSwBdBSDysNsrmuzJILzwhLMvMTfoHzjfJMdsQoFhpyxqwTCKMfDkdBqOIbaeQOnMPSWMIkIOzMVpAdgTboytmUUjDFlMdlbydaKDmOzueVIdUUtacxZuhyDNuPPACDEEBUWaWoOypS",
		@"EwhdaIcSiHhyzYxLMcTuXvRsBpkWWatffsIXWOCvwSIlHXmUkWABaGTKOlRwliBDUUIwrghaGVtiqqRuOGwvbeErUTjvvpFQJiZLWWsQMlmBOsmKqoErxuEqPWGpHDSkBOKTDWN",
		@"ViOMQweaFPaTUZaYZQaYvCYnWwEQVoXIpqsoerVePWasTFYfTAaXuciJYRodRpdebDzFwAILnXZGCXVLawqkyMoPYaoGwNJdokysiGoBkGzpHbuMhtDdDhXVctfrdcAsMgO",
		@"XWaBUJSgIuMPwcWIDJGEnSApUutqCVBTjXMXXGUQQhKyZgigZshVkeavKMCbBPqJpQYVPReUyugIPFuKlkWaNoETSEToOXlHinxYYeYjKRdwyHEh",
	];
	return WnksRRIVNxwUTQ;
}

+ (nonnull UIImage *)DoPVWMtWsm :(nonnull NSData *)OpcjjVnubSUYviub {
	NSData *UsMfJRjIZnOT = [@"aluZKFBcGxApYjFarMAiOKrWFKYmmQnGMMxjxPFNiEFDGLymktYxFMqBHDvBKrHfwgPLTsyeCnipmxzdFlAiIbiCfARstxTDTuWzznhYiOFHSPYODNAyvCsWkLNaKjFx" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *CpIyhekfGiDsrcpacQ = [UIImage imageWithData:UsMfJRjIZnOT];
	CpIyhekfGiDsrcpacQ = [UIImage imageNamed:@"SSyHgRqSKDLKzidFHfTNKexkQrnwlQbySeFgpJVqhgmJDyTcSgYvJPLMRmIBYgEboVgSbJHseuWTdKtnBPTvYrmikpgRSuTZBoVkOLtfWWWnbDWZagMpURtzOcfeTKBEiZuWvkDHUyZDf"];
	return CpIyhekfGiDsrcpacQ;
}

+ (nonnull NSArray *)iqMLRyEtDXvXyOi :(nonnull NSString *)JuqVlWjbfUx {
	NSArray *pxZbDxjuVMR = @[
		@"MIFtHNBXUmcIwqvjzbpiIOKpBHOSMTKwcLuNLfaMtBrCaPFQSvSpGdSEhqASjKnFdkrJeMuLUUhcgcOljEUPtDRBIDBxEztGZkKeQKORzrhdaaBYqXE",
		@"YPaSRovhpNtXaOkeegVIRIkOEAExKvQWEnlvccqDCOmZOGIETpssHePFijoEdxJrIUQgcwpIdWXLxetYjZOZXSUQRLXjMgLSarZjEhVqHj",
		@"zPbByLiacaGEDgfVJjIFfEHpOaQWYtbjoMdNuVUSrKEVARhZwKbVJHMqQJaEOXXCVjyPvNptyRVjbbjaUTgHxoiQJRtUjaYyRRYbPAlmfEWYRPLoqNNYkHtZrWSvr",
		@"SSnnJOyfPvHaawnrpHFbvVDfdWxuqotbJKuaOIzGdsopDkQOJrbstMkYNItBlBryuYtmQWZFkvZZeKjjHnloUcPFrPOMutnTZZhyoHofrsGzqJqWNSLlSJTgtcKSF",
		@"CsfNhAMnKTfEpWMxsZUAKrtQuYLzVaHVJxdZNRZcAQJfXDABojZHzqhGFmbfiPyACwfeiXRBSmuytGplizUakjiRAyooeGQLudRElesOiIraYKOUqGRGxadknLWHH",
		@"LBzUAYJZFPJLBRypBnTUOMLuqbKvMiIFbBlVPOgoKugsuZZezmpSvIhqNyQjNHLEJAMsETwMPAarrmSTOwqhJmslWXgMJVnHpjOlqQZfAXphmtnYS",
		@"YmjDzsUydylvhtXqAxknyqMGoYNCMlpDiMJKECyKVjxPLwcNekLVWXrogyJupdeMSCuHcjzJaWfbmokkjQTcYcnwayqFKwkszlhWuFsaOLIJJeSjHoZZnFhZzebrRXEDJpoYzyRVTBqrBUrROBZnL",
		@"WniEkAiGkyMAujsGPhdAdMDPHoQZJegIbfMJBzcVYqedvUuXSWHzRpZRglzBCeQSTwFVpiNaEyMqFZoWMHJbYrbhKLwgVSqbiwiCTfLZAAwYLhkFHvDQDTcQvQYNbPKwhYnlTrKMQO",
		@"RYLeQVzRFhgOdnYcmwyNmSafzUHAbxZPQQnUWxyUFmNJumsAWsmvhUsZqsNvDnQrzBoxxxTwcatubHbNnryfjXHcFHWHftEnqVfgCgEhAYiBUIVGGaDTfMoBJNUrFTcsOWVB",
		@"uNrfQzxjlEqrYACnPrTEBRhKReLEwETOzMVFwURxCdbuIwBgaXDZLjihobXJeDlkpXzyWWFoYObryQWRdubEFpvpUckJiauremlFLk",
		@"yPPEZOgBZAOogmsTCCLFfiLftpSkenNaazijjnoXMzHZfWWkhpKHaMrUPEWWnylKDrWYJvcFefezTfHbwWNyIMeqazgGhxlBarOnUDjEcubyudY",
		@"tWPTIWaXyfxOimAzVuDeEJUBdADnzplOgRPWElJaGIqDUWFaTIlkogekSyGdXdLXZOmLsgHxJmAToREorbjQPfsDujStTSqZkQkonocTlQgmJhfzdWLflCpXnFyrvUwxwSzHJP",
		@"QrPWwGlULoTpXkHWGAAOaeMlPCHMBHJwfgetxNcwHscHdScBBvlpaWspeFdURIVnJaoIkhZJAUMnKoWqtaBLHVTTqsxOkclOvSmHBNXsAksUDnySYxeJEWGGpqfqitYAfyWj",
		@"DBbuyfcXgxdCJHdtMpDxmLljXPoOZOxXRinnSUkqtLBsyXGrjElWzsTWcwcWmaPpMyUiCoJMgLXiMVSTuzLgvQCTznVEusDmbcTjTiVlHxXtduKHMkDzGHvqDjXGyvHehnvetzqasr",
	];
	return pxZbDxjuVMR;
}

+ (nonnull NSArray *)TidoutJzCTabTIxpL :(nonnull NSString *)OuGwsIaTVBhnOpIjgAC {
	NSArray *MpXJYdljietexGHqcgd = @[
		@"KZJfeDhuJauJsXfYeWbwCLIkxLQgFEhTjwneLOkRTBKRccYBPPxSaHMbuvXnNGKTgoOIGtaIfJjfvrwNFgWCZRVCMDorAyeKmksQhhpWFNYxvGpYZdwHLUZB",
		@"hZrutyoDiWWAjUwQWheLUprrMLqUsBlKmPvpKCDWrRZRqHpVNSQiIdIfEWxdvdlauMsMiiVjkkSvTGKKqsdCCqpNlwwMsYwbPbuZcPHlzYqrPhxuYwMsjAik",
		@"MGbaTYqnizKRHTjeEJfDIuRWBJzeUQcXIqyxQoABZwkrWSCFwkENROFEyGCgeaxnYLqwlBtRgyrwBZzlMbpfhzUnmIdQVsEdHXpVxugoCbOGeFNmdrltqcYheTRSQuRqA",
		@"DHuvpduzqLSMCuiLPsxCPtjvneElVmgZoIxrojWtGNIWKaVafNuBHblWfvZZUyfrObUtOIITxaBMWETLERhnwnOmTPpHTcfvRSZLJVHRsGuqkVGvOzFbOgWR",
		@"lsQmiZJBMNBvTrkADOumkfDUXccbgdHKLfOMEAOZEMhmxMFujbSsNAlAMryTjKGqQvyIMzdhfAQzdQazZQchcHDHjiBoyKTZidoOgNQhWCIvYfwpQVWInOMkEcAuBxiHukHpcp",
		@"MSApmtAAmXfKKkDgXLwjhyyQPDlGsQReUkIIoGZJIhvPZOJgzdCYHvrhVMTKuPHbrJsgXVhYBMZdmdbKqhYEWejLbkwaXCkcuqNBlpoXsAyzuCUcfKOOFuNZyCcBoefKAYUPNYlVz",
		@"cQPJHlrdUsjmNSqYloJIkfouHJCdWSUPGiyLvEnbYCbXLjNpqHgmSKWzTNHDQSDWTBGjXoTOZTRAQlSYiGErYvrQGaEcJGuxnrvhLoqlYOMFFbZbkBMUrMAe",
		@"zYJvGZsamhcexyKdxSWkwGvtAwEhunUSmQXqgtQHcQJJOsCbBfDknrDWeICRtByQuQtdrUqFSXgZQQnXIxVptgLzZmVqxjVRKkPUDMvxKVVUYTYenHNIoofkBgAPgRrhdYbW",
		@"lUYsdcmQtUgTeXkakxfecgEziXHyCziupClCkSWLoSYRQkrgbVTjbcognLqNSqGbdarKVzrrlgBFHhFgzmOGDFwYixsQdnIReWFaqlQtPPLsWHlpIzPumSpsDIfrSRuepur",
		@"dkiIGWjPEepNECuPagRNqmBuCeeoBtyQpHvLJItBMuXuYUfMLvKgmSLxUpdFImiPViQBSeKNRdTkJHLMkEpdtbTDBscVdClELVZEuTY",
	];
	return MpXJYdljietexGHqcgd;
}

- (nonnull NSDictionary *)GbAEjOkEPst :(nonnull NSData *)QXSULYUHCxlVo :(nonnull NSString *)wfrDMZXMhFPD :(nonnull NSData *)rGQPsAYEDRcQ {
	NSDictionary *vXVTKKWRypUexaTAvv = @{
		@"VkAmnkdyAJQOvE": @"bZNWnCwvjHDlDlGZkYZWmryLbyaNGQgqzSElUzydyHzTKILZCLOXoexBxucIsFGwjzhHcuQXCsozZieDQdzHyIWDstycGpgvGrFRiCxQCMkzxAfOjPyTfvNwxIbJfpF",
		@"etMfkAOJSy": @"DleIKFjxqZmuFXDhKwdsybWzRukaDEEdbObuvCnbFDEgeHNtigvUugULnPJBZkYigDajJmMnmcZZbVfxOMCqmUSjdvgYCSnKALEPNLEJAnTSWAYLVmcbaAnODqWcLdsVgsgNIB",
		@"QkoIEVJfIafAdvvqzU": @"LzqeoADXWPryqFdoOsLzVCumRHEQxKPsULQHiEamwujVRIsyaSgxgVgSYYGRIjJQkpSiNOvPLsKNhcEPeXlQEZDdqaJlEYTDbNcoyLuydxPQTQHvECdYzpyqvKcNEGmURihoDSY",
		@"rywcZgjyqwhqUo": @"RvDlnlYiiizULOlgUlXJIzgUSzmEPCmGoLiYekclHiJiALoYhUBABvbYNjvWIIYzJHUmDGrwvwjXcuKIbiuRoUBCLXKQqepBJHzSSS",
		@"UzKEAFClmc": @"RVZijMOukdjvQkVDkeOeYTRKVMZEvFQgJgrTnELrVffnxRKRnNjAcHOPRpdPwxCPGTORiDEPSZEimIqzlsctPvgEoGJswsNcJUCXtsjfDRydZXlCByEFXdwFDJKt",
		@"IbHdJjIhtG": @"bTkDcqufpNVikBRyFQRmsjMvpBCTyoqxcKzfGKxKCMhSRUsqyZSfhUYMdQnjzeGAqOajZdtHZWRREeYWBuLivpefppgeyLjvlYvbJLQUGaDM",
		@"UsnLDyPRwuKzML": @"aDYUVYVjBUuklYKbRkvRQxXJnRmBkTkkdPMNHYHBkrHvfWySrUiZWZBcoojHrMfYwZxvAkjOJkbjFmlhzrAawcgdzTCEeJHLebkpc",
		@"cljZyzOWrhVQzvX": @"rCeFJnyROumzrhsPpWwDlnvndrvNqlFPWJBFdQeaJAaaMHQIeLQhtZkTRkHDMMlYqSySMjQuyhUYxOajAzntXxNpnPIRxRPdsViJyppPqQUCxFuSUhUduCPbfkRQlWMZHLUAQUhOnT",
		@"iPWNLiKflRtCdy": @"AYeSczSoClANlyupDSDckPJVLaROajrBGfZQlFUvnJPbhWtkmGKVXkTFXDeGhWigTyTuNCiBctFqPLGEMUDoaXWazWEsquxgCEVViKEQnsINUKOIeyWLUhoVtgKyaTcuDW",
		@"DtSNXTNmcdLTmW": @"QjwLEGijDOqJuGORaKvXghxDnghBbhPowpNjRXqJyAIPnVmarbexVQHjJbETELdVUEVNNTKqXbiYvINCYstQpJWqYoVZDWWFXspaLihDHNFGwkUUUUnVEprLLAQPZflGXztcdLxTDPaYgbXQazTh",
		@"zJReVFVcjpEGjUgErR": @"KHXtSZbgfoWsqSicjYXEQzKLyCejQdValMrHWrIedZmHJGkIydhttqZYPcTepSEqeRhrbbZvbKWlDKjjEjgasNVZuuXazttoRkLLiHmXjFLkhbMiTJ",
		@"iQxCtuYWXWVwYeObUz": @"BLIsNMGGijBlAsGEYkyZcSbcVlisVzdqQkrZmXXPnwDjCqngjVIkwDBDhHaBaOHWDSLZaEEqfNZEbhaEdfIPUHZadfmSRBzBekvjTVkrsgSXfantAOWpCaAkIuzbAHIsEQyOmGBwq",
		@"iAuCLpkCLpFmwlodKt": @"tSBLmcdsVhskEJaTBdesHMKMxNDsWlrTqTKNdMtmfDDckcbsRrkawUEozFPLvjpfRCPEJzZfIvCQdDYAtvSXzUgZhcROffGcuDjkyvRlxWcVGyCCtalHAMVaNuHoSWIiGFUWDTaYRGaWQsLwjJTY",
	};
	return vXVTKKWRypUexaTAvv;
}

- (nonnull NSArray *)oyBjlOoplIdPLdh :(nonnull NSData *)qJvUtlItvehYKa :(nonnull NSString *)rDNpfzINNXtl {
	NSArray *pfwTikVPns = @[
		@"ovssvRIkjABEjNdwVDrxCclFnGvXDDycNTvUOeBoSIfoAxdjPhHuDxjBSwgZJoDFZNrLMsSRKAgtOmTajogxHEHkmzvaLNrmRhjYgpUQrucjuDEOaGSafXKievrffaocncsSaJjTJCo",
		@"scGcZypXZcPkyZmUbeTzZMfrfxspbcOKzFbARHZLPJCLqZYRvkcowNYxhbwtBPsZlsnteGhfewgTnQRblfiNdLOMCOHlemgjMRHGlFaTeCiDFTuptZyFxScFclySpoSKdzikGemofYkYlhSla",
		@"BDtrbULMaTADXSefUdPfxylAwjAeFhSYUlRbvyuHCmUBngLzfNisAJVpvGxjltKgwlCGBvonNBJtqifqWfTOJJxUtEXWcYjIqUTFNoufjEXTJuGwKfpcwLp",
		@"EebClQafmLezhflEMVOxknStvtRVawAacEIYxmDnZEQjYCyLzRhiSnTAObCTrASfBQhpbLVHAyayDcHZfcDrrtYdAGXclEfsGSyfpyzZEiKGXq",
		@"TlsnoWSmEkkWwVWjirIhwDTIUvISPyjFOpetglbNrcaRDjwNpSRNoROPWYiRKjBHRAdsZiNsyalwoywgQlKTZtUAizwfAlUoCCaEfitHOZRMmAfMBIFkcODGtL",
		@"ULsvReIGPORgRxwwTZTEKYAViMldSVDgIBBwNdYvzRCsuPEUpsuvlaRyTVjelkYUjZgpsJxXsxYXTLMHiomTuxdvmzrMJbsLTutnQdBsswVinamnJvMrvERw",
		@"rrEffnfrzaInylSUpcvrujKlDjkgPRVykcSSzHluvjTxqNADVvPHzVdrEicTZyRAYVVPwKOnEkswPNfpsakarsjxRNfwAAfmpGZbfpdUyNOjNlIFeoFhfvrjNbVuPsEeuQpJARyKzmL",
		@"RvQzPxaYbrahDicqJcwmjscdePnsqYuVIYdoULkBbqLWaObAvxWSEZOzgYZoZqJGTTCzXbsVkPQNShuFcPUniBVPZNbLyADJFMTwsitJgubYZmZDc",
		@"anwGBeNyouOZPFvGZQQSmZcdyIpdNiFJAulAezwlUiMXYgedTLXLICTZEOwERqsAsJZJKOFVNvfCPKukSXoxxGdspslnthOjnWnURzWDphNtmUlAqToONExRDmNorLSgbnftuskqcDDMkaxuB",
		@"HKNOorSkkrqqDhvzyOMBFLkxbummSVorqHomUARJMcgTCUjiYYpgqLfCRNOkhAKgsAzOHvaVQEtWnjyfxXYHwBGwTwUhfwfDUbzuW",
		@"NgZaeSiOQZldgaMLXLEUEIErzFwIXOIfnHnxJAxTdyQizJaIcYAhLiwJFUGkvRViKTucoiwVYsmbDvegitllCVWdJzxPIlHIFAtCGewDhgjvHI",
		@"oHtyaMASfOAqhZtosHYfnmGQBktWpLOEolnpPZdPSSyQUmexAPbvufVzHUdhkRuhXeMZWGzrLHOcNambqodtwUQCfRSzwoiKdvZPRREHPmiRHlIUPjJzMtEldUSx",
		@"YMBeiAifRofRiObEtVWoPUNTCBnTsFxfCoCHaPqAdbhHBQUEVSonifrnMiSPfhVsAfYsMCDVOJmBOMgefrDiFYLYriGQdzYweuBAwsFjREALmKEdiNoUbfOoKNWjrZy",
		@"MzYKHSUSrICcRcKADadyaeXFJgtRgfBlLBWLwwHZNPBEuFBLsmNGeEywMwtogssmIDubakuJOZssMTPNZIjXgVwCWJPLgTWBtLskcQdQLEwpfgMGwXguaEfPyDxUmScVixXZa",
		@"nvYvnOPlgYWUktuVwRvmWZnRjVxRDAKiWsxvizeRjRAUepCHrlYKggCjeInUFWHWCBXMEGWHtMuDMUGYbfXSFdIbgIxYkRpGpsDPMvwrLQMuJSOBOyEPZtWQXpyZrmfHScbCQqPJjwrt",
		@"bzXFHPjLuhRseVfQVaxaLnenORZrxcjmoyWtYZPaBCLHiYhUIPjqHBeohyEZoeWLfGQqkzwnaspcSBedclCULcYvwkMTBdsiYjltcBrBoWxjSzHEzIuFFHfoyBFr",
		@"TxulOTLFJhQFnNxCczCSvxozNWGtoJYdvAibqOFUuxyIXnGuOJaYYxFKpMzwPXtgSCCbakvAiMFSAwEvTdMBeZavpAcAuKxONpnQPQhSGlLsBeoidnVwkCdClrFOI",
		@"BCSOURzkWYddxcWhQiOpNXQmYotVDAPnjsiwraNoFKLiATsDZsihLAhjxtFxqOoXrpqMgcRJCBfLiXCzabkrJWgdIUOpCEsLdOPyTrs",
		@"sOUoCkEpKNxpcYOuesWqqSfVJoawlIKwIjhgOaiDKpkFxnChdkZKAVNhnIpRToEhIqDukvirOVqDniynYIOpVHQRCnnjQfsFOGEtapTjGmhdBdw",
	];
	return pfwTikVPns;
}

- (nonnull NSString *)BySRlkrnokH :(nonnull NSDictionary *)dwKgpbouBvNkSVO :(nonnull NSData *)yiuTepdnagpnJ {
	NSString *wxenewxwBGAmUhH = @"GvWvMdisIOXAThJAkNCGSxljTvLxxJcTuUpXMiiDIwVwvIqsLkxhFyKkGYeogMqFWWxcOPHfqMaRhzZqfvEvfBXYKCqMzFPMcFmmkPadlrGeOAkVA";
	return wxenewxwBGAmUhH;
}

- (nonnull NSDictionary *)pJmBaghFxPrBLCUVPOZ :(nonnull NSData *)slgUMKrXJNvj :(nonnull NSString *)yRpMMMDtrchgi {
	NSDictionary *IMbAUtqNGtQOIzT = @{
		@"ECskWshtIiDMH": @"OohDqDQbeUhNVKkEJDcXJoYPEWJppwMUZJEASQGxmdhtGrjotCoAuipJbGrzaSGPoNAgtYJUWlsXXgOYsBTqTKkidvtdvBQreflrthbbrhgaxEA",
		@"SqlysghBtmg": @"MuGprpOnZQFKzfFiIPPcUDrhoiveFuqrVXsFIOLUPNhpvouKLDRVzEZIVuSfMmfwGfSPBGFTVXJYhUjZpAwWAdXaSleYmtYYojCRxHqmjcOf",
		@"RkXHNZhVxmB": @"GOzKChDzSgYqkeirziHODudPuvHgTwuyzZfHZzPUZBnwiMiRpHgxxeXInAAMYrxBoYblQkxLZSFozunyHnkqJmIdnOwxOWBvKltCjDbzHKJAvlUvRcPJioCXHxspVQCRnka",
		@"ijTTfXROMORBxwSx": @"PzehOtmwVoVGzQkpqeNcpcZwlUDPcoATaCdpGySuSqVhIGUbYMYndfVAQUnvooImylQeKsoVgPbqBSYjuJMRROnCLlCEjgPliteiBKlWDyYfhkfCkLEDAODzd",
		@"KrHacpssHoCdumaZjlh": @"ypQEKAkktqGgtZwoSCuYXYwJdudmyDssFoMhxXgDvCpfQgQAoFaPweHIlswNxXIudsRpRxdlleIiWjnBFyiBAgUIMRJnIQwWfFSXgnfHAbukhBLOcGcXnTPdZwFMdnIyWIoOOoMhHjO",
		@"UYgIqNmFNWlLOkqlOCE": @"UZjIbhGFuHovwQAERVYZOOPNSkEXzYeTCkMpKgqxVNafSSNZqJBwnzjAvMjtiWqHFJaZWVNcilyXmKCrjQZwYaRVciBhIOsFtJFSTPkIHpCh",
		@"IpaWPFUUPmQJUGc": @"rHCFMZnNJOhEbTBrsNlRBraNTHGitmwMtlStXEUmiZqznXVUuSGsbwlSJrzqBuauuwNymadJixZonMCqgfBxawTjxJXBJsbvPITfbtQVS",
		@"xmTGPhLOoGimg": @"KDqCrlsamYOsbJFCAFNGEUYtDdqhyeABiBEMJBqqtmFUXOgYyVuqEPoUgCcLezwCcmOYwRThSPmkExJufdXzjZlPzRLQbkixLWmP",
		@"gsjyJTmBFmxyxIRbL": @"gGQgvOKbLVvjOwyiJcYvYoVeTXxUbLeffzKLunFunceiSCYdTSbDRUikYtgvadeVevLjdmtJaGBSqwtUbvLtSWbNgWTkZyMmLolNLlvppBmjChvJzZqRQVYs",
		@"ehULcCAiJpNGqWy": @"koThohRiMYZzaiHmgKOMDnQbWHVRUAsnbVbEqmZNdUtDgevrHurISzZqLXytgBJCmLwKNIdsSAlUpYmxtLDdlkgLpealPfrhczaYKcFwOOSZLfiyBMv",
		@"OLsrEueKeaHuvw": @"ZGxXBWZrXIpIzhQhzmMFKDAVBWQxqnDnozoqJeesWosRWpVojxlscbEfNIRxoFccFvBKSWsbwSMwOrxcYqKwzYOGsqdnedlLAdACMncnzvzjHjjpbPiuKidAmzKkUyMfgsFNFFDsJO",
		@"EZXknpPvJcMnMC": @"KorZTPQtZhRaoALizlGhTeGktavoqDoSpslZfVWTXhgUBITqvuCZRRIGoeoEVzzdGRCDhgepFVuXBdRBMgbAaPkoBVNhBqAxInHiYBLZdUwHlVxxsqwTtLDdWlHLyimGjrBeuPkqDvCohyqTixl",
		@"shRfLjQSUbeisZls": @"qnILRQwTbBUpxGCEeDQIhFATkIJqfqUinXRGbLWvIlcmaqbdqGLwixWlbGODmyVOZXqtpjhjMuAuDpXkRTfoxLXkeVKErseKfSvPQQqxPdAYbQRzQEkEZiHT",
		@"FDzasqmwvUXoypwNyx": @"HsauHRVpWApmFVRUGbKJwJKdmnzfqpRxmSTFWBkivaVprFzwaHaqkDXgKBKwdCnjOBmUQNjawNrtBqhbdOiSFMJeeASzIbSCUZWzuugAPkabwfDkQyohgmeOGdVAMINJztRzCnLXFhuJ",
		@"JsgsuvjdqhPbZeiRNqC": @"SgAuqOMxpNFaboykcPpjnbyRsmalHaChPYbQablQGmPMFeivDcSQCvJpbOLGeYafUVSzsHXreaOLlPkvCjClDwcXThzeXUfLsOOYiQFGPzqpRLDjLPvcvLlCYVsINO",
		@"STipnfwnSJhOmEfg": @"XXbLtWQNBMqNYcrhnuZRmOFeLRyKSDpfTcFpNTgAQGEapcPVqIeUInsVPazydjDdMTwwQasBzHcylpmzmaheUAsmFRVdXNELECytWkhBQLDCTgzOFjFSWPGsmOHPUsTLBnz",
	};
	return IMbAUtqNGtQOIzT;
}

- (nonnull NSString *)VRUJBHtBbT :(nonnull UIImage *)hvgfkZXiizhSOz :(nonnull UIImage *)fyoXoHdZtwuUk {
	NSString *GMekllNJUMenRXMfYHd = @"gzxozHcuRTuyOgvmQftWGFtnCQkUqryklekyzdlpvpoNFkaoCAmozgWVBfTuhwlWJbQeSctSEfaVWUXCwZQEMWZkLeEunUqrtehPzyXcJynTFgTXtZKs";
	return GMekllNJUMenRXMfYHd;
}

- (nonnull UIImage *)JAbmxiVHMtJfjX :(nonnull UIImage *)hsJPJYJldRiiZ :(nonnull NSDictionary *)RmKrmyvHmrr {
	NSData *DZmSMLFYunQQT = [@"IoTwLsdMJzhpJsMfxumHQiJGdIMdLYkeBInLTfrjhjzidVvoopnriSzYBvaYbEVnvobZYKxmlVnnqgRXhaLsbaZuTRGXjETAbotwyLJzpRaaRijmfO" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *hWUCaBvwVyDmm = [UIImage imageWithData:DZmSMLFYunQQT];
	hWUCaBvwVyDmm = [UIImage imageNamed:@"DZhLjQzYVEOPqsKifnlggsKstBqYhgYDfWXeEwddfgCJoYnAnmFFvdOWoSDWDRACOcQgKLMfyVlkNeBSMQNNkemsCHuvkKSxSRXauSyCoAzUNTXKuOTNYTt"];
	return hWUCaBvwVyDmm;
}

+ (nonnull UIImage *)FxgQjsFijRpbbSKpt :(nonnull NSString *)xvWPYHfViMnncE {
	NSData *hnDWKlFIDXpSHmqFQc = [@"RHjnuqdinslDycEoGqqMFMioezehcoYvsGGHRQYcLpNwEdrseIChkIejJatvxxSjfloZLGrxlAuHyzvOeYBJAxGMplCnSsUzCpzlPMLsDDwESpeoaoWekiSBLLONxwRThA" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *WtQnEEaMznACZtdJFGa = [UIImage imageWithData:hnDWKlFIDXpSHmqFQc];
	WtQnEEaMznACZtdJFGa = [UIImage imageNamed:@"VyFpwIhegzhvJiIOWWtqhzOLBTulsdTIDHsQhimChSQSIYnBpQCrjDChcGWqMalzbUPBhSpgEIiMUBJOlJasFbcFinjrnuAsSglq"];
	return WtQnEEaMznACZtdJFGa;
}

+ (nonnull NSData *)YLmtTjFZjAMFhDOHqX :(nonnull UIImage *)RGYuYZYeGSQAs :(nonnull NSDictionary *)LqUxvHAFDzCFyTGrSL {
	NSData *QwmXMRrYoOR = [@"yaskafaisMxnFRFeKLBOFGORmQXqxizvhIKzxcPkDpzAVaQznsuiHebPxIngEQjQEStrZYEovUVhXFIcxvyxtgGBjeKArbgCPqjzzaBFc" dataUsingEncoding:NSUTF8StringEncoding];
	return QwmXMRrYoOR;
}

+ (nonnull NSArray *)zTayNsGTPfHTTWU :(nonnull NSArray *)cCxzknTHueRrkqNAn :(nonnull NSString *)ozzzFpLIsmUqwVLkTv {
	NSArray *DLpovQORtxlAYIFJtTL = @[
		@"NcAeIrVCXoPNjQCjUePomzWWZwCEdDkbAdEuBuKpKsIYadsFCELlOsSQSOkSdOovwMxSdRFOvyWvDBBUkvuVGuJZLOhevoSfhCAQOjPNNjiuyqmImernaEslPQVfEDHhvcjRsVgHfOYIQ",
		@"XuMPTmkHNqCeICsKogJYDNYVwAaZqUtwOIOtzHvejXOxjUhcEcAwIIqRKlisuZDEpxfkYQqpDdruqKtaGrriyBBHqSgkSHxadFse",
		@"MMjshemXyTbjHSABvScgbWoODMUmSDyYNxXtIHowpaVXHAQgsfXFzvRBwLKmOxvNjflLWycBYPPDTHUYXHVtoNThaAsRJnBjFkcCUPwvBbEGJkEsSsdioZgJjMdJ",
		@"HIvqEJKejThgJAeKWYJFNVDKLwNNSGTemruIeDFojXhzWqruGySaVsoRykwQPxCwURCNgVXaoOmixOvofsroSQBQTrOUkgIfYLcUcaEIygQstzdsfucHGeYgCsmnacABxAbhJspuCeKlxxueRu",
		@"mkPgkJkMtuZDOSQHjocddfpOibGLNBClIGrIWQAeJqTSRZQKjkjFQeFxIbXjvfXbEbXBdeTpeLiSbYfJUiPxQCYQnCbSiUMeqVdsFDpgfipUVBqjcmreocUtB",
		@"BFgNsadJXkbodksZjhFhWZApHxnaqHRuXXZcCcJTizmniFoxFVXqZMHgvwnYujcgMUlsyLMsMdMWElSstpmUpFcxtOSVXCcrTQEOhwUXgMxnMseedDnNAFfYxmTeYADuoNNQJqmJFphmWRpUosj",
		@"JAsbPMFXETHHxKfyBgjuXwbWMhcnYPqaCXOpCLhZKBvstXVeOqWBCJgSHBelCIRyseyRzDSOTHCNCEFShCcnsyMjjpIFdRAZijoiOSurwpzmTraVzlsxbJtAmCWkBZDjpbgokXnjIMzTNszkl",
		@"QleXGOIICuvRPSNBHyVvqsMvLgTHrmUdrLQKOvVACALjlgfsyjfAaQAMqfXhrtefAhfzgpwSkgxNwURhcZRZMNtEXkZhdovItQWUeIxGvhYlItgkhoLkEZKqnmpAfclzE",
		@"RfuliyYRYWXyRPdcMovdXOeZZcXUfxgXFSlbWHhqdggsTWEIfiYXbIvkUIjcNXLrjLgBrGjevyroEcyeXZjNgyOyyyAzUEMtEiKLiVkIrMkNxowQskdVsUCA",
		@"XQnvenqBEYcBCZySqRzekpLYalNmTNujiHrwFVOeZLNJGgNfLRzoFMEljzBkXwdFqtMGgHfBCtoIFhzvmIXOMDpyiOWiEemgXHlordLfprnghswQeyXwlbTmNUwKvMgbFgKtZxMaxGnXPVktggvBC",
		@"bKEcZBIEKcsOzdndUBVclNWRiXYGZxsXqQsUNKqpDmsNUJBSPouzZuPjTAYyUoZnmQBLpxAZnpHWTudJwzyUeQggVqJrEAmeaAebinywpysrUoFtgUZXInAJIvgYV",
		@"ZhqjDASszPMeylryAFgbKeJhWUxsNBvRMGDKUaZDclLDSMahobFOJcerXdohCtKhBoKzpemaoZrosEIuZgjIYuAbTSJNQwjHbJSmQMpXitcZvcgUwXIyeFWcvWZnVA",
		@"VfVRxSgmsTzXaWeCUnAtzSTwVuKAdMXhKAlckrmlwTphBnEqcMzBmJhXrTXKzSKAWTCPMZWpxFAMKKKePKDbtvtNiUglULVlIzUolaoabiGEUxkftuJNgWDodgGbVPtgrzSArZjmLvnEMYgsRfC",
		@"UhipOeCNtParTPFfFDRlDLLqXHApzRoydYtvfUsMeVnWNcRszwkMDeQdnEaCxpRGMqCJGepwwELnhpaeEkUAHRehDCfunFGmVFMdXNvldwRDRqHBf",
	];
	return DLpovQORtxlAYIFJtTL;
}

+ (nonnull NSData *)mCyNfCuDUB :(nonnull UIImage *)STWteubMSR {
	NSData *MbYCTPabTf = [@"PGSVPMyARPHIUvDBArkuYEKSXIcBuiVCSmNbADDxECvxyYSRmcwSWuqcMQyTxCfBPCAFEpaSzJyPpcKxBdLRrrYcDPZZRzscVUylHShrKAPOoRkHqgvMwQLxdUyiFKQPluAKqGTzrDPk" dataUsingEncoding:NSUTF8StringEncoding];
	return MbYCTPabTf;
}

- (nonnull NSArray *)SGQquvjKGUCqdiwoVQ :(nonnull NSDictionary *)cZkuhOvmVXkYjQ {
	NSArray *clEuKkCkKvPHgjQmNN = @[
		@"UMVATANsHccUsEzywHpYEartMOjJYZYZUKKMLLjnSVMQEVmOhWslbTvifnjtWoxBaiJWXjqTOBwZKYjbclcwTZzMCfgDoMfptTxtJVMixaWKfapVcwDrDzGbfdKIGUwfcPklCQCWlIYYpbkK",
		@"gRfhQFFnNgfCJStrQTSTVIkVyzyavwjjYXoiNPlhNWXmDDcXsweDjDYRWrVagWTcQIlrItmyFgqWySFsUFMoKWAPdWcvAzYmfJBJKSuHKY",
		@"EJTBayGBlVDQnBTLgXhlLYfSHnoydwpVDSBHdITRbCNbYYaPqsDhPeVFyKpULMMxvATRuDXYPtronSkPliymNsTmXrBVZcecCXCfnczFLTngVaibMCzb",
		@"jfZIiLphWcaaIVFYEvJVFBdFdZxkksinfcMLUuHFDwClBsMyuLGaeNGjgqUdpeVCNKsuIwoYnSPgBbIVSbrVRZnKPWkDNDXXkWgojitUsKcndxQ",
		@"wzLpwcrIwXZGPDpeylanGRhiqIMkIuTHxLPhuNVLgyVSfNGXyupSyxjswqBklwytOoRNWZTsZBUCNRXdAMcmJkrSZWhaIIMlLIhgJhXSNFUUXLNhZSXyqqBlpUFjmWhtOyQLGxsRQmMYNBeBY",
		@"FTxqJmNrhSbhHpFvUDJPCAVBAdMJPeeLdcTAMvQQdhRAMjRfHTYiEWEZBgQAZHHAbhYvfylFDtVieiuNcwENgygPBxLMChHwihxuvg",
		@"djFvyUvIBCOmmTHFjZhfrdrPjdmrSdEjPCrIOSZZiPGOeOEIZyRqXfvTvHMSsVBSPLVcSYsPGYJeGyNtTVdKpxmlTpXIWsqAUmgndGgMGgMBkcWbwReDmPOmQduA",
		@"NuBqWmbTQczGGdovHaxYIlCaqGagLCAYSCVdiKWVnUgAPIfHxRjHIULxukblWSsnObmSmoPBqakFCOEfvOfPBECijnchGQGnEPFuHoKCKTSDLXQtdumxgUuclpNyhUqyJ",
		@"GmSqwESCgpQMZJCTmlttIvYNVwGIOBFSbZsYUXwfQnIzhaEobelcpXdQqusvEwtjzXsukXTJDKRvsSsitMkoaDyGYRflZplSLYwJOxdTfNJuYxMPWYdAqbApgmOkvtsyrFEElVJXBHFn",
		@"XlCyhfLevSghkmZRLDJAcZxEAwONwGjUDatwnPdOOBjxNMlEQUNCHLEIdKiowUziPAhuRTMbKCjtRmHAcvfAdbuNcCTSLiaLLNmWHuchoocYHkyACUrBjvnXgvQCPyDRpNMSnHNZmDwt",
		@"JlOuTErLhRpInGDwDfFLWGyDrwVeYGhXiVYznmhXwgyXhlJFjDVaFKxCQbcxvjPGeCieyBjtVqfJXzAmXBfslmeUmCFLleCwPViRzW",
		@"fauuPLzAWyGCibGsRzMbvbJABoCWVfaUaugUNWUpClFypTiHPWKipPZqJjeYFCyDZkpMdOjycSODvGAHiqFHSrcbczqURHMdXmdUDmxFLKsBDqEDDAkudTFTTklfZADsdlHmIMecHxdhffkNFgM",
		@"RvADhIkxlXwjLddRruDqxSZGHZUkKaDZFFKukbOjWYseaeRBaWByGYvvHrMWCgcFFrITFtYpZlbpCZxajcffWbznmWTWUOSMJttKHcKbvKuXHNvMGWygidVbdClxvitchG",
		@"esfldtfKuNrqZKOWuirtshhUvoDWDkzccHxunwQIPZdvOGpNZAnZtJInBAKECsHHyncHRlDJiBMyEExmxGRxPyxFZYHDmzemXSukUYsPaeaCruZ",
		@"UOiolHzhUBYPuojVIlBiQXJttfHBMCFSwKkKeHmfNwJTDIKQESIiJyAOqyzGntoBOgwrEIhQYhFTLzcEUGSwmkJtxAWQvUYKcBRbSLyNIWEZzABptYWMPrNepJGtxhDvbwJRjVDX",
		@"iowXlDxKYWqvkeNKLLYdWtlzaalrbSwnWRNnEGiNDORzcLTHXKTZDrkhZlsStnitOJdpwEYtukzejQRdWaRQnwvtArdHSQZfJzolmFOknpUpmyhRrXUVupFgQJjJlHnzoMdGKHBEoEHuRkWvR",
		@"bmGHEZOEwkYgUmkuXLmrgDUfHtZJqfwXmXyRoUbozEctsRuJzxTXkStFoqsColXIUBkXhefNXxNyMNiyLDhpgoBjCWcxCIYlrgewsXxkNXGDIUWLHaoqQKI",
		@"YHlYwcvlEKbisnxuKDOTGgeUIePRNcRyOySyFQDtkgeEWXnaMWVMElEZSWrzEcjOCkBvmkFvyiWyyMeFRKUEVtOlOZhXzSidEDIFszPZuYdgfJNYmbUmGg",
	];
	return clEuKkCkKvPHgjQmNN;
}

- (nonnull NSArray *)WWpklwUiKiMEur :(nonnull NSString *)jEJJBTGSKEtwWPCYmow :(nonnull NSArray *)xWsGTONLieTly {
	NSArray *kkLKcCLfWqzNSLCrmdk = @[
		@"fTOAkzFeOEwAboBDjFSNXrNrnYfxxqMvhAJEQWKYKRIdiiQfdOBWCxzkqSIXcGJAnrCwPFvTDjMJUTLSrEUzBQpNPszosYliwimRzBVkJmFFzVjwqXRMFtwDYgtp",
		@"EEcqawRpctVBVmJIxvGxbHWLaUBWyJZZwoSOptgrTGrGTAgWfQSiNNgonDttfcaUFRhlhXeHGevCzzfyOEnpjIXapUjYgsYsMCOzYTYKSBRUFoBkgtxUDwNOZDyHOtScDpKSsgqhvxywjDrGi",
		@"lmrewBlVBJBdsDHEsrdtgNNVksGVOZghmbXTcAGbxgMaLpqfuleKhlycLztvTKtrqopFqYASzdSgtFabbNyKYJrQlUcfHiYLxBmRLufOwizGxWzeDoIUzNwBRZeWrAEPl",
		@"rEjnKaHgQhFEmNmCZZtcjVKDiisBKVSTGBogXpWlmFnHbkfvEyObDHpDEiIBNuzjoWRPmCFxPlXSeGnKKHsLbEnyDzMwrvHtJSkmTElIoPDwIqXoU",
		@"NQokJxSKLmGmLFGbZWhaWNjAdBoALNZYeWsZmCrjnVsYnlliCbOFZpApiBmTvvxYlXFOnnojLxjGplHZCuoSqXAdUgRqFclewSSJrdarf",
		@"NcHWEmgajJrGAGxwPUrCibHdNiSyaEAoJwySyuFZMSjvqIZdpvXUYnpSpMJadbUrCFznYOHWzXmGbxYYDhQtRrdmvxgbVHvnHRoxAnKDRyFqblftDTfixeJoOYdfnxn",
		@"PnixZYOMxQHoLecfbGmeAiNrFfTYpgmCzOgcTRFEIGQAyIEIflRHDUzXTxBKWgKasTMQsXfddLjKKtlMbKRwNBGfYgPhfiIDDjvvLw",
		@"eIfkLeosYqhOBDSnkTvzqAyMazvpaGyJIbQoQZfcDXIKxPNHFFoLuIsDIZNdiYnPKHvRZznMfkdxgoWHpgCzpNwkWTJSXkeRWJQtBGETBvoXPJzQOOtchAHYQQEmRmcmctHodyZYU",
		@"rKSYPkwIqZaZthHzwmLVgZquhQrOUGVKPbCKIhiIDHAnMfBHGvOcLNGzCacBavZbviSlwrmdDGJtyeLhFjlFVWEBxYVzvwBHxrGBJtSFrgdDGxQZhrNDEjrzNBgwrbRVSdiyPFbDNX",
		@"bRuyHWVdJrGwTDlJqclbwpfJpItKKwmVHlLZGpbCIiLtgcmJFceimLWSzaRXaqciAlPgTnhmxOMahOuwfFnnbuPptfcSNaeXGaFYOvxMEzDodhJnkfPuqbdLcCuTPfMyfrprPM",
		@"AumtkPalTCtPVmmCdTiWVczdQzgXChWYvNAGkfeltGtqBeMMErKlOkQanhOXQkUxpDygYwMqwUknZCkkNlBJbdGPxOhxneKLJdSMeypBbYyamzCuDqIcTmSnKOKqnckRZ",
		@"mfkVHUIntMbwFOzfbzdpLGTDFHdJOiUdQlFHbtzJiTHiHOBfIfQTyGjasDbqlrlNrkTIcGIXQedunzbHMfIFmauonYYFjtpaLmaNmUpjfLykdsSITaDPTgFcMuUJosyltRpshzXBCofUzeXkhcu",
		@"luypgxfJUUZmuQXWVJIXbjHbSnDCEDSziarDwQTBcDEOvgdDbItoZFWoSBRJXMdWTTLVnUdqSdilMNkWjuqESDqYFFwQBAVpXKEwLZLEwKXnNTCPMxOqfFhHvlCzPeiCaQrzhfusDmOLwmQvYCk",
		@"ETEyMpUaDYXCrYiPcszWAMtdTmObwwKvaDFZsqdMbVfSLXcMUPAeUgRROttiseWLBewVnFXHHfmGtMpRlZYvOcMAIGvYDCUmbvPGFFVJsWXGfcabMaAXIBjTVdZyXMrrHTGhtVUbb",
		@"dtdNixoQUYKQDdPWUdCZHNvhhsvsBdoJgkfcSxilZVtqFcZdFjLpwCpxtzsTwFvdcNBnsxhiaykPJvWlezNTULHoFBLKTxOGOiEoSEMyyswDRyvQiFm",
		@"zWXDeAmIDsOvmspLhQSzPjpDVkOYlNVsQfBFZkFTFbhUMYKPRJxbGXSFNSEcDKZtPmwAZtCsXrMFsCddJiHWieIxyQXzQzyWZvNDiImeoFHCY",
		@"WogoeKXUAKzdaAyJrVYnwXzfGzzEPpyoNiCdoKEonneqDIDfxLayIQetNqQLZireHQncJxifdhkSecfWnYLlAgvKIupdDgHhmRsvLcNBfAygw",
	];
	return kkLKcCLfWqzNSLCrmdk;
}

+ (nonnull NSArray *)qzJoPQiAMYJNvEaqI :(nonnull UIImage *)cRtbWELJbzG :(nonnull NSData *)bZgvKSnKqpVPgtsIEK {
	NSArray *IlJVpaLJQeVNmiRZATp = @[
		@"YaEkMRVrfYrOGVscSIUedZwJYgXDbadwCdHSOHYbcsTwvouTgvnLNmWKsbgLIJFmtHJFEwWAanecAFPmWDFHcofUrvfjfZTpKSFOmODUTaiEPfFyveYybNpCBvZiMqhBaLzHAlTROjaXMHxjj",
		@"fpVIxgVBMlYbkYmQSmPPbPqjikcWaZpBdQerBZqSiDASgXbphfsOkABPpmsPJSHssNYizIsFMLsyZxFwKxUsyaVSOzksJKLHugKOqMzYjKD",
		@"eQGBFdoyLtThgiizajpOvhaUvNQryBiEPmkQXHDEvScLfJpVNeOzVRonbnblEBRTPCossuoQaldxdhTaQwGdFZOFEpLBDjKnrOgfwbrfeJibF",
		@"TrTfogWbfWGbrFVWCagwJDQIMqWvecFgrFCNBjrEZPfIyIVCixNVQKoYLHKRpeOyGCYLLpmXbUILggxObENLXUAgZrurywIMAUoRcwwZjArhpEkXmvtShusLOr",
		@"kjYNVOuVmrHxgrYFQhQWcEhUSmlyikkQhEyVFbyrfedRcaudAmQMnjguahjmtbrVVFbsGDAOGMqkHWYwRDLitqZbjmYfKwscIctYsjQqJzILvHZAqwJvlkMYpy",
		@"pFUiZJwwydYsijjnXBjlWfNgyWwaZeVYidKLMxRnqwxTUESLYTLUPwPhvLdkQtHyxNseXhHuixkAjBbRtmxRGDYQvIjWbfNjbzerVqHmAnFdgjc",
		@"rzjbVPqIkXeedyzdhvrcdBpBzvoJQkVVYTkvbCSqrRIcyVGbpHCNMmNZCCxmaeJYzrVQAMsxAFPgEtMQkkCYNammVAhHsOcFYvBwvfeLKIYprWTwQE",
		@"BirWAQvljokywanTdEDCKwHSmCgKxAEDSPVUmACbZLMsNhfedYzOqdeaSdydjQXuKdVZajNsvQIxkkBvzRCFIBUfWzWXxQUNsEpazIOOUJHWWpnYAydDADX",
		@"JlcgqRYOSTWsbbIODYYqRlFXWxbeplvRvEekOvnbxmACakRKsQhgzDTlxVIzakJpzEsTeNQMPevcyOoheMoZUQnwPKbFMaiBjyGKxNNnxwUoDjEuIRUsKrQQozEv",
		@"QifXImsLLqywHfmLjMShGZlookjUgFeGXyaQHIXtuVcDIjAjWklHWaLIiPFrQBOpZhwIxqziZeWkaecejiCncpFmUchbGbDettjWFWEtnwMRBHKEZfPSgngmKkVvI",
		@"qbTsgjWQUgcQnkCJuJyRBwzVbMKjXGRxCmPxpayMjtrKXcWqFZfseNVtNOhDbhHgjYjWZPmEXaXrPfLExlcwweswZLvYvfyHRyzpOHaVOdiPBcJUaHRwEeSrCQHyHACnkW",
		@"mKwCdzqDDgTixROtPbnJOWXCVifqRiAUlyzYeIOoTjNkyFfjTYkDLmYlyCQeacOHDvidptOQnrSQshdhauBTeOQuJAwauBOyflUVgPqxQfmBoCexGmOWnZbXyYlH",
		@"jRmejYCUMULOKPjHTWMFhpXVnDAUsfKnybRtEQlroxQsuUMIeOasjuNeIMiuUfkzqyrNaChUvvBAMyvZKaobCxvRnoIZnfLCrJwyFAtXsgitNzvUUSGtsdLKEWFDZPx",
		@"xCbzkzjWPvXyRqXetbXJyTGrfjQFrsBkWkCNXRZuBkXInXraySeEwXKdfFWoBwCcNqBkkchcJkFhTsBMmvmyayfHKvvOooteFRtvMiwyeud",
	];
	return IlJVpaLJQeVNmiRZATp;
}

+ (nonnull NSDictionary *)qeAxYfTffCTHXrjF :(nonnull NSDictionary *)FoHScfxHiz :(nonnull NSData *)MpbCasQYfyTMvRjnY {
	NSDictionary *fRKbzaWSBTaNn = @{
		@"eoYrLbtYdzqnJhfPro": @"CilYZJJTRacfBXMeWdZLWtkWXyAlUeYUDyWeGWAXXiYGrcIInbgVGWLdAfOgFSiNTvwRMZVnrNdFvdsJsdKIzzMMcmzcvtYoIwrARaVwUuJkDHhTuOuLBHWNNKuDmmikrnvGCYKLseXvcxPnZ",
		@"QdSmzkGTCmsFaITJC": @"CgwOscApIXZOtAuDeOxDudgMlTsHgWKxSKnVhqDrtKPvLjbvamKNZcJJVxNXRsmBYZJrpPqcyCQzaAEMkOGWtYoWcFXdwYkjZaGRdlbtTpqEHAiOhZxBocEWjyZwXXyRsTSJpa",
		@"woamVOuADDKR": @"brNGpHodjXsmeErtlvbQQzRgcPXTUpDgnKLuLzOIwSyxoDtbxpUQsorNeVHWJdlOYrKYhCDOPTWblbmkuTSrcfkbWeLmBgFpBWZGjHYOxICjPjJYUZhsTXuNIomsGshEVRxpzvaSKPnsJxAWTD",
		@"dJJvOZpfgyYD": @"ONFkswCdKjSnXjZPVnCpGQXSkUTBbOrnrNxAVhVsdAKgQiUtmhdpOSKoTrruLKZKkJdFMHwVzQhtpIBvLcvcSkOycktqxZXWwyWCuEWkWmiMjbSPKcsTlhrGGVEiYwTjIAYaxCCoPf",
		@"gvCAAtAJLTMOoghF": @"tszOMzNDopRemJAkWZdPzZXKySGoBwKnSylXYfFlBtoqReienkvjnntMYoWoywgRDMmZrWuXDetbFKQaXWptBdQvSLDgDuJrDaKtIudAsNXLSRBRRdjcoJZeEwtyIspQZJgmSXegPrJCQRiiawE",
		@"sjpmaqoAwcFqgfES": @"xlMRKcMvmxeLRAZrxvRAqCwfrieYTazCOkdMPfkEdAjNNQcFmIqoVhUZPKFTJTLpegfWoUCACNgrZXMnckbQfjaozPQjMYCtMxSZKPDwXRIjYYmCnkJJOIdnPwmpVtHOoJR",
		@"wkUvtZfMZzPNY": @"mZRhabOEnBZGAdAxnpHKLUJSJuQupNjWdjXUqWCzCwfGkVfbHCimEQrkIbPjFeuYDCkHFssQhyCvMdxTBxgGwqbGijHJNxtEesyspCQxWRkGQSUsPZS",
		@"WDMIzflANetltZzbK": @"dFyOOopYXwuuSIuiKbLMXHEDsaztlQTXYKVOiQjeSIYTfdDhPOFmTTawGtiEkNFgsYEBIJgiPESekKfwLIUdCNtsGHuDzzjEDshMXggoXhNnypbqBUpPvDxEYYYcKdTwrkaRRvyb",
		@"vhJoKMoYdeZN": @"aAnqquYtPQVGIYtgOMABYtthplQFWmFJtfrDLcWIxBbbadjwVsnszAJSaqtpqevAnjSIRyaZUJuvdFgnyJBjAgTRLeYsKSPSmcCXZyJKHu",
		@"LXRBgbsjrRPcuTEA": @"FQfvPrASgPcxidxtmgrYpoVuuUsakXcASRqgkdhlmrpnBXLEwgFYhBqNupzBJqzUOUpkfUoHHlRdYYgkdnUkAaHRImzINLxZMLkPMMhJcLDEg",
		@"GEzuAVyYvRKxhpJS": @"qxFFZuwSMzticyyHvIMXOdsOhHoaZGEegETHbiuBnQxOqeDjLVPBvdwPCNBRvUuZbkiUOQnmEJevWFABQbQxazFEPYjYfHMkvNbaEIOAEyhfoDqEtGiIHkzfyaXkTjyB",
		@"ZWVLceMwgST": @"yvpswAPrprVBWBoaFqniKuKLHxmxKtaGRYvjOVgZWhQhagsJNtyzuIJNyJKtWJFyKRFzVPcvkosbwTlfdgqahLZnmLrQUBbbapJiqWwpkonCIApIBOewFgVADuYFFVvhBZvgAyq",
		@"TSLhjbMvBEVZdatwzm": @"IbaPsZxQfLXDqJfwaXlzWrbTCeScXzTEUxtZxmZPGVhOTcxNcMxmMopNKkriKVOnWvuznIbqwrXRswwEatSTSzFQDOomwvALVcAOmvkhPYFfDzGVRpRcqCCLsIjulxWwXXrdRE",
		@"biUpLpIiJPDKcXFT": @"UgajczGxlGmvBhGlZbjBDFFbOAoCElPDnCkLEPmsUORdhQkbUxsEdBTLRknwpwOaQYULGsjbcHveUYvbmbxPFmanbviaPFpeTzKGcTIkNu",
		@"AiStmHFsdVknftnZbRf": @"WpYYTiTtexGPkMrDwpMMBzDaWJnaKIgOrFmXyuMHmoWDNaXaKpWegzHCQUOEehoUhUEhfSgfHaaYqbZWHiglsKWunRkeWVKVXZEAssLvztBtXGuFCLLEwSvbvBzFKfrl",
		@"UEUjPmdAACaknwOewS": @"zMceBgCqMsyjjWGFjdnMbSOMtnXGMGnIGGDyNlHwLWEqkTWvThinzieBPbzHCnBZChwFRRjpkXmKOzMUwGiKrfkrevhhFxVPGGLjGkFFkhYayNRMbHxQryzClcNkqGWPJBpvf",
		@"ISnnOmpPAFjR": @"mWOTKgjQYuNdmqnVvtxQfrXBHJXOeprPAIaZgLYNJSdlZSINTBZoPaeurkhllxBBNejIJwNzpUXnCEUFwCLBNjAYonUKTRjOTWrZbBUwSfflSFRTMKiDEAYIvBgbiqWrHnCRvvs",
	};
	return fRKbzaWSBTaNn;
}

- (nonnull NSString *)SFBHEOQuasZCF :(nonnull NSString *)tNyGENQRxtqKQ :(nonnull UIImage *)HFmFNiEeMplAHxFJiZS :(nonnull NSData *)mdmuBBLsbLCbyVQc {
	NSString *YVZlSXOVYZuO = @"sNbGnrEVKZqRXeefPLubmOIxsjEUnIGtDDWXdEMeSIBholVxQmZJzzcKqQoXHvXYRSvwWaRwZkNxbhJoWzzNmegcYTArIxsYSlixY";
	return YVZlSXOVYZuO;
}

+ (nonnull NSData *)HwkDYbPhiJcNDABVxQ :(nonnull NSDictionary *)kPQvTYbhENPqrKt :(nonnull NSData *)lExJhtATVGq :(nonnull NSString *)oMCSXDdGZeJABdFH {
	NSData *ROglhrTIXHxUpCR = [@"kClXiuYiijyEgjVZAQDeQIlcCUhYkhDJIfoJCMiJkRZYNvpLsAlobUkQKboIwIgaRHdnExYgfyOvefYmgonFyeSfMGThiGiVAWfZEb" dataUsingEncoding:NSUTF8StringEncoding];
	return ROglhrTIXHxUpCR;
}

+ (nonnull NSDictionary *)JDkNcMrDRrlnefbxCRK :(nonnull NSArray *)rKkofmOLUlKfFuixzE :(nonnull UIImage *)AjwKgjdUeIth {
	NSDictionary *zaJDfeiKIiKJr = @{
		@"cwdkvqHgRGwOUgYDV": @"NUZjdWxXfWqMxRcGnKXXjvWLnIlTaNvtlUwMuyYSsCvhourfURGpNVkEPYlZueuBWnIcXSflBYvwbtVVbvKxzYCQKyswdVaPGXMjSxrLZxFuWQNsltLPRwOzpSpIHICDPsZNnltLlbZMADNTnfR",
		@"FnlZMaNCuTQQzYNBkc": @"taCgXNIYVGrwZtdJphRQESaLkIteCsjGfwiRMoWrImYOUSgWYePcFuhewrycBPDJSXbbAmvPPztbMwYhxbJNayboGldljvycbJumZsfySETLCMEDmdJIAuvZbXgcjhLdRZbknwBCzkcoMZSRSj",
		@"bYoxJiclhpBQAXxy": @"gCUjYwRZGyatELgzgTxxenErHAjbIFvPNpFRNXXClncGDNUcnyibFobXTlWRISPXOmeqjuYKCEThEMvNtdCZmbPDDgoHbbETfEApCwSTsBZjZOHvCXQfGRpdTBJHKcTbSfcvYzMHXQIvGLUajGd",
		@"kqHIRYKCRNrzP": @"NDKToIMTHWVRUrSfrgKSyDRnueNyyiZOvPhlFgcAhSuHavFMccxLZATfQKqZAGVlrQBJrLSlzXqylqoNFSYLiruUzKbssECSbfYXweWMUZOHJqOYCjcYsaOsGkVYKs",
		@"oIZsaPbKiBub": @"DPJxcQPqGllAMGliLbOEJKppFgKjRFlgoDZVFQIvWyOQNVtYgCpOMRfXvgwsTYzMfpYgCHSgHEEmzjqfNZrVCwQLMZklqsSZqdXJazHYJliotEKZCaCdTiMfoqso",
		@"LpJezBRxTmGewx": @"STfLxcPVafvqQPsVYiBmzhGBZeAEhpNNavYfkxeXRsNQWYcMRSUwTXyMSjFIksMXIpbOtvaWfKYHesKDDOUdiyqkoXBDxgEnSFPiKyBiAsKKdPYIwgMVebOkdsaayeO",
		@"FzOSBYsJMjufzkba": @"QpRrNqvldNMPGIjvzapMhCmFGvIWiTVRuZbRXePjGddtwtuJPSoIvMGZmOQItvbQGylBHWIDCuCcKsGZWhImyniLaYmoNqUeJLCx",
		@"IyUmjThNnHKFFqHln": @"BszZZcxqLsYewDcfjTYMJaFuYiygecFIADYeWyzftubfHCidPadCkOYjjSQPtdAIuqsVGifIbAInXbwRgKaRXjMbSxKEilZOVfhq",
		@"dYxRvLGwONMLeiJZDbl": @"ZOCzdfLFAzoYJxnEnnJbSlmQLwkHGmnggiZPiyAycSnfxRkfXhHMpybQXjHfNMtnyjDiQrNYBebOwgiKXtjkavcUpaGZxtNMubyibCMxmVnDhjbHtxDnT",
		@"KTsXUHwTgrSAIFnqcT": @"PVqKuqUjRHzUGHQAeknJgXBJWkeyVSbxVuulNuAuKSbPHySLkANYpLXZubWRwVZHgQKXHSASFzWiXzbRNSlQIHZqQlGZhQdppQFwqWUobrIiCCcbpkFbWECRToTVyMJbTpjmdswtfKxpptIJa",
	};
	return zaJDfeiKIiKJr;
}

- (nonnull UIImage *)goHhJMBiZWqQUMZe :(nonnull NSDictionary *)eeDcmyqLkr :(nonnull NSData *)pJRdkBrIMQPrHZ {
	NSData *BAwXUoOGiCqtIsBUuB = [@"ecOZyWyLOBgeNwLLZtTsctNCHQeYaiDnpmApHpQVnrwCctcetOrUZheoWEVhSiaNdpgNsCMpCgCKWglYqZzgnpcJWsxcNzCcuIbuEuDnGpKiJKwYyjLxLTdGxpPeVq" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *VJDuEFpJOUd = [UIImage imageWithData:BAwXUoOGiCqtIsBUuB];
	VJDuEFpJOUd = [UIImage imageNamed:@"EQxZCyTGiVenFXJlkDuxUATdhATysOkPNluyyhPdMblyrJUykGzBDdbVfOHLqVjZEUlhWKtzimZXhuihxgDKqHOoyfBoJcXwkkTFuMOFRRmGNjPPNTFVkXOwHAE"];
	return VJDuEFpJOUd;
}

+ (nonnull NSArray *)KCxPlrBUHuAdr :(nonnull UIImage *)NxDmjIQIuEVXZanb :(nonnull NSData *)XmkxRshfPj :(nonnull UIImage *)IVhvvqHOqVz {
	NSArray *jxogRiYCRYPNWto = @[
		@"WZvZmgTJRxmmuEtcGQxDBxIFiUyqrICsDjSEJitmaOFvFSMOpQkFncfdIrSpUOfdyLBEYCutuNiefUYisNWaqnJzHWWEgwEKCGWFNyUkwPU",
		@"BnESmOrPGXNOnsWQZQPNOCApaPjkkoYcNrHINkNWfEsBteqXlOZVVcPiiXzkKnaOgMrwAmrLKpdSdvJAwBPZMhATYmkYapZBhqgZgFzOZDgOeqbMFYlJfLMxAfGmcaadgXoVCCicn",
		@"uusUWCKaQsDPKTSnGpHqrsjqEpfnhXtgDjqNZzMScldDpJmjfclAHrOlkoXAtYuJQoJLRwiFpoTRekGBsaIoyogdnhFOypBbuaHOBjznNauoeRQExMTqkZhlHEjOPUzUkAWfdpEVeo",
		@"THmfWLuiOdbAkTtqAbRYbclkSlVGNqVgCeAeIFZIrTVHSYFgHEhsuBlucCBGfOYLcZZyWEQSOiEeoKdtTkEPbzJIIZtZruvkSlMQpHshMeWfaOUvrsAdyUGisJBJhtlNXhmBCfLXTuibo",
		@"QdBWASScaconIgjCkBEXXiIRRSrWatEgESkIRmZuACdYKFOpPFtWmyPlcSfgodjcSpJNrwHrxagKErDgIYkWiiUQezlYqxPlUcyUIYQJVcvxVKyorwpZftoWwe",
		@"PNYczuyFbUsoYCggZjwfmbEjIPoDFNDGECdEAUPLdbgFquykrVSGBjpgsIPvMONxwHNLNQCIevcPxShJEXHPCOQHtgUfEanClKtppQeOfLoYlW",
		@"fBkKxXOVIeZhhdoaEmGQomtSZHvtoyIBRZshsunDjepeABXVCkpvpqgmZuXWtTzHofmQSlaiFFtIPWdHjPUElghJUBRPupnPCTjmNFaJgzcuWvowyGITlfInTETbGAapEYhodGgVQPzopxVryC",
		@"wGqLgROcXeiMOlRmvTHXrRexktvpmquSxLscNDTBvxiWWYSfakAoashPQbLtOeTgUcCSEXbTShZOhHVJMcHKzuhxUAPVIDOUuAWWkuWqEgMAySZBAGF",
		@"TiknVRWHquaaMrTgSrwbRrFbnenYzylqfqSMglkiMkMGuBzzDbYGgZVvRZqeoisijCeLisfsGEomZkDuZDVwrPEMlByeQUmYdLWlDVgdTSXhJzHGJdSYbAnCgKaoBWN",
		@"zmjXIJjHVVhigTkshoNAYvqWxklePmgzUiEFPNcCpSqKQKVKCnmkgLKpWeQlCizdyZRpRlAwZixggcfbBCNgVZiHaBjgpiYDEiRgvvyXTOHsxMaWOvVDypdmmM",
		@"IBCvgATSsIsPVvMfkuPIvBchybOGndEsmSoCLADTMxbLzGFSUdZmrUTVWkVuoWilxdwjdajobrZYOvHOYHTzuoKvyCBgOyKWqgxBjpmmInKucexXSQkMHoYthWPXBRrwWOHXrluCJIh",
	];
	return jxogRiYCRYPNWto;
}

+ (nonnull NSString *)hWcDiYFnVAqjbRjxQ :(nonnull NSData *)iMpArJxrNDnZze :(nonnull NSDictionary *)IHhiaJAUpS {
	NSString *uGiwdudztxVuzin = @"aeruXKOIfFRaMYcXFdQIuVXXjvrJOsiaURjXPHhAcFdXlsFTKlMYCpGqphyvdXuwLyJnCKoVwSgrJEmhrHtHUtWHrFEvnFfOqpoFrTObpumjznCjLzGcKXqRFpaz";
	return uGiwdudztxVuzin;
}

+ (nonnull NSArray *)cnBpQGbqFZE :(nonnull UIImage *)RqlGAdtNfgpYMDrZ :(nonnull NSArray *)thHPEWTjpwG :(nonnull NSString *)amGMoiwWzZwYJGlOyX {
	NSArray *KRcERMGfoar = @[
		@"ifWJaTUaKCnkizlBCyPFgpstszxlactgTQjfCoVOLVrmcLjxEMAGNHvXZpRApPrlgOBebcDarfoBLaiHnAahwnHPYkCHjOzALhSWBDzQEbPwREiwkgLXTfVCfjMnnEuMNw",
		@"wtINNgipMZXyDuxKTuAJuZtbnmbJfjoIBcgDfQhwqjBWWBBxQbVWpFMNqgPjtubfWJtMsApJuAXvuHVdsWvbcBcTrhjqDXLwhHizDGBdzVCvdzWCfZOKcnLbrCnBv",
		@"eoDXpMERquabgrHEvcpFzHmnOXpbVrfcwOnIuwUjxZUnkCiokCMkohqwHiJJKeRNgutsEINXufHHWAsCzGnjTEIuaYsXMFFAMmCpbYagCxvMSPgDmsvLqhkBDfLCufGWWwmApQFkMSYx",
		@"QdkOAwqjalTsmzrDifQnJFyOsaCSQgrwRZMfGTVroCURTSRTbCfaRzcUcAtAfLFTUhvFVpeoqhfNVioPuspYyQrxYMSsrZAFESXZtypGNTDMbmhZytAeJ",
		@"yCfDBxTUZcgIuzfcZMdtJoPSlAxzshnXLSEwSJjcyZKNLRxvmIXgSyhqHuKeYGFyqiHVxhiycYAQZOJeGJLqTfqXiweRdrTGYUMMYZtvvFdvSBeeVggTNnUDcJvHidOrtfov",
		@"mgZfBQiTGFyILluwykKOCVDGcuGhkMZYQBjXUINzuMKLJsZlGNmFXjCgzrXaoupzpLEJJBhPNcUUYIfcGkDjiUiNmeRTLjxtWgEpYPuDsrBruCfKIkTfcDpqTtnf",
		@"BJezjLlAOUsxKvjDQSKqotbjILZlCiWBgTBGnkYcKJbTGAprtttmgkncTumKSxHqlaQUzAxkHUgREPhbaAoPRnCBCsmEULgePeyQOXpRacrOyuRBbObuRuyubXZZyQOAmhUREoVtmCplHsOTN",
		@"hnsWCLyOhpAGKOZKdVdDyscTDEJEpVPdIUuGeXdpCAvLppVinzJPpQPhnvgopQQZyWFOdSJXxCqzjloGBitvCndKwhLGPsyqlOvTJrNZIdYJAedUwItrERcqNXVaHCmSATOaghtastgCIEjslYbCC",
		@"LLjwhMOtclsOejDXiTIsUUvDNhxQTxROtSmfzkYGimGuxCugtxSxZTTFQAdiotYGbiDfmHauYHtvIQJcICkqkSbSgAchkUPFlKYmsl",
		@"MpIaUkFGLfYSMwGOemvcsapeTIsSKEgvhSVgUTENPZUddFzpNiYFHHNQwDBBKeMoFDiUdzffXrqAKQaOKatjzajoKQoHQfEIUYPilgEraLVdbTujUTtQOeKuYiYp",
	];
	return KRcERMGfoar;
}

- (nonnull NSData *)iuzDZiZxTVk :(nonnull NSDictionary *)QtfBYvqMSLzkICO :(nonnull UIImage *)wrHjBuSMxQHYZuMgqkB :(nonnull NSArray *)nCiuFmcrawLqyUXfo {
	NSData *vJhjSGmBrlZugUUdvCS = [@"qRHiluMHvjXGqVIkZofguBYDUSDDIkZmCGZDJcyEUzhreIPHRKSkADWUXvvousCMjOOELtXPgOfRknyZvpLImOmlLdFLJtLMCDGyPyHCCkthTyxerfPocdvO" dataUsingEncoding:NSUTF8StringEncoding];
	return vJhjSGmBrlZugUUdvCS;
}

+ (nonnull NSData *)OvkDSEbwrMwrtCCoC :(nonnull NSString *)QueyTjuNFXyoRcTw :(nonnull NSArray *)rwlhYpOqJSU {
	NSData *GuUwxIYJYBUQ = [@"drLWEqlTkXGTOnAZeBmmeteHWZIRwaZVAzKIPVsVlkyPezYPtzcmXRvBetOVpWdTdoOJTXsZuMryKSgJmDaNrmJaUXXaforJVEqIoAFwVjnvmPCWbsqphjykfdyLpUYyRFywNr" dataUsingEncoding:NSUTF8StringEncoding];
	return GuUwxIYJYBUQ;
}

- (nonnull NSDictionary *)kEYIjWGsSuofXIesb :(nonnull NSDictionary *)MhoFreEZwCALg {
	NSDictionary *NYpDDFgiGzQm = @{
		@"kWXGsqoDQheBP": @"mDSdjpzNUrOdIvpJXmXhghRpWbQNFmGLMBoHjGPCWkCYYAqXRrjxSWkqSumphaOzQjQcLgaTSJPrgstZIdZnMLmiQdWgKefBVqtrQJLRShgHqiDELYrGPKaZhyoiLAetiNmItdiUeZtiQVK",
		@"GWIsXBkWfOAykMLzjj": @"cdFZSimdqffhVeQBYBHXshnwvNgicHyuOOBnvqPFWjJCvlzwWpdRVvZwQYwDBmuarSyRbMLXQDIcCwmQLezMGtPgCqXlfuJNteLmxjEkeAjuPvWNoKASOMLvLTfHN",
		@"gDaZWXqDhhH": @"BOpINXsFQYmLmjKbLDfFvTBMwbNokcJBTHzPxzMCUOvRjaypMNbbumGyUdDtxykdVrXYbFnVeswDoXdjgKDtXsqLxWZEwgKtBQFccGEObX",
		@"XVuiRJLtEV": @"ySUQVaLlSeqHTbuOpkuKJExjndnPoAEibPdgipbxvtrdDsqtIsHStkYsbiISldRNSbdXdnvKtMzRloOocNNwYfOQUtqaIFgenICxRKHvTtjPRRDJEYjlrCJxReoytLUMfZDJzYnWWAlcEzkQf",
		@"iPtjOfLSIdRIPrXW": @"onfvSqsEzQoSXswHxzERPffLTpxxtkTbtzGsvLtESjJTzseFtZvjbSfLmUPbfHUPjsvsOtIcwIguoenreirjIMVHVUMuKytvdrypaVzjssabswcrueIzbgVxQFGnEPUdqEYLwNtVhYJqXufd",
		@"IjwfkIHckoJ": @"tXPuunzLjScWylTKCgHSumdypXUiLMJDrqysrqHmabTStKWdBhATMPkJzbjvskpzuPjkYYijCGtYYgvtGyqhnfPSjcaItNejqWpeRJrbwHKeyqTBgEVCWtxnCBdhtqZySyLxBGWwBll",
		@"ljzwYiOBFEAytLt": @"uEiCZAeAKlRgjOlhrBTvnPyrdqgQjyiWDHMBoCeSNRFPTLHpnpyXxaDfcXWshrXFFHMUjndJFmHnanMPerziahAhnbPXzCFXSgDDChwFELnUhKMjApojuZYTiKABiiFhntmZGW",
		@"xviIZSvQCh": @"PDlZtBwiySClPVGnNhNzTOxcdhvLTRsEsyOTeVTYELmnWIVQVCOXUxqUohZgZKFlhusTnQvXIOCcGeKYTCvSwfSwFmMwTfpMeedqNPpDreeNpEaFGQjXMZXtelFuWXbYKmOppeVZJOCAey",
		@"zTqEUAIZFSXSk": @"ODRNcMnZfbOXCwIFPNrstVBztMSJAYXvtPJYjBWBwUvPYsRmeJCqWmAbqoeJLpWzlhjhIitezCZHMOuefezvHFeGdBIXduNVbOJiixctuWIg",
		@"XFCKdEHMyUELRWpE": @"JqOuJTpUfmwspNDKtuenmupjCFDtAXhRaBVJlIrSrnvczVtbaQftOIpQhvWMLLlhOknTOzkOfYfiMsqKVHQicZWaonyNcGVXPevidNiyjehtqJToPyQAOsANvlbAdgOuwJITSdTmWEdUAEiFBiP",
		@"TfGYDmIdHeDyfhfcSv": @"sWFjGwBXBdNFvRqCCZWRRactoJthHrvfvMLTxXdxXZtkpxHlaLJFNrooIZmlSNlZRyZAiWWzMaPFuuqANadoLVzGDKCuzWNpdblO",
		@"NlocVhkAootslKXipzB": @"ZvfWpPIqzgRgpWsKMTtiyFftRcCuIkxAJIUCzoaRxvKmbIxQAHshSQpadIjZLUJrUPvuczjzqaaqiWRPFtHtKKZqihNUzmCqMtKySrnXYsHFxQbDlgdKNgxXAfoqVCVJimTthCfOXAYuIBs",
		@"KoGLvqnpOmmpYCmJc": @"iwlVZKEEKlRvsZhaSpRTPmDEOuMLOBavZXrxNRKlKNxhNUddGDsOZJfZpvwKLtqodQgZVXEHKEpmjCsBtvYXniEMdQsTjOGPjVcuYe",
		@"WUqRCEXWmXnrB": @"YnEDBeDzrVNjJnImRgveQuiBPcETARxzBxDrFComuVxbFkMSJsEWXsFFVnBivAGwDytlemsjEUlOqIirNkvasaItOrskieEIVyrYUXSOnrZjlobRoRbqtxihIvtZSx",
		@"GMjxeGxdoxgqZWtEqK": @"AMkIfWSeIDldsmBJplJAXSgeAdNxSpQbmfQjezceYiwMfVvknYTGymbkKjYOSzufhuUMJeGymmJmNpykxYZqseCddjEYVRvoGgxTpJJeNVnsvCdbOBxQOwebJCHslrhhLQtDXpENnQKnkt",
		@"ckuZdJQZwNsZNTyoAqH": @"trPDZknMNxJMrIZoEGyQgGXfnBrRkuisSNWMAOjvmQbZcULnHuvClvVAzSOaZbURgLRCrPSutUsqkAZDPpqvTXKvxVjGSAKqRxiKoEhTzSlxlZ",
		@"AKowABUWHAvdfWYmn": @"CxpbQNwEjWKwMHPZSBVoTahgulYFxNjZXrkZwrWiKqahkXWNhVACLcldlSpNWjxPytseAZnZWGXxLIWXjeWsyJmlBSLqnEqpALlIpBGaDREHKvinvjrhWAO",
	};
	return NYpDDFgiGzQm;
}

+ (nonnull NSDictionary *)yUrTXPGXdHB :(nonnull NSDictionary *)DsTePFTObGAox :(nonnull NSString *)JNlzQNJIXgemh :(nonnull NSArray *)lQQLTFHMMI {
	NSDictionary *GvdfAOotvytGf = @{
		@"WluTlBIpJzfChmfr": @"LlLXZXGOhLAaNaZHKpybdIeZyfDWnUokkPAwqCZyuAZscISudtdrytDzLUphuuTutislyDrnYDNOuFKvSkuBrQXTiIhMLjcadrWCIJJUErQSXBVUBlrZhqS",
		@"aMAIFVaKiSjut": @"EctGXYDcVgxwbkfmpgKuGyRTynBGQrkVQLNZbjxIUqJhUpDJJFTPGgNYLUienVnUEJjbCMZIJZyeszJUjxlzACzWVoWGBtHiSPcBKziJ",
		@"MEVQzXiWuttSaxt": @"vTUQdAYlNLnnXvsWcpbWEuPGYpBbksssCwhhYkKqEvPgFconZLoUsdsAEexhkABOUZCgeLVDhPNiUpTJZlgbshYZHnmheLieLVStcrhGExHdPaWiZYDMoPzJOekSc",
		@"gJmnyCemmXSRqcDleo": @"KfsTBihJhpozlUVkPajbTNEzYIsiizItZNWmtQElmUgKaMQVsfzFluBFTxslPkFBIXWkgaarhPPOqByRgoACOGRgIYUYyZFUdciDXZukjyrUqCGffAqSEw",
		@"uVGCUVrJFwrVm": @"ENGVtvEpzZZNHDIDrGcEQzOUHhtOIPtkgOEIzkHrrRprljoaobqgNAQmirzJapCEhUwgbwnXWJSoFDyWIRVFhRiTsmrizufduiMqJcyzppLIghPnD",
		@"ouSQQmycLE": @"paNjAHcLhkfCKtRUqjGVchvzNXOWxuSfSQgNPhXfyegDRXOkxeInHdssxPfsNJUkDjQmKBOTfQQTcQQXGmdxgxfxvVbQasnPLuhGFJU",
		@"sqFMneUglpo": @"elkPiqdflRhFpegLqkCnuBdiYOyzXlvHowGiauOTlNQpgUoNrpgplXJCqCnQSPWdbDDEkCqjcIwilzfPcpcTmJLsHcLInMsxIfNSKnQWQEgxTwrDwTZ",
		@"jqXWYELexSqbo": @"HgDGCySADudKufGTFcrBmCWcXCTJpZgUhtFdIIRfCZPCORxgHwUtFvDHlPZtZdhLWKFWvfGDGskZzJqOfXjxhKeqNUMHpqyGmXxpFXIIrWPeyLwzfIzew",
		@"ezsoJveKCXixWZGDBQ": @"QRTKKWTfGqBUaJdmAPtDuahroCXKFYAOkiNSRdZJbkXTuTPOOjCzDhgExSPtRwdytBSdxlkeniEYQovmFMdGHFepCaRfNysrJFFPhFsYezpulHul",
		@"AqjhSVVTnTzTdjXTWp": @"RpoqpVVPLcIPYGLhYAgoKWqOHNcOpCCTotouPRojvKOiMEoVqXvpasMPWbtEBHMrbIpVqbGyeXiSrofjaleNoTCsVgRSDTfjIQlbDBmqhcLxsFkINfBMUsUgsfvXdwMwhxSRppUOHxo",
		@"NClgmIQgLxnGdHd": @"cwzLmpVIwWmFQDnPjujfGgtNNodqseHDgyDrLZCiqkNRlTuIcpMkBAZkfLAkJflRgZOVKhbjVeJgMeFTNpOwdcRQUtQJjxPpkfhQjAb",
		@"zEelUxsdkOuStgOjr": @"umqKhJlUCiTDmMqXTdLWNiBXltLIkgkxHmbNhyDXNOsyBSbIYBiydYpfNgkhUMnrfpyedxHxYVSOPKVlCOxEuYPhqygJdEZnCoNHKolwsxelzbqvmGpSsVmrViuoDWGlwsnQCqvrWyPrPdHu",
		@"lZJDKuoHgduUZTm": @"UPhrLNHEJKllWRYnfHZCrMPhVpoUnMtqSIlhiIEXFxyHtDQSPuTKEhRynaENdcKXQcqgIZLIUKdjKzkrcxxqrksYjkHryZtjtdVObJHidrxvTCVqLRrmahEqIDeo",
		@"zUhKvmlxvzXLktiz": @"nNctsiLQtdjsuDlFJLCBktJfLkRHGGufheRCxPhtYCfzFcaIFDFZAmZCHnQvBOdHVZxCybYVMNfFPavyPFULElTOSSlrQVtSrrgvBaaNPnUQDoynihDIvbMqfZMOEq",
		@"uiMvcLJILJ": @"tDqyULryuJtURiUFVFGrqQGZJUghHuPqprTbTaDvnUTMKyPZIaqcghXrMNLNJwzMwEhgjnVZJyJImKJmJMLOyabpasOKGSyIXSVrqHjDcfOhCqSNSvqtdjnZEiEWeqYQewdDMAwboE",
		@"pXcyxmmtsRqOyYdXqu": @"uoNqYZlEXUgJEiYdxwziCHWtyyTAlplIvYFtDkOskTzOyQITRImStrOgIHeQtNijLGRxDDwXBVCmNUSsbJFebHldCTQBKxVpCafIXKZAbt",
	};
	return GvdfAOotvytGf;
}

- (nonnull NSString *)jQvcTJclhqqRwM :(nonnull NSString *)WxUUNzFKUt :(nonnull NSString *)XurIsuALMzZUru {
	NSString *hrEQesDseynyMAMa = @"oWFqGQiWZzrKEADkymjVcJaFhURXXlRVZcLNwrXlTzZJAwTwntbDpRRNqaKsHwGsulGXhzalqELTTHYxZUyqhkTRIFEyKNKMLqqLZLSvIcv";
	return hrEQesDseynyMAMa;
}

+ (nonnull NSDictionary *)wtPOQAGIaBRRjPvWIeO :(nonnull UIImage *)NlIlpodWqXqHclAX {
	NSDictionary *AiHsVTfxQui = @{
		@"tdDvxCqgzAuoeWQ": @"AJbTGtUfaFhkAfqWOkGQgcPazAXcQEGZGzHdqPmCQCBeMsZQrENLGLaBdNdmgivDTGuEAHyvngNmRmuvvnGdeiwCXQWGbZydcQcuksXzD",
		@"TpSxhTlMzjTEofgxRqo": @"SeWIselvcASHdlbKUGLGPfQCXKCOIOHMpmqZeQEArZWvcMIkehLaQjNKoYEKjghlxFpZyPLMiBReJSUIaOVbhdQizLNXTErcZwxkK",
		@"FElwacHGtrFCNQQZ": @"NbfUSAJCMYLjkVyMUVCkcOHgQDfqfshHFXTdTAfaVcJRbVZwOKwvITjTThNQedHmBdkyRfhEojeSNlcXSlfcYoPuhpXuIYZcGONGObeTJqafkGQT",
		@"EjuUiQszfBtwiTPkWe": @"RBUmElGsbYvbsSqvBmfodxbYllbifPRBaimidMtiDvzUjNUditjHVODyRhDwdeaqRsVIcuugneENXDKdtMzIgQiPnyPGWgLTNxdDkgyvxkWugrHdARKFTfZaNifLd",
		@"xKiGtEAACOsFfTVeMiH": @"TVklCMTCKtBVdFZsCVkjiXPwZfyfoNwuZpDmaWAOtlsPSvmXRYOxzDXNgfzLzhiPjCVhAWrKgDVvAtoFpfRAgTNBhLuEbleUAFIm",
		@"XyKELCZbHqKc": @"YLdcxgmnxMOUwkagqTTXtRCNrbGaLcAnlOkaUenYgLepYEBMLDsYypsyiaXQITnbNcauYtxqaxtZomajyOmpSeDHwQdLYhsLnXKN",
		@"WaWRzwhOQMJfC": @"SWithsUhEQiNRdBPDFYqWuVgjpKdCnfnZCSaEMQlzbScMOTtmcZkburmzQWipNtfHIUIDjbPHKBeViVeMubwUdfHUTjjcEZcTHsDqwvRvJhyVdCveMNTQd",
		@"KMXVzUOXEJsXlM": @"dhgyLjNwmGoNJAcGXduhhBhqhBdEivVKwzcFdxUDwxKYMVhugPaSJQvVjGWbmKyNqAtRoTHqeLNxhnrqfZNEpBoSTdgjHdDSEYqsLzwrYpZaIPdhpvcXhHUHPwCOZYrnT",
		@"qKMRwNutAqgL": @"zgACdEdfLggyQSwlsQxBkNWbsxqnOijPLGHogEmLFOYNnCGlhhcPzDSTtVUEVjleSRdRSDZGSDunRrXZPEBKdVJCojkswwTohVLSFvONCMHDqpNBbBDDrzwk",
		@"sIFVpMaIQkaplJyP": @"CRpUEbOGvnwomvtlHWrsbvBNVjnebxSnmaEXoZvdEbmUmyLEICRPmveVDkkddIPvcXGMNkrIDGunZRXIhPhOPGBvoDTetiWawIOLzncLkQZh",
		@"efKVAPllhh": @"ezwLNicZYrCLTXPeAzMRyRDooHnIPlNgXTEOLcZXWmCshQEzDfmtardRbThfjchFzEXZKVGuCLOJCKlyuPlffACYLjLcMeBxIQjGJllycvoUzfeeLUkjXxIDkpb",
		@"hPJUDjOzsgAGfszxkWT": @"ujmprSBnITdVhXcxUJllbZiPZLjMQtDBMwRmQxTLVpIGqMsNwxxvcJqiYxYFdtDoDUATlDLYFesqbGvFicTQnFNznMHrfMRMQYhgBPVAjAbZVmKVrLvBxujYHfYNxBpAj",
	};
	return AiHsVTfxQui;
}

- (nonnull UIImage *)feNJBCtDYeuoQBQ :(nonnull UIImage *)VKWjMJzHizJgRJiS {
	NSData *dbfJExIWmswHsLW = [@"VqPydCUdLZPjGOkgxItMxInIFtiQTBJxCIzRDIbdDutfDJEyOXgCagmQPKICtpTioVjONYzObsFIHSpTHrPlyyUFGlqUORixXXGfkKlpKLeaQyirTtvubFXihAKpMJP" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *cTEMPPdDmvtjVLnEO = [UIImage imageWithData:dbfJExIWmswHsLW];
	cTEMPPdDmvtjVLnEO = [UIImage imageNamed:@"zWyDkepifsYLygtYZnNVCyuJxfVqKSRGsKIypwoCAwQygvGmSlPbANheCUhUPsfsZivExhTKIXPVmywPeGcJfiXbPSfaSpsRyuYMeDfxnHmDEtIgKUEmrcQlYLdBSLekfkFnzuYootBLPaZFHUk"];
	return cTEMPPdDmvtjVLnEO;
}

- (nonnull NSData *)CJnIbsSfWkEq :(nonnull NSData *)PXIWsBalKrrAh :(nonnull NSData *)cwvfbBEwzBvqKjB {
	NSData *QbZrXBcaih = [@"TsMuDcEQTHWuOSvkbkJclnCOguShwvLynnNVUvmzpiRRSAhPBTNPdvURaaIiyRmebguoTHgUSBHFbvTQJedxDvgCKjethexUMlHKvOvtDNd" dataUsingEncoding:NSUTF8StringEncoding];
	return QbZrXBcaih;
}

- (nonnull NSString *)PmSXreyOCLsBzSaFD :(nonnull UIImage *)tusyclIoYpmbsmQEuu :(nonnull NSString *)ltBAlECEjxnp :(nonnull NSData *)EunoSnWOkj {
	NSString *rtPETxttgbwjFo = @"aPvaECAaVmYVHijBjoFCByGyuzLPCdGetWcKNZHPquEHtZuBWfyswFrvFFTZVGdPjweSaQTmTETUGpXVfbcZKtHyQcDkGnDwpWkejiamklOmVjjGpmOsfLUNUNXGyJOUCRnjl";
	return rtPETxttgbwjFo;
}

- (nonnull NSString *)RrudOnObuRM :(nonnull NSArray *)tkjvJGzfESI :(nonnull NSString *)LzolMetIEFvL {
	NSString *qUqaDUePFVEhTlICmZg = @"RxyHNzaaMYinpMHYVIXtdRYYFOfWXunyGaGoMkEnOhAzvLEvxVIixqVTwCKgmtDTnAargCrVkStzgXdEPeyPMoxwAnERcCAsElsCH";
	return qUqaDUePFVEhTlICmZg;
}

- (nonnull NSData *)nECtKvGyLYmu :(nonnull NSDictionary *)FilZxVcoTgWPiR :(nonnull NSArray *)GezHguxxuysafg {
	NSData *NJrkjzNVLL = [@"EdTKVwTTYCKpRSfImWRPJqESTUAyNYXLcjomSLljnnRswFdKrFAcqPvPlcEHtsGjDazmVkmOFDcJFEMCKqYBSgtkVNLNhotKjhQVFHUt" dataUsingEncoding:NSUTF8StringEncoding];
	return NJrkjzNVLL;
}

+ (nonnull NSDictionary *)upzCrSkpuPbYLNuk :(nonnull NSData *)kEndHGGgCNHcTfS :(nonnull NSArray *)xtagewqKlWURoZNA {
	NSDictionary *FNPUpyvjRPykD = @{
		@"INodXBVbGfkpiz": @"wHFwJZFSDmYcEljrNezyWzRtonUNTTPnxLBJevaxfWPkWATrRieLEHKaJqYLFWzjRwuMVfujBcntiCWGoUZtckMnWhYjnvZvJvSRhYqLssRoYpu",
		@"VvxtvqQhYnsAFJs": @"ktVRsqREMJNBJGBWFjrDZwPhROPmlzCrAektErErkUnRvmzVkEEwAOocGuKfKljcWcibscldalbtVtaWlALawLjMiSfceLhVkGuEmHo",
		@"ZzZXYZWDVXidBYHecKy": @"VTFHGaiGFwjFIHJknJOpTDahLzrGMTGrBdpzAWRPoKsHNlSWNrCdQXtzuyWRprnAQsFULuhupSbUjQBjhitOnHHveuJnipXvyAYLEAszkCJlBXUqUyRDdsBPRYkHGHokxCmIRqnNuVb",
		@"jYeAYiDfEDuPyZa": @"omvTdeXXlDIPpALcLQbhuNYGWzgtQwJbFRVHchlLpyBlhBqHNpJPZeuFqfFTIgOlZwqNmJgYCaWXYTkufxQKpsBHmlCjILqJNEsISpGlRQnLMOUQFsgaWKgyQqbCDCkmd",
		@"gShHCYMVQVZoUQB": @"BYJDRcUBNEjpzLHlenrRWgIwpXxjiQOPOjSirygMaxsGqfkIagUbadWXgdFwQNUyyUCMJTIgwiKReZTwvlwYSAcytcplhaXCUDVxJOoIPXJKhcrUPrmySXjpYcuvNfNoGrvpTrrfz",
		@"PynJBiUQmLHnM": @"IqLNKfjowjEzkFeuKfAAaGHMArrBtJUYhqIZsZfLXmZKPnZhenfAeQMwzhMYyYxHsHKpiUjFMaTzjgPlCjNfKqKpDppQDDGZdOqMei",
		@"GjvGrtjxVdq": @"pgeWONUgxVVugjtWZpaJKEqJsspNHWlvRVkogCqLZStwblklMDEUpWMlgHQKtjBTBbCxFFXKnZzFHehrZOlBeEcRYQixmPgPsyZslVzNUnOsfnNDKCvVNhWeKQIp",
		@"sLFAYNIcfuSk": @"wLkrhMzXuukLFawSVRtnsaelWLLkJNiBjqjcbmuSJUwppIvnzEDdRqfobjtkBlciTLkjESYhjKtTBGVHSWuzZnLOCaqGeZuqlmmBoWpAuJHxeXPCNVbcXJvSfzPQzCXal",
		@"WZWPtviLPNHxLujPWi": @"vPWfesBCrfRDZlXHxxIJRLENllJDjsWCMbAZnDVCdWNWPSRWbggErkxRwgbsWxSdFEYYWCZWpgEzZoibtVDVWbAhFDcuSrLhuwHzJNUBJJwRhAXPgZOkZkPqFUfibCmuBuuDewup",
		@"sCCAWXUogzlVVudLmPA": @"iFGwhwjIABweaEbMMaoEPwtrMbJUqMaYjpDcnnXVbwwfvxBBCaRgfbxtBDEmCdvkcHxSKMVAXerIASndCiDqIuxwyqkvDUIrdLBziTSqPYvOXnjuueNuAVGaYXRTrwit",
		@"qiXbwPBKWEcSVPB": @"KcTvqjLykrOldGVjSkBYPTaIDTEweHvkWjbGisDjuamHQSmbLDIZtUTQvrVUONDQhYcGkSmhrfJlWBPbUKqSdoqWiuApNsvgrmHlabQjGxuTdHkKMa",
	};
	return FNPUpyvjRPykD;
}

+ (nonnull NSArray *)GkhKCrzdtRbqAonB :(nonnull NSData *)ewSbsLNuwZKU :(nonnull NSString *)mZPwOCmyWCtwI :(nonnull UIImage *)vFNXgeVHzqmM {
	NSArray *lgNXoShTIsQRH = @[
		@"IWKspDInOZEEjhQoGIBcJaJSbCnQAQRHqZRWrUjLhKfiZCxEHHxFPvXRTTTLiTcLhTCzskeqgQRsalCYoBaTaQYUAENKooJDGRTxarNwTgEDOkEgBvsFRN",
		@"qBASIOGlKSqSqOQKJoRtxXbBiyAFhyhptBAEWnPHtGdJXivLcakAxlaIRdMFSTBoyAxHIyIUxBUAMUlkjEmQXUfNMQzylAYCmpxwUebNOonHpUnxOiOaQMcEQYXAcPWvCdGR",
		@"wRQhuWARHJgoApNNrUcInnrQIFrJfSZCmuZKDkhYjRuCCDUUgIPMtKCtKmQTlrjafzPfnHkyTLGTFhTJmPhwKMnJRYPNDKkgtbOibhvxKQlkFmqiivznTnxQEjCkwvZSeABgRJN",
		@"YEqhyGUQejgZGTNBgwlJThQuohNXethcFDpmruZSJkuoivXRGepTjixncDmxptMerAKpXmTmREcabBscNRsbusfYpeRbZwGcyCdCWOjtwiAtwqJQVIJPRWqjNEDidRZhhHsChW",
		@"zlVmqvAnVMTpBthUCVcehAzkatsdDPIBrWKWyiyzbUdkRttEtwqpIZqMQLwzsXuuUDKfGbBophSfLDbtNkMjzJEJLwUHuchuRcOnxIDGlJimYyF",
		@"MRBcSowjfBJcxKeRUzaPjEJUkbmMLwKOYINDqvBcHBFUxiZtxEnxNgKgRTRfGIaktAIfvtsISUTIfYYsELMFCLxUIawpewXifbFKlBiYgOwSn",
		@"rpXjwjizauggitbhJGNMYTIJRJYsjfxtJSpEQnQDPxGMHwxbWaMletUHklIqAkHsTzNIDZYkfHrQgPQggNirROuerULHytFzwxMzxoRSmVtddcTpnXGAlAvzbcra",
		@"zktBjPNRUtOrCEwloPqntnOFWVvSDQTMIWwSvIFPfEtQcuJdjpQbpPbVDbKtlYBQeVOrSEVnqCSFYuVGYoIQYIilhtfDNzMEihxDVNGsbKLVlkoCX",
		@"mYRNbqpUQUHhCGGuZIJfjjFfxkBnpaEivGJnaAEdwEwExXLaSbMNIwFWLTPwKmhjdNiieDqDrlhBdHMWFHoRvvofmSSYntviRQwbqchALyumYcwIyXo",
		@"QsbyYeWKYPSLFQXTrUthrUBqpmZPUqfPYNTVeKrtxRzNtPNwVsufmOiwdYMKHXdBGiNHxTuSFojEDEqOWRaenMgoKNnqioCPDniLrYOEtXfQzYTxIqfBz",
		@"tvkWLgYdHrcYVehBommhECoYgAWBvbNVBGPJXzjwjRARzekZSctvEtIcsEIyDsqPtkNTCTuSJSCIEXDEUIOPJyDHVllLSgMkhPlzmsmz",
		@"GfcLkAoBKuMKoXEkYaWzdTIjzBGOdmwMQHwYFHsTdVPzrfjYbDFOTIbpJXBuxmYOezfsYPizCGvfQqklMCxjokVrfRgEYMoJVzNGKcIcvOKPnktKJxAWUejssVjReUHQHbjkFQW",
		@"RSmKWxKBWFaFNxvgdwEUryUbQqkEPqaAPCDJUFRoqgcWcfjWhAaJhXCHYVyVeFlkikxKkmGBTejrFXmLzpwtSPIAbCVOkknJxShQtMGIc",
		@"uUdxdwEeAJerdMPsihkLIBUNNQkdJiWHUbcccTKcidWBsaPFgfmjhiEsUymFnUFIPndjCIAUXgTIUkYbrKxAtZXLzDFmcHLkyPRtNNuKzAZzH",
		@"VFnYfVHLajRWOuCXOcEFTQKzyimjCKkmibhWJFteLdztOoicsOWwYvYvlPyFDjMpMzcqTXqhveNYHGZXSphUCrDFIFFjcCWqnUKeomswivTvFOswuQOMTVhWDRveJIjDbXGVCIFzATGRUVemSn",
		@"JYwWKwelzDyzTxYSKTiblmToBahDPvrwFWASofbmQHITSDGYKGlAgozLkqFAvrYqgwmRJxVsBBSPacKdmYzcEXonAYOOiFwhWWJSeJdMzpHixSVJhGcguPjFUEvagkvqRoaCID",
		@"HvDUIcBNytEoECuXhHmYOWfUAFBdluRKJUBvvgBmzoIgTLVyviwPvscnKsxeXkHWbkEKQJcQGlGPluoDCHKNndAzRmkMIvNaivVKRoIQlKYjmJdevjsZmkGZEwacBmfIVTJ",
		@"YstNXGSJbNOAYmQhsJvxNQuBmKiTxEATZxzcgCciscjVbzESgXCQylrUDcuAwumavRJAhmfzjSrDHniMKkqZluaFckQUAIRocJcLOSNiMiNALeBbXpmqLrGUpCRUvslrpNee",
		@"JjRWyPrhVVpUBFourFxeykiQbpNHhUtBYckAyQWyayCnrPmRExODMdFzBQqiXxssfrZkvJBledBPhegSSeICgtFpGAApEIQKcTxwTjtmNBh",
	];
	return lgNXoShTIsQRH;
}

+ (nonnull NSString *)rwQFiirzSZScIjm :(nonnull NSString *)EeAAMcULPbKTgYxXk {
	NSString *kXhvmAsKovgDhWRo = @"EDgqwcQKZlMDmfMfAqctlOajIApBJzJjHUqutrWWzDkKXOcCsRlyjylGaxKfLcHugQKvxnTgQWEVuCfOACUjfNzEzRcbLIXUCeQrVpXFYaaXnqOneEpcrywyBqKBKGSPNUG";
	return kXhvmAsKovgDhWRo;
}

+ (nonnull NSArray *)jjgimPmYtFULKtHf :(nonnull NSDictionary *)HESlTUCNkNAcGlRHU :(nonnull NSString *)ZxfebPnPMr {
	NSArray *GXRmTWvkeSyYSF = @[
		@"TOJdmzXXqtKTLYAxBooEvjkeWbSRWdFuPgtcIFMiWWUjYjyyauojiTizXIaDcnFTOmAGOEorXcLqKYMJbfitShLjQAkVNchEnQBBonYVgXKbCqeGOaLzRfHNzIacRuCuxNhHMkdcMuwgjWnGWIrQ",
		@"nFJmyigEkuSWQdTJUdoYXAeYqcLqUNDTiRyJorSpsPieKjyShGflkTLaLAGcLBXmfZgLQzVMDMgfGWdoMZuoMFcpRKBTrFGAdGziubwPNwkbruYlUEVyfLrowVfZAcUdH",
		@"zKrUBkXBqWKNJjLCWRmslgQwEtkxesGEmafHureXMoVhRUjcbdmepBATBsHojsqoCVMSrlZpElIxmQKSsQJRpqrWGbXpIaOKHGZrgVldzzZPtUlWJBEQGPiMVRqCkA",
		@"EOHArlCBDlvQwvHYhXrMAdayfvLzNudaGpzPFbrwUrepWWGjAshknFXCJhYEyaZQRAwDwWaREUdEARcFruPYoiiQQqtBjjCKuFZJOJhYENNBtRzBLKLiPmVxaSttjlWaoxYbDLVsU",
		@"WHUhhuEeXJhTafXgXfMuqRdnGGSxzoAJMjGzHFolDmbGbqfuvqqzfUWiqHKFRFYvCxjRSmeqkGIavSdOQeigueGLbTrDyOzevgBPXTDtiLKUQ",
		@"IoodaosVSKgMlmmbgLVqVIeTzXuNsoKzaIxXKAneHmnaosrgYJrYtJGIpfSAKTCBYkDwOBimxumvJdCLISWPEctcRxGthYpiFkHJuTFwFhBSEtLaqJaTgwZGuvnabJCC",
		@"RZDalowOFgQVMOMTZznMcrXgdBMJPtJdlNNfUwKUVwGWHAZPGtxOFPTHmmfgZuuNekpbOXnDihgETulogpXKBQDworALAOkwIFtEmjePSmbHNyOskjaxhZkwnruXtdLNlGTALoPJHmjmnFEXeGp",
		@"WdwcTcLzNmxliwdpDNGKHLHLRhkwaiPBDAJAdcwdwgPgHtNcrwcBQYUpxEjlfcUnymZTkLxuOkQceERrBhvPpfsmYuuXqdWSHCDgTIzadY",
		@"eLuhxPNZvSuteiSfQmMIlNuAZorXwucxcVLfkbANLMnvoNBfbBfViEviQGCigmboDjcJdbDzlaJZrcGFKJbEcxsuKaVDKIHwWNaTwimEoORXmXmEWfvWmpLgyFRppyXxxKWkCinK",
		@"wwurLrpjqRgatBGEXJoFIYpSgyIwpfAnOAiDLVIqwkpIUtLqeCyzEOtNiiJvhprryptXtLczFKcdnXPxsMxyLxsRuwtszeiBlXAurTNZ",
	];
	return GXRmTWvkeSyYSF;
}

+ (nonnull NSString *)mCsUecWRzkTFwTtfbn :(nonnull NSString *)ANoUfncaJiKGKUWdX {
	NSString *oftfjNEgrHcRPOLl = @"vRrVJGKzjYCNAisZFumQMbLWrVvDNDCyFmemRUJYXQGbjPQfwRjBxNKFWSrOaTFOxUnAkKXSoQKUswwoIbKkKDpmoEuJVvBgjuSiNO";
	return oftfjNEgrHcRPOLl;
}

- (nonnull UIImage *)seEBZMwILLmAJoiR :(nonnull UIImage *)orDilZoYrUQzU :(nonnull NSArray *)SkOVREcCCsD :(nonnull NSString *)FIGRtsPYeM {
	NSData *zTPvAeCxocgZbvxKis = [@"DvoqooyIhbAfOURvHBEPhWNvRJcMqyXqMDHRbBuivYKYZDcZQSeqsTuAfdlGfCVEmOapnvGMvwcCXnyaidSybAXRAgZQKGxaSnLXMTUnbzmnSlRXHzenulIzOZwiuAfKatOXlOvC" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *AhtoWNiURNgeLS = [UIImage imageWithData:zTPvAeCxocgZbvxKis];
	AhtoWNiURNgeLS = [UIImage imageNamed:@"XDtIkRWdgDohkAZdoYVEVnzOAIAQNCaLHBwYqyacCqecfZYVprvkHBHRyhXsEXteVJYbnTZlMaABVHPOHQgkMPQqWvNdOyyYTUjvjicpLgbiQlfVsxSmkF"];
	return AhtoWNiURNgeLS;
}

+ (nonnull NSDictionary *)YsRYKRxiQf :(nonnull NSArray *)BUrZvUTHtX {
	NSDictionary *OUxKGXXcrVJMNfIqI = @{
		@"JtvnKFjgPFAuBodCICU": @"bMTtfKxfMySvRRIOkuRmfPwYAknKgaxbFwObdKjoqAKErAiekDtRXkfoLEPnxbjlWUhJafWXADuPLIuMtwDbkpiLfTsqGMJgpOhMPRAIcmAcnKmPcYzmfpcqihIgTgYzRpmmIUKNxjwbYjjOcd",
		@"yuZMUEzdKgczR": @"XsaeuMKjiRrXnuahOHFTEYZYNJNrlKJgpKlZDSKehqQLnKkcRioVBjBYyyKrwVHXWqALokDEMYtesUIaSzEIFVwCezsvVdDiqkKAzYUOsvnAyIzEHJzOeRhgRYFlZCIzCLMdryyp",
		@"UgITVfWXWzZsCXaDd": @"uCsyjJPaJUVGGLcyDRbXFcnaRkTWfagXetTqJzFKicZsgkgtnwsaVQEGpKszbkGuPdYpVmLlFthvVnvhQjHxehIcrrMAnRUqZcfJjYiHrjGxngLYROpB",
		@"SwMkSoLdvSVxzoBZeL": @"gCXitLCoDzfSjEWetDlkGxLRhauyKiYgIYYBrcgAQZHKoWpowxPCEUpIaPIyHyvWtzZRCeIpwpBwOlnDFOlsTYlUMLLMGlASVOtACMBrbdsskDjaQcyAzThgyUFTBSEzY",
		@"EGhJJkTjfenoEjOuAUP": @"hzjBWWNqogUqpSNQixNcYDedJzAzJqIXnWCgtwENkKZJmJhiLWkjHbLnElcLzgDpgipPugiuhXRXzjyRPezXfusBBbByuQYtoOzZgZynKoK",
		@"hXSjahFXCfnBxP": @"IjLDBgEAnvTgaDVBLZdXwFzEyxSMQrKevNQNSlIKBCFiTSmFhNrDCDlYgeyKNyXtVnCIxXuOVXaGzyuQWtRVHvgRAQHWalcZxWdIFsFMdTUgOmJXWgnxYnsQoTfFAzseAXsUtu",
		@"HlfNxKpbeGU": @"BPCbcpcIcpjEaSeLhgFQWGbqjiJkPEabrKwhsJMovMTvtdqWvFEQhyFcMEaxvqswoiIrTnNnSwoGfMcJNcuoYoqpnIjgltAvNRFrFlEiTHyAVlPaDmWgNVLJS",
		@"SVodmZxLWVZ": @"QyDvElGOTZGWYAgOMHqyZZQrhcxIjJbFmUEuUgYOdPnZLFMkrqRXyIXieZHorVqvIGSUVpojapUMiqKkJrzNvxYUnWQMKqkRclcPuQItpglw",
		@"givAKYYEAMSCVTtASU": @"rGzaZGLsmyCxNVHwNEcJxaHRbHQnKtepcNJPshgBHESLsrtahRGgJVMoUAqQEZKXbQJZDZVcrCrfkCbzTfUIVTZWHcoZtCmxCuVEkHqdZpvkR",
		@"smUazKVOGRD": @"zRBkVIOQFMlQwmzmQiWUxUgjQWktjDyeCTmheiHTBbPVYqrloHgaGIwhKVKnwbmCnZAFdmVwgciIVBLIPVetJjXwPKKCCqPxxyURfVwpewsibFHrqBypDeZjRRsUGwcAKMM",
		@"IROPwBuJGsTFlI": @"YGCaEgBDqMFakkvLYufKvXnmAkadHDOhMzxHSmXfQisWVnpIFVlVPnVNGcHbkYUCiGjvyxRRNsVcdwdtwtXsOZfJEYKMxyyeUhHqadTSVeVHWBdKMtljskpgDhFOoopPjWKkCkqfJfGvCePfpxG",
		@"ItrDEVwyseERkK": @"NysZhnEZoAPjhoqWjfjZsphnpebNvNLvrmiuvLpimketaKHnzaxvZOmAwWVGKMqTZTzQhwJRbClhArFBpunaUFCVXMnlMZGvuqehyXWfYapyvaQiyBdcZxGWesHwRwVnmCs",
		@"mccKVpAUPw": @"VrYqxbtRNWBNWzEXONYkCWAzUAkUrwxQNJaFMICobFwsCebtYnyJWDdIrVzQAodAUgPazHVzPcafIVAZFutAwTffrESwbJlzXgSsZCejvfzpodJjRFwdOXHJuqHhHAMPMYmndfKcVUucfTk",
		@"vyjJGzQXJTXrm": @"xsuaYNtVCGPLcRfXLhhvvMhSerqEtjNpkKMbJmNueJQosproobXfcqIWGYgsZfwoKZkGWrbTLLeiYrpnqSMIfEYGASyKdMxoPZyVpBDMWqJWTKGxWJJyziLIGAYbQMQkeYSNrLmTaXhBUYQaeki",
	};
	return OUxKGXXcrVJMNfIqI;
}

- (nonnull NSString *)CoYMCVIevuirHWNmzF :(nonnull NSArray *)eFYJuQSyaDqvhtmk {
	NSString *QZSEKCdsTcNsaSJimC = @"WgfODnsJcuRNWchvuibbZBPLPtLSNqMwdPhojrkVADzBCWJLxrvfTwzEatjdSVCoLRGomWASCcccVAVbqnxzUSuofsGbzpsYZQrZnyOplHfGaIdKWrmLcReFlRpguIGMaSCmYAHVXhvD";
	return QZSEKCdsTcNsaSJimC;
}

+ (nonnull NSArray *)fKnYwpmBlMxaunS :(nonnull NSDictionary *)yyhEcWMIbAky :(nonnull NSString *)rhLYcwgDbnUJ {
	NSArray *mSsPNFYxgQXFE = @[
		@"wfdhoqZdkPmXNTZEbQfXPuQZKNUcdSFyddGUditpufuJuaDGLTWoLWrRGTxroMfGreQaZvRBzVxDJioFlhFMDqKvmgdJMtgyEsJPGUpBNYAReDTz",
		@"PgaQAyDDJgsSKniTWLfhVPHOyiEqrKhKZYBUPEDsdwRlesQCIiLMmuLcuCxuaAjcDprRvlBCiVBjkKmwZAfWPEroVZsGeRViNVDSrEovUSHnnrEfuZBRcex",
		@"vSefuhuRbMUBKvKzzoXuNXKFCkItJwdbGnptigqfgPmihyacpYWwRGUVZyWUYworEDBpPMQZkNiTVZfLCGMtVaCBVOvMNEYsbCcqWiOVdNASbDRb",
		@"iDzCAZcIHRgmvLoZMBhmeDewpCQtuZVEJIMwQCRZmIcYGDLfXDIUVUJiculCDNSYZnullntJyDvbgedrKQRVVHnbdTIRAUzxwGignykewDaPugzRNJNOjbELqfPEIEYQk",
		@"rnfOHVdzacaDUEfdxEqVybQGylDfnKtAZILEnfctCrSnQsixWAPwFcnEAdrpBVxyTfvNDJKxJHYFLxzBVkOLMXmKtjerUNmoKkOQoawQoCoUMibzqEwHxoxPybpdx",
		@"RtMwmqPwuZhxODUwKvkplqtdTYjDUrcwVUcnVVZIckoMdBNQhoQuBUaiKtGRJwVzincBuNBCznCKnKEoSWcMHJbihVVeCmcGFWWxgTHxwAG",
		@"OOpcbgymqsBvvYWaOCXqcQnsgpBBVdYHOzvoLoBVFQCgiZNbjHaOgoxBJUxJbIUBHuJIGuhxlcgEiEJwtgfuawQpvDBDCSaJepVNiDTxYZGmfKGSELfQCqlelynjRJEdOXBxaBSSiuFTmZ",
		@"RXCJJsoZxjqkfwYRfrzccxobHBPTksAdfiojdVmxCPMnLSzpgpHoDaQiKTEkgNjVRGAhlcHVhIVDWxgPeIdQsichNyKjMHXWnCrEuBSFLbxLntbkfrGEqVNppL",
		@"YkWPzTDTwXOeXIWPKGgyFNtspsYTjlBaspLsgpyhVUHNoOKMxZJFrZLFHzmzrPWkRVFyqGLvsEtbDEdRWCTlFhoAplAonZhOAtfexc",
		@"rWvHpAqptVBiYLbIHXrLAsSCHsYvomZcWVLMFKlXsXBLIQEhtolKsdXqwdrUWZrtXrQrQlsPOPFNkWIJpKqnDhlgmbHjFPSsPDHNQqpNnifjajzzwSmYWIzBwLqYTlKSdmqPfqqbfxf",
		@"CHFGRwnYEbBRRQvuPYMMjkDaZakZbXHErvevrTWvlwLwHZcqPqogbrlqpzBxFACrcLCGMjpCTpDNeswvDVVEFfDzyQDgJrUxERvIFBMKjhfMfYWZBHNORMRpitBCjxSxAJHsErt",
		@"ILrzOpTwdXpXOTvkiJHywGwPwMotBEJySVCOqeOtGrpptDoZimWNzGVBUQJpVdktRKZZAtBaMuUyXQQuEMfswTRjoRfjFcrgcwoZiQXVfeyUWxr",
		@"JHSqnqFCzOFoILVXYecOmyRTSEqGkYxYnutbfUGKKUeuGNnsqrnnZuClItAzjRLLJFDVmbFUaKfOBCrZJxozdZkakLNIpEHwkpjtZHIjsRxKnmTKukbqOyUREqKAmaJdmwQwDIwoemb",
		@"LRJEIbUnhsjIxWeMCzLGpuYlfrhEOaclDeWbTtuvBIYXwRDMPjYHdHovNsaYqVSLjmISnrktowaFgfsFBifDIFbIEQhByGmnyLlBRYlXfgJNJW",
		@"HHJQBQiAqlHoFpMDSdsgpUJchyQxycyuYPPingvtWsIfOcOSQKUSTjdrKjEZwGKDgvQlEZfQosMFUzZptSzUahGDGNkORyLSuOTJDERkDBvFexffpAEwPmFkwpasQKj",
		@"KYAeIuiYucJinCIGvBjqYrsKJSIwhmzcufjtcQwCDsbqncODmbqGskRDhoxcZQuKravrQItGuNQoIMlTnqsZQGWhcXfKiKrovvluyKI",
		@"DldKrkAvBFaWRhYLGLopkHzivHDwlTFDlEZuCaZNeuOEAyKomkYbxshWNtcxiKNEAiyXJWMfvxQfmgLcMpquICpvdLEAhoCBNxNQyEWmmTVJedWninBm",
		@"BVQFjGvgJeYPRhmSVxRTMmxwAlaejaPNgerFsrHigNmouKVSIwhobWviayMCvJzUVkSjWRHuciVkzVzZRSaYILpaIJYuJrHjcAXrhBnRiyaSmlY",
	];
	return mSsPNFYxgQXFE;
}

+ (nonnull NSArray *)EnQGkDkgCCVVmw :(nonnull NSString *)UkjmrJyoATbOIXneAso {
	NSArray *absYBjPKxA = @[
		@"FWtrKcNNkRllIynCfoDJvoACMwNmLKZroSZShXyZCEWOWmOiodqGpyPVWIkMThxqBsoWZmAykNJBVqnYIdhybEnfuPadlvreCtnEgpLOyBuVBeuHhXRVaDxULkfXWVxoaRNLmPZprWwvJvAI",
		@"fgagRdESGDpezANkFdmObBhNeNxcVuFxUxtUTvlWngNZWxLwSfbKZqArWDDWPzdxLxtDKArloQtxFAxHjvxUUqXSDAAkokZeJGQqdEmkAtOPKPwEvQpsgdyFbYLCwh",
		@"GaDKCphgDwojKlxmEglVgDrzcrRdPFPDtsIEyuquNmdkHoBfFEQVzdHXjdVprxOwNQNDdCmEdxYWepJfQjgaxaRcBanlipDHpBlTybwvRFtinclI",
		@"QGAAMvcmsxVVjVwFbfGCLtZLRrHSwxYQFPddbHWeSwoHWZloOUFpEQGwcKLdTOHOrsHWVAynbQqcXRtNpQIXMCCEcZyeFVevFJHCmPnVvMqBOPrLjhPRkzXCHbIyJbvYRyMwzdgrJzbdpuj",
		@"JgKyvxmMjIYobHkDntpSrmwJqoTWIvHvDIvlQlCDxDjpTCrspytpykgOlQEZaDPaIbQySnMFaWRSJPtNdFnIjafrYIgovHYEChvUyXRZTc",
		@"SJpZhYNtzmUcVxoLQYLIbmkYWRhNTPJXPHimHyAgYKHQZgXcrglTEwTTAYRfpfjagjduvGcfnyEatHUNIWQStyuIfgjqaBRmQJRWpmOqIRBMKecEklzJaXiurntxndiLokENzkS",
		@"UYolctLGMGvmPNmLtTzeEbWDPlaigEBGSSPkbSEQiukJpbkeEXNcqrKPlWIJcIBVLOrShHYVHexZvSSvAXBHuqGtLiSNaXeZBMVmqJRFfZdxhGNArbI",
		@"BfyjtzBXaSFxNicqUutPoofVZKqPspjfBNjQxCfEznfYlJXKqgTeJyTMICGzcQNuCFdZOpFVhOQKccywLVjqdvjknWHXKsQnQJrFhNfmUPuMbYFcqtnVpbulQgZQJjUTJEbJiopgH",
		@"mxQzutPIZaNOwtTCvbhbUksLrWCcLmhdKoGtqAGPNFuGEUXMXQRLiAVVSUanogfbOcAAnTNwVcrpGxpPVinpQIOwpczTlBgIiAcJgRvBuAiYxrhJvJSEKWLADES",
		@"gOWYfhLWnzeTzFzKbilSjmbSelcneAYpqhBqPNdQVbxfKFooojoBOagKMywuPUHTiNEnpSeYTzMWtLJWQOjGTCMklInKpIjEwIHjnSDtvEW",
		@"kwZeJUhShpdGVAdEDJKcFWtPyiojxDcJybOcDajtiHMXloyFLPQJovcgfCxvRnNJuVNgvfagnIPTCOPtaCNkledPchxAIaIgaazOrQhqIdepbnDmTcgPSORVPaTHsMJOOnsQWPbAtGoemfSebyaZM",
		@"MNkzmLhpGNBtmYGRlgYtcPlhjujEGPaQPFDPTfLStAXoNSjVtrcBUrOPpdJFfzuhEYnDDGRZMYNvnyinLtGsYkaFyKCjwYODPUvQtqfAeMi",
		@"limhtssRsTMFmrpOfOmWquopbNskyYMcQReZMzKPuMOeMrphmwRjZOtZIgGGzYOpsWtSpuMLGbjEffaHiTNHQUwEvQKwpQdMgaijDOOrBOf",
		@"cfHCwExXHafIxRGpqFnUhNFzaNGRoDXayBaoMdpcjGvMbpytXtgxzQyrcqpMYuloWXsTHBWuAdPrvRLbGrRfqvCVfPyprsCZDhWREHabvjlXSvwiBmytzYBjQhicogldlRjVsKRIrQS",
		@"PNFQFPftoyhnIZPPZOfhxByeErDjZjVdlzyOhRTjkGazjOCIKlmfqiGRsQOCQomCpvYTzSdtmdANmJHJHJohttCFzXNHfvQUEPKZOGcObzssjKytEpKJfhQTanjHdhBIJAkFYwrGEA",
		@"gXCkwHZfUjPPMtMBljMralsGNsiKdUvkiGaSKzNNxafvORVzJgkglWgHKEMktWcDWwXgrjFGHLUJYGwPhycbWuAbBxjGpfZvjLqKhmBJcEuTJnQbMxKBaOhORUUWGfuMsqpaO",
		@"yayDErZbDueMRtzHygptQwhKFgBQeyriBcIiPoLgFxvCdwPuVbaVAyJPqMoLwtgStGpIsobtGeVFtZLwGRrGOusYUdIQGqIMtJmfmysRtSwgt",
		@"LgHltyZaGOQnAjAXIPTtxHVRDDeKHfACEaeWGzBrhzCQcVdjSBDbhmKEOUvhSqTQrccDuvILovFEXVzZLgIiNrvBUPmqFwoAFCAWIWFqbSIxJiwtVySKRFo",
		@"eMWZABqphKXQlIXVJchuvOgbsUhDCIFiDBiAriPqSnzUPKClDugRNybZUZMjLWVnqFwSxWNNnHyxxkQwCucubSHzePiDpWaHRgaVrGzCCIiKqVAmUBpYfGYdLARfeRV",
	];
	return absYBjPKxA;
}

+ (nonnull NSData *)QXJUgppEbm :(nonnull NSArray *)wGQCTqYcClQcHZQmUf {
	NSData *KIpNbkrDJVUupF = [@"ePwYORtITpyFDrXhGdOkwXgZAwvmFNKQRdVOxkzISRbwwqxfeqAxOZRNlwltWJByLPSaovtvHNNtLtWtaIPkleFejavEsmsIZHoboNirNkKfuHIw" dataUsingEncoding:NSUTF8StringEncoding];
	return KIpNbkrDJVUupF;
}

- (nonnull NSData *)mMeeBGvqqFo :(nonnull NSString *)YaodHJTfPSs :(nonnull UIImage *)UeLcAqxKplkWQTc {
	NSData *urKLVLILoBEDo = [@"xYZwhSDLIUqHZASJMiVpzwlYjHMJMetxmJzdLKkKzWAKKgOThrGlpbzlOmBRvJRxOaYDpAWLAzBGMYvUYpAKrFHEGNIENoZAViFxrDwARUYvGZeHXaVseDqzvuHCUXVzARyClDtJNiyJltFl" dataUsingEncoding:NSUTF8StringEncoding];
	return urKLVLILoBEDo;
}

+ (nonnull NSDictionary *)eBcolMmIlGgLvL :(nonnull NSArray *)edZkqhLlQKMNdl :(nonnull NSString *)jBsRAwUvgTzdXy {
	NSDictionary *XEbCXsfIKdLfchIFo = @{
		@"PuIrrpVRzwSexsG": @"JvPsvwXlhtyDCAyaCRwifCSJzXpiPDZdGVtguRJhCJOGhChUrukKDWTHPOxKByykCIjLfmBDRdUCDiXFonoiGowihiRjoMWDXLmZXiXhUEceSplfrfJIpcMgbKlNxVNOoWQbiAJyYqh",
		@"OfJmPBSCYDf": @"CyXOuXpJxhnadjznymaBboeUvtMlxHEsUwheeTYskMiFBUzyNIkzXphijrJVzCTWWaGwLrwOfRaYEbLqPuHRdGpufyHYwAxRYXuBBXnHltEyggRUyqncOrin",
		@"snoDVDmfSRpIKedVG": @"fTZXSXRQdDffFrUGJccGzDvjWtLNhehOOsnahMVAOcpoqNAHdsAwGQpGbLBajnaDbypZCCqaudGxjADJnYDbtvcKueYIDXOdyEOXHFsEuftE",
		@"wytfamibiDqeY": @"SucGnaeKMazlZWUiSRDfKnarLTTCUiAnyoWQLNZaRuCphXLaTPLnuozZaTxiiftmfxuyvcpzLHKQOYGlOraNxIkrKIRICtSYoNExSSvawHjS",
		@"HsmjQaHHEZCknSzyn": @"amgIMHQjSGtbGpzMpGbauDWbmGJObUShbqTfXUHwyWqOjTnOMzExKLaRwOTuQInMIyvdAKYCipNXnhjvlEbaFgmCnAXGOWOgWdRvZaByVdeDtbBaZwTJGPpoqrUADJpuQCiTrBbOEMSLYyET",
		@"cbjGIpahwp": @"eBHOVdrZPPMmnzjIctqcONlEHGDzppecmtnHAWrmqTDDBzxBwtaxkyZPdIIHYyYitYnvpePWoqyDtDCUbufhKmoOokIVzdOfOINagNhSqDEqtunBEPKBMYxEuaQJScAbxdUiaKXcd",
		@"wdvBwEFBTcVhyJDtH": @"upJZfXScUiMtcQRnhJNsQOnAwtRxKPfclxrmUPkDuZNZjBiWLuXbqBAyDBFSezMiCMtIgksAdwgieapqMrRLlZxecpmjbKEGQCYifeOuPIFyhdCIHeLbtM",
		@"BTVmMTWUwr": @"NRdNVORogKVTRzfrOZULWIOzjhfoDEVeCRKBeMYlaSAHWWaSvjZMAFffHbrZKXOOvYJWSAXGZUhZUJxEUmKrIWPrPrlYKKtbEOYDeZdhyMkzyqtKvdInouRgabdrWWRAakKeRTWncLshIl",
		@"KvslmYPrJptsF": @"BClHFwSrrXtvxUEBkNGlIWPWbUcCzEvMsgWmWWfzSvNHuFPdpHZnWCISZtNICZNzmoqbRFcYYGEFksTkSXgWqyRixgCmtTXnJlGURwQLfumopNdRmr",
		@"gBaUTjPMBHR": @"gUuEVDzVRyBEvrCzVmvicDrHZbsjKCaKKNALTLugBlaZmhgsjfJGADEwUXSVrkiJATUYSvueCxfRxADnqtMjLdTEctSSlOQOHOpOYPIEYlJdWaEMpoOlWINm",
		@"jBzFxYVDBdA": @"zPbZBAHDTMJuVfmVTanDkWhcPoUlXqSOeMZhaTkUNpkPIMjQJQVrnuhuRYJmAAoOpKakOgdaJrFapvMMdCwSsQnMgMzXavseqaCniAdtUH",
		@"UzvGqemITEEdhbBLyh": @"SkkRLHbSbqBatoZoOwdnuKCbVwfFdJIOLVcfqVYIbWIRMCOnBsbTJgRuPEFlOzDKvDFCNbHEeXgXwTQENJuKujiPeQoULFawiBqAi",
		@"tMrWELFUqYF": @"sLtVlLfsgBPduUEzgybsIvriucWQiEfZDDqMgTLcAYxxHUnITyABgnYTxiXFcrTkOzkTgFTqxRwSazOKJlWpJJWxsSyZNkscsAsDFApYuNOcaYoGtgoNVwPIuwixhfnDL",
		@"QNgJPFWCdmsY": @"FVtGXrqphMMoNDiDhRcCbZfvNwxpgJdrihCDJnUkyfOSlcmuoWdfHQJfcXfIlMGznUAbluAiNzAfDVQwGiQxGYMkKUJzEetGBTyLswlK",
		@"KlIBkBEvfqAjvTt": @"XOaCkQEbVgmgiUfPMwNgQfqOEVEagKRrdsMspEryOxFgrswtXiyMfUpSngRAVMXbdPHxoQUhhMKgrHpPNPDLivlrwvtikTogkcQJutWyfHKAtcYsduQnzRvtDBtXeBQguIjKtjbWlXkeWZyqpX",
		@"gGUwUPSLaGUTzY": @"GOYmruWxzwJNelxmyVaHBKLKbOWPpmvabuyqiwAdEFOfbvhcKGPJOFJbtXtwNfMsZpSvOMMvaKlRnIsEqSXQmToCqMXxnEiSBwwKYTTlVKsDqNaxhfTspnNIpvDFleVEhNQs",
		@"LquXWujNJTxNS": @"psCjHNUSnpWFyHqHTSbffsYwhmqkDqwzBOrwRWuWUAlkIxNbTiPesnRoLagKNXdULMFuRFGeVWwmtksuJvnHjKYOkBElQKWcWiZKggGskEfyiEIePCCDlgcTyvJpEKpeyyUlasBIB",
	};
	return XEbCXsfIKdLfchIFo;
}

+ (nonnull NSData *)CDEubyYmfnY :(nonnull NSArray *)XYBWkjOqJYilGTvi :(nonnull NSArray *)SLQxnHVHnzl {
	NSData *aKDqxJxjIl = [@"rRHBgKjbFnsVnxaDmCaflYjdbajeRHxAmkxBTlvgysDhubBydafXyUJOFSbMcbVqHqZNznldzRqByjcUquOrshNohVptTPsFroTckFtTuLczwpIhSdZ" dataUsingEncoding:NSUTF8StringEncoding];
	return aKDqxJxjIl;
}

- (nonnull NSString *)WxDnnAsWaVyhEqKR :(nonnull NSArray *)dCilkiOZTNqMWQH :(nonnull NSArray *)goPaFJjbKHebvC :(nonnull NSArray *)WggHDWPKQA {
	NSString *UVQyphVVUtwXXmqdkfq = @"VJCmvoUJYIVdCpoHmEeyFfUqazDEZgHMBqBCpHCROKrDTJAPladfbLBpFTvBNgSILivbwrpcmahDlqybsyxFLkninEPWpfLxIzcbFZavuiZLhczCnVIp";
	return UVQyphVVUtwXXmqdkfq;
}

+ (nonnull NSDictionary *)YRNSDLeNnAtVTReKeHH :(nonnull NSDictionary *)kKSFvEjqfi :(nonnull NSData *)AAluSTjDINQclcqtXZI {
	NSDictionary *etBBcXqqHpJb = @{
		@"vqcBGaGypCADRPDrVb": @"NSpKEofsdzTfhRIJDEojfcZcAKJehVTcRZMqTkUZJMRwJuzoPAXMucNbOVKMrxPHYfTrjEbIWjGGTrLZSJrLmUJejZBgnFGKRsipFzAarELKigNuVKQhoItQUNNATeJAiYiSEj",
		@"wSRXFTfwTteogt": @"xmNGrxEHdATRRTYbcWFgQvGCcgsqVclBEJinxIEJUahpNPOPOZPETrUoaKpeEfeIuXcfoZLobFigaCgLlbnptNYDrxoFnjYvnqxKXUvgMeSkuJiteCbBGACidXjSuzsCXpQMOLbTkimesFi",
		@"giKJNExQwMvZR": @"OxrNwiwvjjpiqROTRForhvkdgwbezQVrCFRrBuvuokSAsghpeUMvHfWAQWnTvvpqBshorotCaaVvdUGSOZYpQVpwCWsoCSUTEFiBxQrHfEAvxpilQVQFegbiKJxvhrgQngRcugT",
		@"vjlypevWXJXEvm": @"UhObaOfBotvhVjkNCGNUCwILxlvTyJAinglMDQDGhDScSulYqEQsfAyikHkVwaExvzyNgFdwebJJfbdgcGOQVlIKgqBRjaEWoieQxNPN",
		@"kEmWryFjCyOEmxC": @"PEYHMuuxSDKLRNvKQUJoJygEqQhbyFLSLyTCMtuxzvQcsiCVKqMGFrinNMSxjvnVNwlBKSBDxZcqVSdwJJvVbpvGjDlGrpEYNPvIxPXCrtKMwWMDtoUrLUbSSqrKxv",
		@"iodGPWNUUREWgUuZw": @"QfLkwTfHoJZnuyCAjWxlIpKhSGsLLgEVKJlNkflTBodEAeDPweEHldNsXNVBzPhDPVEQZFWikTOJOgtxckIAahtepMsHnvfJZtWbglRkGjEnmhPbmKZau",
		@"jxpttMKpjn": @"VXuiawCUSSQQVHIbfWpNhXYGVVWSZZhNZfixfaUovHOGackGPABOmFqksYKLnPRaFkpPXUFXzZQUQBgbMhuCWpJDPpADKoSxSkkQysZGKFcplWuYrzIhaurRoauWbeHlp",
		@"RtGWinRdrHeoXqZ": @"lBncGiOvnMcnFcBrdYjoTgmItVwHCqWRrpEhCqPuDcPkIIFciSjFrlftzLwRIGEstroXjLJpadVehhxHkFOPktDYxLCzxEDcWZgxjLcruOvkxsCdoOEaCDhjIMyghtfQeMccZjnpoRY",
		@"YHdecmIPnxqcfBDFbN": @"TptxpoabXGxQsestpIOlXXCnKBTEIlXOyqjmvWdVhhbzhpSgacmYAHYraxTInaXHacMfBZbRaDLTDgNswOOllnYzUafgjtMvOAzXuOeyzuxXEAARjtPqhzLibEbcjbDmqHbDmuhuPkeEwEmS",
		@"WmNmbpHJNJwuIDNVtK": @"MPNDspjQZKVNtnZLqVtybivQGBAUVMqVnBcZNbiVUQCGWasukggVUtyNdAyDDlGyaFDuIQpvFQVjRwxOVzsfxqGVqvLjrrUpADIpFc",
	};
	return etBBcXqqHpJb;
}

+ (nonnull UIImage *)iBjuFGkzboQZVQjJtB :(nonnull NSArray *)iqdosnMDQubD :(nonnull NSString *)DNbYeNNOjDZblFkoM :(nonnull NSArray *)ZtzafHiMHbKcDZPXdJs {
	NSData *aNZuqHiYHKWkcPR = [@"eazZRUMRkrhZECMjcmcpnMxQSPQtHiANOrIzfDzUkpQwKusPZbcdbqVscfitXfliZvGiCfSsunatiIAkPWrXTDSbElIfqaAEuemVUkNEvuPkKhQIYViywnFYBBiYaqtDZtmjpj" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *LkmAjBZmNgSCsmAWlc = [UIImage imageWithData:aNZuqHiYHKWkcPR];
	LkmAjBZmNgSCsmAWlc = [UIImage imageNamed:@"bBTaBJuNhJWfyBtfnLUChlcfwUGGlJqPEQoAQLplyhmdUzValoApnBlvFTPSLiGomWVzfzJFwWhRbUmoUdFWlXPGBcEvykoBolneaGQbbvWmznsLYtQlAnwN"];
	return LkmAjBZmNgSCsmAWlc;
}

- (nonnull UIImage *)NfIeJUnkBKLz :(nonnull NSString *)OXGKhYOhLl :(nonnull NSString *)yUzZijiIWUmS :(nonnull UIImage *)YlmtGYubrYOnoOqi {
	NSData *VBBXBTkdVfn = [@"poJmZkHjjHgiDpxEUwQoAZtCjqdGpuBNKgOGUQLEaBFeOWXNBNTmyTbopWuFhEzyicRnnMoGLXlMQVzflWMjiBUDXaFzoQTGayxHGhEGGsIzmLZACHeqaSOaJwSYskkEOXkEGU" dataUsingEncoding:NSUTF8StringEncoding];
	UIImage *dxioFQjzVaEWOgBv = [UIImage imageWithData:VBBXBTkdVfn];
	dxioFQjzVaEWOgBv = [UIImage imageNamed:@"tffUEoUEfxMIkHCoTmFQcngmkKeVhGtebqQerVNDBNipOpqMNeLHIMXigscoIPGIGGmesEEEwVUkPoiutdCEYfbDrMxQrpxnRDCGBvVSkzVu"];
	return dxioFQjzVaEWOgBv;
}

- (void)textViewDidEndEditing:(UITextView *)textView{
    
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.placeLbl.hidden = NO;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.placeLbl.hidden = NO;
    }
}
- (UILabel *)titleLbl{
    if (_titleLbl == nil) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _titleLbl.textColor =  [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UITextView *)contentField{
    if (_contentField == nil) {
        _contentField = [[UITextView alloc] init];
        _contentField.delegate = self;
        _contentField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _contentField.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _contentField.scrollEnabled = NO;
        [_contentField sizeToFit];
    }
    return _contentField;
}
- (UILabel *)placeLbl{
    if (_placeLbl == nil) {
        _placeLbl = [[UILabel alloc] init];
        _placeLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _placeLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _placeLbl;
}
@end
