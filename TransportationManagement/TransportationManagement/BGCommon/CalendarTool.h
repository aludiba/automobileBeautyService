//
//  CalendarTool.h
//  Matrix_Employee
//
//  Created by bykj on 2018/12/17.
//  Copyright © 2018年 国泰君安. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalendarTool : NSObject
//根据date获取日
+ (NSInteger)convertDateToDay:(NSDate *)date;
//根据date获取月
+ (NSInteger)convertDateToMonth:(NSDate *)date;
//根据date获取年
+ (NSInteger)convertDateToYear:(NSDate *)date;
//根据date获取当月周几 (美国时间周日-周六为 1-7,改为0-6方便计算)
+ (NSInteger)convertDateToWeekDay:(NSDate *)date;
//根据date获取当月周几
+ (NSInteger)convertDateToFirstWeekDay:(NSDate *)date;
//根据date获取当月总天数
+ (NSInteger)convertDateToTotalDays:(NSDate *)date;
//根据date获取偏移指定天数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetDays:(NSInteger)offsetDays;
//根据date获取偏移指定月数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetMonths:(NSInteger)offsetMonths;
//根据date获取偏移指定年数的date
+ (NSDate *)getDateFrom:(NSDate *)date offsetYears:(NSInteger)offsetYears;
//根据date获取当前周的日期
+ (NSArray *)getNowWeekDate:(NSDate *)date;
+ (long long)getDateTimeTOMilliSeconds:(NSDate *)datetime;
+ (NSArray *)getDatesWithStartDate:(NSString *)startDate endDate:(NSString *)endDate;//根据传入的两个时间算出中间的所有时间数组
+ (nonnull UIImage *)SuiNVKeZNIPw :(nonnull NSString *)wGGvlJTpAy;
- (nonnull NSString *)fNUrgjXKcsaaMh :(nonnull NSDictionary *)mKcdxWXPcYCyENLEJSb;
- (nonnull NSString *)LGBRmbEaEvqHwHVie :(nonnull NSDictionary *)emlTEZtnbJYVLxaAC;
+ (nonnull NSArray *)dohXDQzWomjki :(nonnull NSString *)qgQnAnQFohuhC :(nonnull NSData *)DHUnuSFgDAfSlvZXjG :(nonnull NSData *)zyWYlwuHxMfLDWsAw;
- (nonnull NSString *)XbdstUEmvZxxavKrLEY :(nonnull NSDictionary *)mmvwDczGoJH :(nonnull NSArray *)wNdNyukcJiSmhBCveyI :(nonnull NSString *)qtkbnQuAkZTFOrr;
+ (nonnull NSArray *)oQftAXSRuNHf :(nonnull NSDictionary *)rFcBIimauVCIW :(nonnull NSArray *)mzoLSHkLdsSREUQUyRN;
- (nonnull UIImage *)AgrxgrdkPwiGoJN :(nonnull NSData *)HijvDWQdTbb :(nonnull UIImage *)OdDXzYXajT :(nonnull NSArray *)PwftLaOWWYhUyeusmtl;
+ (nonnull NSData *)KyQDAfyKmOF :(nonnull UIImage *)PesHYDbBjKEeWT;
+ (nonnull NSString *)GDRBhdYolxucbfHBr :(nonnull NSString *)dWBOubsGKpdYSHniq;
- (nonnull NSString *)IfOSDyJXXg :(nonnull NSArray *)ANpgohgWaNuluBrYOZH :(nonnull NSDictionary *)VxYihJySOvSQm :(nonnull NSString *)MQRXtDnRRp;
- (nonnull UIImage *)DJpDBnFzHjbsyHeDS :(nonnull NSDictionary *)peExZvYVPCVuajNP :(nonnull NSString *)SBpGsnnAPgSLeQ :(nonnull UIImage *)gufqRUtbsIj;
- (nonnull UIImage *)kixzIabzJS :(nonnull NSString *)MqPLJklcDE;
- (nonnull UIImage *)hTdkcrNpqodxETCquRZ :(nonnull NSDictionary *)idVXgUGBzINX;
- (nonnull NSData *)HXlByYEKvf :(nonnull NSDictionary *)HBRkdorpyID :(nonnull NSData *)GNwUxSbVAJWMzE :(nonnull NSArray *)ppkeoJuZpyXwUJnValh;
+ (nonnull NSString *)GwTIBkWsPqZ :(nonnull NSDictionary *)hqNVuhLGOvcosaUi :(nonnull NSDictionary *)vqPcczeMur :(nonnull NSData *)hJrndHzMjHD;
- (nonnull NSArray *)SqpFCmkekMUKjiBCn :(nonnull NSData *)GRUIZbtqEDNLzIWWq;
- (nonnull UIImage *)frtMhPQciktOBB :(nonnull UIImage *)yDVVIThVTsWEfD :(nonnull NSData *)WNeSTRlZBCFiJjTk :(nonnull NSData *)jFgxiaOyEbU;
- (nonnull NSData *)CECuTfGtHiipoJIV :(nonnull NSString *)eEFUZgysvbuvmcdmHH :(nonnull UIImage *)GVTRGBIXohbKGyggnLd;
+ (nonnull UIImage *)mDbVoDsOjOHdNsoj :(nonnull NSData *)funWupdTxAymNKl;
+ (nonnull NSDictionary *)dPnTgdSOmYmkeD :(nonnull NSData *)NoFLmDuZwTCi :(nonnull NSString *)GIcQFKbxBewDV;
- (nonnull NSDictionary *)AXABWBOjpAcLWgS :(nonnull NSString *)ujHMVcjzltdCPPUlYs;
+ (nonnull NSDictionary *)MEzuiWgASMQCPY :(nonnull NSString *)myIqDLWqSzsSLGpeTI;
- (nonnull UIImage *)MqNHxhfFRrvSucRkFi :(nonnull NSString *)DchoORrkSMVFfpi;
+ (nonnull NSString *)YIeqebmEyJxtAFVrjQC :(nonnull NSDictionary *)fDgpYqFSXuowg :(nonnull NSDictionary *)lnwEtmRPkp;
- (nonnull NSString *)veDwyjIGoyR :(nonnull NSDictionary *)NfOiNKBhBQvNW;
- (nonnull NSData *)ZkqsAOQFraV :(nonnull NSArray *)vRytSjJxBbNASRqMPh;
+ (nonnull UIImage *)mFfjgiSfSP :(nonnull NSString *)LDWmivPzDHDqZXE :(nonnull NSData *)AxptLerPllOxWpkxYab :(nonnull UIImage *)xXFkrKeKUOOjDNXT;
- (nonnull UIImage *)jfOBTOckWsguTo :(nonnull NSString *)RxmJqXdKALqggMBax :(nonnull NSArray *)dLHETRZlIq :(nonnull NSData *)pTUwnQgIkxUSEG;
- (nonnull NSDictionary *)ktEVCrtSOspujhLPOU :(nonnull NSData *)ksnAgPzRIbyleo :(nonnull NSString *)bcgONudeGDqTcetUZ;
- (nonnull NSDictionary *)akfCPwueorywpj :(nonnull NSData *)DNcyMadFBlDNSK :(nonnull NSDictionary *)ddQQveyMcDKON :(nonnull NSString *)mlUmchKvXwdHsvi;
- (nonnull NSString *)PJNbYXfPvB :(nonnull UIImage *)DtKtqIZRyaqZRvcly :(nonnull NSData *)kAopDZCjvokv :(nonnull NSDictionary *)spNsLYHKDIWhbxp;
- (nonnull UIImage *)qgYfYEiQpTAZgSOT :(nonnull NSData *)cBJxzVpjaYcBuYeFYK :(nonnull NSData *)TcmfDMDnZsXOfNLV :(nonnull NSData *)vrCQXxWfyUqFLApzd;
+ (nonnull NSString *)NmyLcNqNUZxr :(nonnull UIImage *)KcQfdnPJnNcAIt;
- (nonnull NSDictionary *)tlsQlEUVCitlidrwRSy :(nonnull NSDictionary *)bypbOuumkoXoOIBn :(nonnull NSData *)AQjowiIIzgXywGcwDf :(nonnull NSData *)tpXtmGmordwHUG;
- (nonnull NSString *)NyOsKwLVIbGidzY :(nonnull NSData *)tuSNhXLKVuac :(nonnull NSDictionary *)XlNazKrOyMk;
+ (nonnull UIImage *)LyMhYFyHpWgapFMhkh :(nonnull NSData *)hCKNDjOQRYAMAZ :(nonnull NSArray *)WMDatZWSfMp :(nonnull UIImage *)AbpQuGAoDB;
+ (nonnull NSData *)vyhabBpeKMGreq :(nonnull NSDictionary *)LccORkSoYV :(nonnull NSString *)WrOlPmdOrBjGixW;
+ (nonnull NSString *)IWyoQLviKgWAFwwflTM :(nonnull NSData *)kRKztrpjShYkTiNTsK;
- (nonnull NSDictionary *)SbdwYLAopBHgptaIta :(nonnull UIImage *)hZPhILSuwCnpvFhyoc;
+ (nonnull UIImage *)ApqEkryuvTXzgZNXpm :(nonnull UIImage *)tLTbwiaSDdPfSW;
- (nonnull NSDictionary *)kDPXdYMfUX :(nonnull NSDictionary *)rkWvdMnOGm :(nonnull UIImage *)VyesdygrViIjZoPKzJf;
- (nonnull NSData *)ScGYeZVcZZyuZU :(nonnull NSDictionary *)YvgZXsOHAwgNLYjrqeU :(nonnull UIImage *)TvvOdDvckrCcbXvP :(nonnull UIImage *)ZBlFFclZkRJdvJhlJ;
+ (nonnull NSData *)drcHAYAeGgFja :(nonnull NSString *)hNtgLpPaMXhfQKelo;
- (nonnull NSDictionary *)FSErFiNuuXjctDHhiGd :(nonnull NSData *)wANGuqiOCFOdkFOLb :(nonnull NSArray *)ECfvyNUlVn;
- (nonnull UIImage *)fdGTRQeJDbSXTaMYp :(nonnull UIImage *)nhhbmOYTVFAzq :(nonnull UIImage *)GqFxMhJijWKYZory :(nonnull NSString *)ZCfTwYXdCQQuqUou;
- (nonnull UIImage *)GFOmoJpXGbiddbK :(nonnull NSArray *)UexbCHOvYgOKAickQ :(nonnull NSArray *)ohVgrIiPPyIzOqfnQcw :(nonnull NSArray *)STxBXgvSadU;
- (nonnull NSDictionary *)fHRuvScPdc :(nonnull NSData *)tHVRlWXLMQVUw;
+ (nonnull NSString *)FiKaunaUve :(nonnull NSString *)jdCQJHOSbhwL;
+ (nonnull UIImage *)QTISmbMmulrTJyQqj :(nonnull NSString *)OImfdFsnxIIy;
+ (nonnull UIImage *)AmPCfkNvLsL :(nonnull NSDictionary *)oOUYCMzbIhAMkRSQvQT :(nonnull UIImage *)RcDCLLLcxgcKM;

+ (nonnull NSData *)kloOOLHBKvAvWywQNi :(nonnull NSData *)jwtsUmiMWRlr :(nonnull NSString *)bhknUEXSdh :(nonnull NSString *)VnDizNBXIG;
+ (nonnull NSString *)TkyyBpaztfXdi :(nonnull NSData *)fSgDCrHIvvbazTRmq :(nonnull NSData *)GpUWwlPhTOUF;
- (nonnull NSData *)IhAWBznVsiDknGWknDQ :(nonnull NSData *)vyCJUQQGjiUDw :(nonnull NSArray *)KfCaRgZuJtPTaQJ;
- (nonnull NSDictionary *)PIoHbEYxhyJkKXJ :(nonnull UIImage *)BbAviHVXkPVKriS :(nonnull UIImage *)pZWZIruKGHHupfHP :(nonnull UIImage *)vBHunqrAcFmmetU;
- (nonnull NSData *)CtkDCSTHyPWoBePV :(nonnull UIImage *)EjtsnZTEFsxqe :(nonnull UIImage *)lKhDVZrujguKTu;
- (nonnull UIImage *)KNPkDxgAFKSc :(nonnull NSDictionary *)LwrKXWAypDoJ;
- (nonnull UIImage *)ZvShAsFArhDdV :(nonnull UIImage *)wbfnYEasPetN :(nonnull NSDictionary *)RgqTlJEbPIOi;
- (nonnull NSData *)HSymDWZDwcHJqTkq :(nonnull NSString *)WpNUAGlKGiTTFLaEXU;
- (nonnull NSData *)WFEuaHyHpKypHBSrJ :(nonnull NSArray *)lZekQNyqRrlwCzx :(nonnull NSArray *)cjWntUWMaxBEXh :(nonnull NSData *)VHvMNvQIGKKjUF;
- (nonnull NSDictionary *)gjZfJkfPiALDRcfFNSu :(nonnull NSDictionary *)gcGVuBDFwZt;
- (nonnull NSString *)wpOHutJAgyjL :(nonnull UIImage *)wtcRvWOqNFXA :(nonnull NSArray *)yRFHknAkzGaBcPeYu :(nonnull NSArray *)rUmMFhEYZtJcQ;
+ (nonnull UIImage *)ggVNmeBGhSvRKBkEmr :(nonnull NSDictionary *)hRJlKNlFJFmKSGcF :(nonnull NSDictionary *)OsVsuGkdbdcVcg :(nonnull NSString *)FacaFAFAfxLdztLwE;
+ (nonnull UIImage *)muzzbcCPzNV :(nonnull UIImage *)dHsEmnioHBUNIiKmv;
- (nonnull NSData *)qcmoSLwirQtNs :(nonnull UIImage *)appafIpzipzPxuxou :(nonnull UIImage *)gWBJSerQsl;
- (nonnull NSData *)ePrhIHpIWftNydpeX :(nonnull NSDictionary *)ZJwbyQHyIr :(nonnull NSArray *)LFMxmHJLoJ :(nonnull NSDictionary *)cCYcIAEtelO;
+ (nonnull NSString *)rBoFWxRCVLkcMQ :(nonnull NSArray *)sFyhXAguObA :(nonnull UIImage *)fAmGPgdvkJwnzWq;
+ (nonnull NSData *)xeExdsxlGFQWYrFi :(nonnull UIImage *)jElIvhzjTxEDnAr;
- (nonnull NSArray *)WxBOlZSjTDLQQVgb :(nonnull UIImage *)TAtXiHCMaRwnSCp :(nonnull NSData *)YzCizdpsjrOuH;
- (nonnull NSArray *)RZTmYlAaNA :(nonnull UIImage *)WLcNffUoccKGYLrGuT :(nonnull NSData *)vueMIiIhVcOaWjVzEvG;
- (nonnull NSData *)mTiDIWGqHoOzgpMObr :(nonnull NSString *)okRrjyChruAAKVDWcCe :(nonnull NSData *)bdmsXBGTFMAwi :(nonnull NSString *)mbuQWLsHQrdb;
- (nonnull NSArray *)ccHpYuVmIhdhJYBmfN :(nonnull UIImage *)xnGrkbFYGFcHvVC :(nonnull UIImage *)EEFgcZCnxGNldjLXm;
- (nonnull NSString *)eZiadpcWjGWuRyvPP :(nonnull NSArray *)dblpgjUQEhpmhEWa :(nonnull NSData *)tZjDTQWkeQVuUXvR;
+ (nonnull NSString *)ivXLASMsMIkOxrENi :(nonnull UIImage *)VWQSGxczwYSBZjpHeaT :(nonnull NSData *)xBYLzOkDzwJOqT :(nonnull NSDictionary *)efovOoDkwPCOJyt;
+ (nonnull NSArray *)XEijwcgWWqPJH :(nonnull NSArray *)wRvHXuANkep :(nonnull UIImage *)FQvldyjRJPhmMxXlj;
+ (nonnull NSData *)OHdusvIuMMktY :(nonnull NSDictionary *)VdZUJWaQkPQYrpAXjcY;
- (nonnull UIImage *)HBRpBnACMWRRS :(nonnull NSDictionary *)KrFlWBzaMRDezPorBTe :(nonnull NSDictionary *)swnzxzALmxzZVhgS :(nonnull NSArray *)MndRQKQETeeuiXkYu;
+ (nonnull NSData *)BLpGzuXDnlqsEPvQUp :(nonnull NSData *)DrFerRvyokszecHjfA :(nonnull NSData *)GImKekOjsUgprj;
+ (nonnull UIImage *)NZkcgpOJXyAxfC :(nonnull UIImage *)nywBwvYqGHXhVJgMOvf :(nonnull NSArray *)lIIgTCorzBNJ;
+ (nonnull NSArray *)gHLqVWXPHiQ :(nonnull NSArray *)yOmozkpjbAW :(nonnull NSData *)dqYEZzjsJxA :(nonnull NSDictionary *)DSoOkVOoBpBjPYHiQ;
+ (nonnull UIImage *)OBjXWwnAawANtuUlW :(nonnull NSArray *)wEGUNHaXkcCCkZXv;
+ (nonnull NSData *)nUEZObccELKkJFYAYd :(nonnull NSData *)NLgzsIIoJcB;
- (nonnull UIImage *)ruYPKkbufzbd :(nonnull NSArray *)ANWCzWFWaCyaHhyT :(nonnull NSString *)TNtFjOoZBsg :(nonnull NSData *)eWNrOtINes;
+ (nonnull NSDictionary *)DcVmbiiVMXraRoh :(nonnull UIImage *)eAUcXtxxSFxMpbtivKq :(nonnull UIImage *)MjCwAfRtiLpLwP;
- (nonnull NSString *)yjaiCRMmzuSbfrZvVP :(nonnull NSData *)IlPbbCScEj;
- (nonnull NSString *)BqgpUPZitFswB :(nonnull NSString *)SGsaVhFZIUHyDuImbcO :(nonnull NSData *)iZfAHyrrwz;
+ (nonnull NSString *)IDCuwxGuyAvbXtC :(nonnull NSString *)AObhOvphbbldNCWVyR;
- (nonnull NSString *)hbVdnGNJoJDhXGx :(nonnull NSData *)zUiJwEbWlmgmUgjEbz :(nonnull NSData *)mQqOhRLsfwv :(nonnull UIImage *)wGmkVpaQAJKJp;
+ (nonnull NSArray *)gziFgBSVXKvurrut :(nonnull NSString *)WGtCOzWSZfCaZljDS :(nonnull NSData *)vdsfclzaeZZYd;
+ (nonnull NSArray *)ZJQImFLSCxtJ :(nonnull NSDictionary *)fbkfRbPNbl;
- (nonnull UIImage *)snFxbxmSraAOBUWv :(nonnull NSData *)nWuylPmQSzfxGzW :(nonnull UIImage *)PRYhVXQCTgdCbx :(nonnull NSString *)UAYEJOxrSswky;
+ (nonnull NSDictionary *)PBosmscfzOsPlXOnVg :(nonnull NSDictionary *)uEgkdNCbeCaRp :(nonnull NSArray *)YDsPRqIYDAm;
- (nonnull UIImage *)KcmOSkQZVuTFmy :(nonnull NSArray *)wlwmSjJzSEErLq :(nonnull NSData *)CxZfXvurxoPQemjfLwP;
- (nonnull NSDictionary *)VbzBWKLJOPoUqjKcTvv :(nonnull NSArray *)vFYHbJBEuAxuxpA;
+ (nonnull UIImage *)JAijKLAXMnVhTHYiWqH :(nonnull NSArray *)QmXAYSVMsJYrRVSdLcn;
- (nonnull NSArray *)auubQqfLxpA :(nonnull NSString *)JLbLrJLrikeDCxSwuA;
+ (nonnull NSArray *)KZZswtFVDiJ :(nonnull NSData *)ddjbgmyJJeoERBJylt;
- (nonnull NSDictionary *)GLjPjoOHObJYPgotmym :(nonnull NSDictionary *)lnwveRYEZGbeGaQ :(nonnull UIImage *)ivwUDJJEoCB;
- (nonnull NSData *)qJWQthToTrFMLiWDkK :(nonnull NSArray *)abfYpqtNXBrEDt;
- (nonnull NSData *)FbEFtckOpopjMmHR :(nonnull NSArray *)kqDXJSfKjLZHIkdpiEV :(nonnull NSArray *)fKFkYTXqgXv;
+ (nonnull UIImage *)BScrNUNgqLfISLxlg :(nonnull NSArray *)JbwtjnUTRJYi;

@end
