//
// UK Crown Copyright (c) 2009. All Rights Reserved
//

domain Format is
  
    //! Type to specify how a value should be justified within its width. 
    //! 'left' means that it will fill the leftmost position 
    //! within the width. 'right' means that it will fill the 
    //! rightmost position within the width 'internal' means 
    //! that the value will be right justified, but any sign 
    //! will be left justified, with any necessary padding 
    //! beween the two. 
    type justify    is enum ( left, right, internal );

    //! Type to specify whether based conversions should use upper or lower case characters for digits above '9'
    type base_case  is enum ( upper, lower );

    //! Type to specify whether rounding should be towards zero or the nearest value
    type rounding  is enum ( towards_zero, towards_nearest );


    //! Type used to indcate which fields of a duration are required in the output
    type duration_field is enum ( weeks, days, hours, minutes, seconds );

    //! Type used to indcate which fields of a timestamp are required in the output
    type timestamp_field is enum ( year, month, week, day, hour, minute, second );


    //! Converts the given character to an ascii byte
    function to_ascii ( input : in anonymous character ) return anonymous byte;

    //! Converts the given string to a sequence of ascii bytes
    function to_ascii ( input : in anonymous string ) return anonymous sequence of byte;

    //! Converts the given ascii byte to a character
    function from_ascii ( input : in anonymous byte ) return anonymous character;

    //! Converts the given sequence of ascii bytes to a string
    function from_ascii ( input : in anonymous sequence of anonymous byte ) return anonymous string;


    //! Formats the given integer as a string. A '+' sign will 
    //! be shown at the start for positive numbers if 
    //! requested. 
    function format_integer ( input         : in anonymous long_integer, 
                              show_positive : in boolean ) 
                              return             string;

    //! Formats the given integer as a string. A '+' sign will 
    //! be shown at the start for positive numbers if 
    //! requested. The supplied justification, width and 
    //! padding is used to position the result within the 
    //! result string. 
    function format_integer ( input         : in anonymous long_integer, 
                              show_positive : in boolean,
                              justification : in justify, 
                              width         : in anonymous integer, 
                              pad           : in anonymous character ) 
                              return             anonymous string;

    //! Formats the given integer as a based string. A '+' sign 
    //! will be shown at the start for positive numbers if 
    //! requested, and the character case will be as requested.
    //! Any digits over '9' will use the characters a-z or A-Z as necesary.
    //! eg format_based_integer(255,false,16,upper) = "FF"
    //! eg format_based_integer(181,false,2,upper) = "10110101"
    //! eg format_based_integer(29234652,false,36,upper) = "HELLO"
    function format_based_integer ( input         : in anonymous long_integer,
                                    show_positive : in boolean,
                                    base          : in anonymous integer,
                                    base_case     : in base_case ) 
                                    return             anonymous string;

    //! Formats the given integer as a based string. A '+' sign 
    //! will be shown at the start for positive numbers if 
    //! requested, and the character case will be as requested. 
    //! Any digits over '9' will use the characters a-z or A-Z 
    //! as necesary. The supplied justification, width and 
    //! padding is used to position the result within the 
    //! result string. 
    function format_based_integer ( input         : in anonymous long_integer, 
                                    show_positive : in boolean,
                                    base          : in anonymous integer,
                                    base_case     : in base_case,
                                    justification : in justify, 
                                    width         : in anonymous integer, 
                                    pad           : in anonymous character ) 
                                    return             anonymous string;


    //! Formats the given real number as a string, showing the 
    //! requested number of significant figures. The value may 
    //! be shown in fixed or scientific format depending on 
    //! which representation is the most compact for the given 
    //! number of significant figures. The fractional part will 
    //! not be displayed if it is zero. 
    function format_number     ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer ) 
                                 return             anonymous string;

    //! Formats the given real number as a string, showing the 
    //! requested number of significant figures. The value may 
    //! be shown in fixed or scientific format depending on 
    //! which representation is the most compact for the given 
    //! number of significant figures. The fractional part will 
    //! not be displayed if it is zero. The supplied 
    //! justification, width and padding is used to position 
    //! the result within the result string. 
    function format_number     ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer,
                                 justification : in justify, 
                                 width         : in anonymous integer, 
                                 pad           : in anonymous character ) 
                                 return             anonymous string;

    //! Formats the given real number as a string, showing the 
    //! requested number of significant figures. The value may 
    //! be shown in fixed or scientific format depending on 
    //! which representation is the most compact for the given 
    //! number of significant figures. The fractional part will 
    //! always be displayed, even if it is zero. 
    function format_decimal    ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer ) 
                                 return             anonymous string;

    //! Formats the given real number as a string, showing the 
    //! requested number of significant figures. The value may 
    //! be shown in fixed or scientific format depending on 
    //! which representation is the most compact for the given 
    //! number of significant figures. The fractional part will 
    //! always be displayed, even if it is zero. The supplied 
    //! justification, width and padding is used to position 
    //! the result within the result string. 
    function format_decimal    ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer,
                                 justification : in justify, 
                                 width         : in anonymous integer, 
                                 pad           : in anonymous character ) 
                                 return             anonymous string;

    //! Formats the given real number as a string in scientific 
    //! notation (eg 1.2e+04), showing the requested number of 
    //! significant figures. 
    function format_scientific ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer ) 
                                 return             anonymous string;

    //! Formats the given real number as a string in scientific 
    //! notation (eg 1.2e+04), showing the requested number of 
    //! significant figures. The supplied 
    //! justification, width and padding is used to position 
    //! the result within the result string. 
    function format_scientific ( input         : in anonymous real, 
                                 show_positive : in boolean,
                                 sigfigs       : in integer,
                                 justification : in justify, 
                                 width         : in anonymous integer, 
                                 pad           : in anonymous character ) 
                                 return             anonymous string;


    //! Formats the given real number as a string with a fixed 
    //! number of decimal places. 
    function format_fixed      ( input         : in anonymous real,
                                 show_positive : in boolean,
                                 places        : in integer ) 
                                 return             anonymous string;

    //! Formats the given real number as a string with a fixed 
    //! number of decimal places. The supplied justification, 
    //! width and padding is used to position the result within 
    //! the result string. 
    function format_fixed      ( input         : in anonymous real,
                                 show_positive : in boolean,
                                 places        : in integer,
                                 justification : in justify, 
                                 width         : in anonymous integer, 
                                 pad           : in anonymous character )  
                                 return             anonymous string;

    //! Returns the strings "true" or "false" according to the input value. 
    function format_boolean    ( input         : in anonymous boolean )
                                 return             anonymous string;


    //! Returns one of the strings supplied according to the input value. 
    function format_boolean    ( input         : in anonymous boolean,
                                 true_text     : in anonymous string,
                                 false_text    : in anonymous string )
                                 return             anonymous string;

    //! The supplied justification, width and padding is used 
    //! to position the input string within the result string. 
    //! A justification of 'internal' will behave as 'right' 
    function format_string ( input         : in anonymous string,
                             justification : in justify, 
                             width         : in anonymous integer, 
                             pad           : in anonymous character )  
                             return             anonymous string;



    //! Formats a duration in ISO8601 format. max_field is the 
    //! largest field to be displayed, and min_field the 
    //! smallest. Any values bigger than the max will be 
    //! incorporated into the max. Any values smaller than the 
    //! min field will be shown as decimal if requested. Zero 
    //! fields will be omitted if requested, as will trailing 
    //! decimal zeros. Note that specifiying 'weeks' as the max 
    //! value and anything other than weeks as the min value 
    //! will result in a string that does not strictly conform 
    //! to ISO 8601. 
    //!  eg 1 day, 15 minutes, 30 seconds
    //!   max  min     hide  places truncate result
    //!   days seconds true  0      true     P1DT15M30S
    //!   days minutes true  0      true     P1DT15M
    //!   days minutes true  2      false    P1DT15.50M
    //!   days minutes false 2      false    P1DT0H15.50M
    //!   hours hours  true  2      false    PT24.26H
    //!   hours hours  true  4      false    PT24.2550H
    //!   hours hours  true  4      true     PT24.255H
    function format_duration_iso ( input        : in anonymous duration,
                                   max_field    : in duration_field,
                                   min_field    : in duration_field,
                                   hide_zero    : in anonymous boolean,
                                   places       : in anonymous integer,
                                   truncate     : in anonymous boolean ) 
                                   return            anonymous string;
    
    //! Formats a duration in hh:mm:ss.sss, hh:mm.mmm or hh.hhh 
    //! format, depending on the value of min_field. The number 
    //! of decimal places for the least significant field, and 
    //! truncation of trailing zeros will be as requested. 
    //! Rounding of values is towards zero. 
    function format_duration_hms ( input        : in anonymous duration,
                                   min_field    : in duration_field,
                                   places       : in anonymous integer,
                                   truncate     : in anonymous boolean ) 
                                   return            anonymous string;

    //! Formats a duration with full flexibility of which 
    //! fields are displayed, the prefix for the whole result 
    //! and the prefix for any time section. A list of suffixes 
    //! for each field requested may additionally be supplied. 
    //! Any missing suffixes will be the empty string. 
    //! Can be used to format a duration such as "3 days, 4 hours"
    function format_duration ( input          : in anonymous duration,
                               max_field      : in duration_field,
                               min_field      : in duration_field,
                               rounding_mode  : in rounding,
                               hide_zero      : in anonymous boolean,
                               places         : in anonymous integer,
                               truncate       : in anonymous boolean,
                               field_width    : in anonymous integer,
                               prefix         : in anonymous string,
                               time_prefix    : in anonymous string,
                               suffixes       : in anonymous sequence of anonymous string ) 
                               return              anonymous string;


    //! Formats a timestamp in ISO 8601 
    //! yyyy-mm-ddThh:mm:ss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_iso_ymdhms ( input          : in anonymous timestamp,
                                           min_field      : in timestamp_field,
                                           places         : in anonymous integer,
                                           truncate       : in anonymous boolean )
                                           return              anonymous string;
                                        
    //! Formats a timestamp in ISO 8601 
    //! yyyy-dddThh:mm:ss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_iso_ydhms (  input          : in anonymous timestamp,
                                           min_field      : in timestamp_field,
                                           places         : in anonymous integer,
                                           truncate       : in anonymous boolean )
                                           return              anonymous string;
                                        
    //! Formats a timestamp in ISO 8601 
    //! yyyy-Www-dThh:mm:ss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_iso_ywdhms ( input          : in anonymous timestamp,
                                           min_field      : in timestamp_field,
                                           places         : in anonymous integer,
                                           truncate       : in anonymous boolean )
                                           return              anonymous string;
                                        
    //! Formats a timestamp in ISO 8601 
    //! yyyymmddThhmmss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_compact_iso_ymdhms ( input          : in anonymous timestamp,
                                                   min_field      : in timestamp_field,
                                                   places         : in anonymous integer,
                                                   truncate       : in anonymous boolean )
                                                   return              anonymous string;
                                        
    //! Formats a timestamp in ISO 8601 
    //! yyyydddThhmmss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_compact_iso_ydhms (  input          : in anonymous timestamp,
                                                   min_field      : in timestamp_field,
                                                   places         : in anonymous integer,
                                                   truncate       : in anonymous boolean )
                                                   return              anonymous string;
                                        
    //! Formats a timestamp in ISO 8601 
    //! yyyyWwwdThhmmss.sssZ format. Any values after the 
    //! min_field will be truncated, and the min_field can be 
    //! displayed as a decimal value if it is a time component. 
    function format_timestamp_compact_iso_ywdhms ( input          : in anonymous timestamp,
                                                   min_field      : in timestamp_field,
                                                   places         : in anonymous integer,
                                                   truncate       : in anonymous boolean )
                                                   return              anonymous string;
                                        
    //! Formats the date part of a timestamp in dd/mm/yyyy format 
    function format_timestamp_dmy  ( input          : in anonymous timestamp )
                                     return              anonymous string;
                                        
    //! Formats the date part of a timestamp in mm/dd/yyyy format 
    function format_timestamp_mdy  ( input          : in anonymous timestamp )
                                     return              anonymous string;

    //! Formats the date part of a timestamp in ddhhmmZ MMM yy format 
    function format_timestamp_dtg  ( input          : in anonymous timestamp )
                                     return              anonymous string;

    //! Formats the time part of a timestamp in hh:mm:ss.sss 
    //! format. Any values after the min_field will be 
    //! truncated, and the min_field can be displayed as a 
    //! decimal value. 
    function format_timestamp_time ( input          : in anonymous timestamp,
                                     min_field      : in timestamp_field,
                                     places         : in anonymous integer,
                                     truncate       : in anonymous boolean )
                                     return              anonymous string;
                                        
    //! Formats the time part of a timestamp in hhmmss.sss 
    //! format. Any values after the min_field will be 
    //! truncated, and the min_field can be displayed as a 
    //! decimal value. 
    function format_timestamp_compact_time ( input          : in anonymous timestamp,
                                             min_field      : in timestamp_field,
                                             places         : in anonymous integer,
                                             truncate       : in anonymous boolean )
                                             return              anonymous string;

end domain;
