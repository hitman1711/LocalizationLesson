//
//  BookModel.h
//  LocalizationLesson
//
//  Created by Артур Сагидулин on 25.12.15.
//  Copyright © 2015 Артур Сагидулин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface BookModel : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) UIImage *cover;
@property (nonatomic, strong) NSString *authorName;
@property (nonatomic, strong) NSString *descript;
@property (nonatomic, strong) NSNumber *count;
@property (nonatomic, strong) NSDecimalNumber *rating;
@property (nonatomic, strong) NSDate *date;

- (instancetype)initWithDictionary:(NSDictionary*)dict;
@end
