//
//  ViewController.m
//  LabelAutoSize
//
//  Created by HDF on 2017/8/23.
//  Copyright © 2017年 HDF. All rights reserved.
//
//测试1
//测试2

#import "ViewController.h"
#import "DFLabelSizeFit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //demo中的size都直接使用数字。
    UIColor *green = [UIColor colorWithRed:141.0/255.0 green:190.0/255.0 blue:14.0/255.0 alpha:1];

    //单行
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(20, 50, 300, 100);
    label.text = @"单行文字Left";
    label.backgroundColor = green;
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor blackColor];
//    label.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label];
    [label df_labelSizeFit];
    
    UILabel *label4 = [[UILabel alloc] init];
    label4.frame = CGRectMake(20, 75, 300, 100);
    label4.text = @"单行文字Center";
    label4.backgroundColor = green;
    label4.textAlignment = NSTextAlignmentCenter;
    label4.textColor = [UIColor blackColor];
    label4.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label4];
    [label4 df_labelSizeFit];
    
    UILabel *label5 = [[UILabel alloc] init];
    label5.frame = CGRectMake(20, 100, 300, 100);
    label5.text = @"单行文字Right";
    label5.backgroundColor = green;
    label5.textAlignment = NSTextAlignmentRight;
    label5.textColor = [UIColor blackColor];
    label5.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label5];
    [label5 df_labelSizeFit];
    

    
    //多行 样式1
    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(20, 130, 300, 100);
    label2.text = @"多行 样式1：文字少于一行间距无效";
    label2.textAlignment = NSTextAlignmentLeft;
    label2.numberOfLines = 0;
    label2.backgroundColor = green;
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label2];
    //文字少于一行，此处singleLineKeepWidth为NO时,返回label实际宽度；为YES时，将保持你设置的Frame的width，在这里就是300
    [label2 df_labelSizeFitWithLineSpacing:6 singleLineKeepWidth:NO];
    
    //多行 patten2
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(20, 160, 300, 100);
    label1.text = @"多行 样式2：文字是多行时。注意使用这些方法都要先设置label的frame和font值。文字少于一行，此处singleLineKeepWidth为NO时 与 hdf_labelToFitWidth设置效果相同；为YES时，将保持你设置的Frame的width";
    label1.textAlignment = NSTextAlignmentLeft;
    label1.numberOfLines = 0;
    label1.backgroundColor = green;
    label1.textColor = [UIColor blackColor];
    label1.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label1];
    [label1 df_labelSizeFitWithLineSpacing:6 singleLineKeepWidth:YES];
    
    
    //多行 富文本
    UILabel *label3 = [[UILabel alloc] init];
    label3.frame = CGRectMake(20, 300, 300, 100);
    label3.text = @"多行 富文本：参数分别是行距、段落间间距、对齐方式、首行是否缩进。\n参数分别是行距、段落间间距、对齐方式、首行是否缩进。参数分别是行距、段落间间距、对齐方式、首行是否缩进。参数分别是行距、段落间间距、对齐方式、首行是否缩进。\n行距、段落间间距...\n参数分别是行距、段落间间距、对齐方式、首行是否缩进。参数分别是行距、段落间间距、对齐方式、首行是否缩进。参数分别是行距、段落间间距、对齐方式、首行是否缩进。";
    label3.textAlignment = NSTextAlignmentLeft;
    label3.numberOfLines = 0;
    label3.backgroundColor = green;
    label3.textColor = [UIColor blackColor];
    label3.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:label3];
    [label3 df_labelSizeFitWithLineSpacing:6 paragraphSpacingBefore:12 alignment:(NSTextAlignmentLeft) isFirstLineHeadIndent:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//测试


@end
