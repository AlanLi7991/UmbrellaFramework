//
//  ViewController.m
//  AppDemo
//
//  Created by Alanli on 16/02/2018.
//  Copyright © 2018 Alan. All rights reserved.
//

#import <Umbrella/UmbrellaObj.h>
#import <SubAlpha/Alpha.h>
#import <SubBeta/Beta.h>
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImageView *imageView1;
@property (nonatomic, strong) UIImageView *imageView2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,  typically from a nib.
    //
    UmbrellaObj *umbrellaObj = [[UmbrellaObj alloc] init];
    //View From Umbrella
    _imageView = [[UIImageView alloc] initWithImage:umbrellaObj.image];
    //View From Sub Alpha
    _imageView1 = [[UIImageView alloc] initWithImage:umbrellaObj.alpha.image];
    //View From Sub Beta
    _imageView2 = [[UIImageView alloc] initWithImage:umbrellaObj.beta.image];
    //
    UIStackView *stackView = [[UIStackView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [stackView addArrangedSubview:_imageView];
    [stackView addArrangedSubview:_imageView1];
    [stackView addArrangedSubview:_imageView2];
    [stackView setAxis:UILayoutConstraintAxisVertical];
    [stackView setAlignment:UIStackViewAlignmentFill];
    [self.view addSubview:stackView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
