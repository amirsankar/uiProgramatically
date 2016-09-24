//
//  ViewController.m
//  UIProgramatically
//
//  Created by amir sankar on 7/18/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createScrollView];
    [self createLabel];
    [self createsegment];
    [self createImageView];
    [self createSquare];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createsegment
{
    self.segmentControl = [[[UISegmentedControl alloc] initWithFrame:CGRectMake(50, 350, 320, 60) ] initWithItems:[NSArray arrayWithObjects:@"Rebelution",@"Immortal Technique", nil]];
    [self.segmentControl setBackgroundColor:[UIColor blueColor]];
    [self.segmentControl setTintColor:[UIColor lightGrayColor]];
    
    [self.segmentControl addTarget:self action:@selector(pushcgctrl:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segmentControl];
}

-(void)createScrollView
{
    self.scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 380, self.view.frame.size.width, 300)];
    self.scrollView.backgroundColor = [UIColor grayColor];
    self.scrollLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.scrollView.frame.size.width, 200)];
    self.scrollLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.scrollLabel.numberOfLines = 0;
    NSMutableString *text = [[NSMutableString alloc]init];
    [text appendString:@"One good thing about music, when it hits you, you feel no pain - Bob Marley"];
    [self.scrollLabel setText:text];
     self.scrollLabel.textAlignment = NSTextAlignmentCenter;
    [self.scrollView addSubview:self.scrollLabel];
    [self.scrollView setContentSize: self.scrollLabel.frame.size ];
    
    [[self view] addSubview:self.scrollView];
}

-(IBAction)pushcgctrl:(id)sender{
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            
            self.headerLabel.text = @"Chill Vibes";
            self.headerLabel.textColor = [UIColor greenColor];
            self.imageView.image = [UIImage imageNamed:@"rebelution1.jpg"];
            self.scrollLabel.textColor = [UIColor greenColor];
            [self.scrollLabel setText:@"Somebody told me everything is alright \nThat lifes too short to be afraid \nJust leading up to what i want to say \nLiving should be giving it away \nYou're contemplating every single day \nAnd learning so we educate and be postive \nIt is what it is come on set an example for the kids\nSomebody told me everything is alright \nThat lifes too short to be afraid \nJust leading up to what i want to say \nLiving should be giving it away \nYou're contemplating every single day \nAnd learning so we educate and be postive \nIt is what it is come on set an example for the kids\nSomebody told me everything is alright \nThat lifes too short to be afraid \nJust leading up to what i want to say \nLiving should be giving it away \nYou're contemplating every single day \nAnd learning so we educate and be postive \nIt is what it is come on set an example for the kids"];
            
            break;
        
        case 1:
            
            self.headerLabel.text = @"Dark Vibes";
            self.scrollLabel.textColor = [UIColor whiteColor];
            self.headerLabel.textColor = [UIColor whiteColor];
            self.imageView.image = [UIImage imageNamed:@"immortal.jpg"];
            [self.scrollLabel setText:@"And now the devil follows me everywhere that i go\nIn fact im sure hes standing among you at my shows\nAnd every street cypher listing to little thugs flow\nHe could be standing right next to you, and you wouldnt know\nThe devil gorws in the hearts of the selfish and wicked\nWhite, brown, yellow, and black colored is not restricted\nAnd now the devil follows me everywhere that i go\nIn fact im sure hes standing among you at my shows\nAnd every street cypher listing to little thugs flow\nHe could be standing right next to you, and you wouldnt know\nThe devil gorws in the hearts of the selfish and wicked\nWhite, brown, yellow, and black colored is not restricted"];
            break;
            
        default:
            break;
    }
    self.scrollLabel.textAlignment = NSTextAlignmentCenter;
    [self.scrollLabel sizeToFit];
    [self.scrollView setContentSize: self.scrollLabel.frame.size ];
    
}

-(void)createImageView
{
    self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(65, 115, 247, 215)];
    self.imageView.image = [UIImage imageNamed:(@"musicpic.jpg")];
    [self.view addSubview:self.imageView];
    
}

-(void)createLabel
{
    self.headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(125, 35, 320, 44)];
    self.headerLabel.font = [UIFont fontWithName:@"Futura" size:24];
    self.headerLabel.text = @"Amir's Vibes";
    self.headerLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:self.headerLabel];
}

-(void)createSquare
{
    self.theSquare = [[UIImageView alloc]initWithFrame:CGRectMake(300, 600, 50, 50)];
    self.theSquare.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.theSquare];
    
    self.theSquare.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *constraintOne = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.theSquare attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0];
    
    NSLayoutConstraint *constraintTwo = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.theSquare attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0];
    
    NSLayoutConstraint *constraintThree = [NSLayoutConstraint constraintWithItem:self.theSquare attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeWidth multiplier:1.0 constant:50];
    
    NSLayoutConstraint *constraintFour = [NSLayoutConstraint constraintWithItem:self.theSquare attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1.0 constant:50];
    
    [self.view addConstraints:@[constraintOne, constraintTwo]];
    [self.theSquare addConstraints:@[constraintThree, constraintFour]];
}

@end
