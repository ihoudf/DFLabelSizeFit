//
//  ViewController.m
//  LabelAutoSize
//
//  Created by Faroe on 2017/8/23.
//  Copyright © 2017年 HDF. All rights reserved.
//

#import "ViewController.h"
#import "DFLabelSizeFit.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //单行
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 50, 300, 100);
    label.text = @"单行文字";
    label.backgroundColor = [UIColor yellowColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label];
    [label hdf_labelToFitWidth];
    
    //多行 patten1
    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(20, 80, 300, 100);
    label2.text = @"多行 patten1：文字少于一行间距无效";
    label2.textAlignment = NSTextAlignmentLeft;
    label2.numberOfLines = 0;
    label2.backgroundColor = [UIColor yellowColor];
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    //文字少于一行，此处isSingleLineKeepWidth为NO时 与 hdf_labelToFitWidth设置效果相同
    [label2 hdf_labelToFitHeightWithLineSpacing:6 isSingleLineKeepWidth:YES];
    
    //多行 patten2
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(20, 130, 300, 100);
    label1.text = @"多行patten2：按照苹果的习惯和审美来看，iPhone 8的指纹识别极有可能是这样，最理想的是屏内指纹，但是这个目前量产起来太困难，侧边按键集成可能性最大，但是从长远来看，这个功能将被苹果送进坟墓，因为他们正在测试的人脸识别更6。按照苹果的习惯和审美来看，iPhone 8的指纹识别极有可能是这样";
    label1.textAlignment = NSTextAlignmentLeft;
    label1.numberOfLines = 0;
    label1.backgroundColor = [UIColor yellowColor];
    label1.textColor = [UIColor blackColor];
    label1.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label1];
    [label1 hdf_labelToFitHeightWithLineSpacing:6 isSingleLineKeepWidth:YES];
    

    
    //多行 富文本
    UILabel *label3 = [[UILabel alloc] init];
    label3.frame = CGRectMake(20, 350, 300, 100);
    label3.text = @"多行 富文本：按照苹果的习惯和审美来看，iPhone 8的指纹识别极有可能是这样，最理想的是屏内指纹，但是这个目前量产起来太困难，侧边按键集成可能性最大。\n但是从长远来看，这个功能将被苹果送进坟墓，因为他们正在测试的人脸识别更6。按照苹果的习惯和审美来看，iPhone 8的指纹识别极有可能是这样按照苹果的习惯和审美来看。\niPhone 8的指纹识别极有可能是这样，最理想的是屏内指纹，但是这个目前量产起来太困难，侧边按键集成可能性最大";
    label3.textAlignment = NSTextAlignmentLeft;
    label3.numberOfLines = 0;
    label3.backgroundColor = [UIColor yellowColor];
    label3.textColor = [UIColor blackColor];
    label3.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label3];
    [label3 hdf_labelToFitHeightWithLineSpacing:6 paragraphSpacingBefore:12 alignment:(NSTextAlignmentLeft) isFirstLineHeadIndent:YES];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
