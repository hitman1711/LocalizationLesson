//
//  ViewController.m
//  LocalizationLesson
//
//  Created by Артур Сагидулин on 25.12.15.
//  Copyright © 2015 Артур Сагидулин. All rights reserved.
//

#import "ViewController.h"
#import "BookModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *coverImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BookModel *aBook = [[BookModel alloc] initWithDictionary:[self prepareDataForModel]];
    [self setupScreenWithBook:aBook];
}

-(NSDictionary*)prepareDataForModel{
    NSDictionary *dataForBook = @{@"image":NSLocalizedString(@"testBook.bookCover", nil),
          @"title":NSLocalizedString(@"testBook.bookTitle", nil),
          @"author":NSLocalizedString(@"testBook.bookAuthor", nil),
        @"descript":NSLocalizedString(@"testBook.bookDescript", nil),
        @"count":NSLocalizedString(@"testBook.bookCount", nil),
        @"rating":NSLocalizedString(@"testBook.bookRating", nil),
        @"date":NSLocalizedString(@"testBook.bookDate", nil)};
    return dataForBook;
}

-(void)setupScreenWithBook:(BookModel*)book{
    [_titleLabel setText:book.title];
    [_coverImage setImage:book.cover];
    [_authorLabel setText:book.authorName];
    [_countLabel setText:[NSString stringWithFormat:@"%@",book.count]];
    NSString *dateString = [NSDateFormatter localizedStringFromDate:book.date                                                          dateStyle:NSDateFormatterFullStyle
timeStyle:NSDateFormatterNoStyle];
    [_dateLabel setText:dateString];
    [_ratingLabel setText:[NSString stringWithFormat:@"%@",book.rating]];
    [_descriptionLabel setText:book.descript];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
