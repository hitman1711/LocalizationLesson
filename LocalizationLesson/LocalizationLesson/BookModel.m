//
//  BookModel.m
//  LocalizationLesson
//
//  Created by Артур Сагидулин on 25.12.15.
//  Copyright © 2015 Артур Сагидулин. All rights reserved.
//

#import "BookModel.h"

@implementation BookModel

-(instancetype)initWithDictionary:(NSDictionary *)dict{
    self = [super init];
    if (self) {
        _title = dict[@"title"];
        _cover = [UIImage imageNamed:dict[@"image"]];
        _authorName = dict[@"author"];
        _descript = dict[@"descript"];
        _count = @([dict[@"count"] integerValue]);
        _rating = [[NSDecimalNumber alloc] initWithDouble:[dict[@"rating"] doubleValue]];
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:1];
        [comps setMonth:1];
        [comps setYear:[dict[@"date"] integerValue]];
        NSCalendar *gregorian = [[NSCalendar alloc]
                                 initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        _date = [gregorian dateFromComponents:comps];
    }
    return self;

}

@end
