//
//  ViewController.h
//  UIProgramatically
//
//  Created by amir sankar on 7/18/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic,retain) UIScrollView *scrollView;
@property (nonatomic,retain) UISegmentedControl *segmentControl;
@property (nonatomic,retain) UIImageView *imageView;
@property (nonatomic,retain) UILabel *headerLabel;
@property (nonatomic,retain) UILabel *scrollLabel;
@property (nonatomic,retain) UIImageView *theSquare;


-(void)createScrollView;
-(void)createsegment;
-(void)createImageView;
-(void)createLabel;
-(void)createSquare;
-(IBAction)pushcgctrl:(id)sender;

@end

