package Term::Choose::Constants;

use warnings;
use strict;
use 5.008003;

our $VERSION = '1.621';

use Exporter qw( import );

our @EXPORT_OK = qw(
        ROW COL
        LF CR
        HIDE_CURSOR SHOW_CURSOR WIDTH_CURSOR
        MAX_ROW_MOUSE_1003 MAX_COL_MOUSE_1003
        GET_CURSOR_POSITION
        SET_ANY_EVENT_MOUSE_1003 SET_EXT_MODE_MOUSE_1005 SET_SGR_EXT_MODE_MOUSE_1006
        UNSET_ANY_EVENT_MOUSE_1003 UNSET_EXT_MODE_MOUSE_1005 UNSET_SGR_EXT_MODE_MOUSE_1006
        CLEAR_SCREEN CLEAR_TO_END_OF_SCREEN CLEAR_TO_END_OF_LINE
        RESET REVERSE UNDERLINE BOLD_UNDERLINE BEEP
        NEXT_get_key
        CONTROL_SPACE CONTROL_A CONTROL_B CONTROL_C CONTROL_D CONTROL_E CONTROL_F CONTROL_H KEY_BTAB CONTROL_I KEY_TAB
        CONTROL_K KEY_ENTER CONTROL_U KEY_ESC KEY_SPACE KEY_h KEY_j KEY_k KEY_l KEY_q KEY_Tilde KEY_BSPACE
        VK_PAGE_UP VK_PAGE_DOWN VK_END VK_HOME VK_LEFT VK_UP VK_RIGHT VK_DOWN VK_INSERT VK_DELETE
        VK_CODE_PAGE_UP VK_CODE_PAGE_DOWN VK_CODE_END VK_CODE_HOME VK_CODE_LEFT VK_CODE_UP VK_CODE_RIGHT VK_CODE_DOWN
        VK_CODE_INSERT VK_CODE_DELETE
        MOUSE_WHEELED
        LEFTMOST_BUTTON_PRESSED RIGHTMOST_BUTTON_PRESSED FROM_LEFT_2ND_BUTTON_PRESSED
);

our %EXPORT_TAGS = (
    choose => [ qw(
        ROW COL
        LF CR
        WIDTH_CURSOR
        MAX_ROW_MOUSE_1003 MAX_COL_MOUSE_1003
        NEXT_get_key
        CONTROL_SPACE CONTROL_A CONTROL_B CONTROL_C CONTROL_D CONTROL_E CONTROL_F CONTROL_H KEY_BTAB CONTROL_I KEY_TAB
        KEY_ENTER KEY_SPACE KEY_h KEY_j KEY_k KEY_l KEY_q KEY_Tilde KEY_BSPACE
        VK_PAGE_UP VK_PAGE_DOWN VK_END VK_HOME VK_LEFT VK_UP VK_RIGHT VK_DOWN VK_INSERT VK_DELETE
    ) ],
    form => [ qw(
        NEXT_get_key
        CONTROL_A CONTROL_B CONTROL_D CONTROL_E CONTROL_F CONTROL_H KEY_BTAB KEY_TAB CONTROL_K CONTROL_U KEY_ENTER
        KEY_SPACE KEY_h KEY_j KEY_k KEY_l KEY_BSPACE KEY_ESC
        VK_PAGE_UP VK_PAGE_DOWN VK_END VK_HOME VK_LEFT VK_UP VK_RIGHT VK_DOWN VK_INSERT VK_DELETE
    ) ],
    screen => [ qw(
        CLEAR_SCREEN CLEAR_TO_END_OF_SCREEN CLEAR_TO_END_OF_LINE
        RESET REVERSE UNDERLINE BOLD_UNDERLINE HIDE_CURSOR SHOW_CURSOR BEEP
    ) ],
    linux  => [ qw(
        GET_CURSOR_POSITION WIDTH_CURSOR
        SET_ANY_EVENT_MOUSE_1003 SET_EXT_MODE_MOUSE_1005 SET_SGR_EXT_MODE_MOUSE_1006
        UNSET_ANY_EVENT_MOUSE_1003 UNSET_EXT_MODE_MOUSE_1005 UNSET_SGR_EXT_MODE_MOUSE_1006
        NEXT_get_key
        KEY_BTAB KEY_ESC
        VK_PAGE_UP VK_PAGE_DOWN VK_END VK_HOME VK_LEFT VK_UP VK_RIGHT VK_DOWN VK_INSERT VK_DELETE
    ) ],
    win32  => [ qw(
        NEXT_get_key
        CONTROL_SPACE
        VK_PAGE_UP VK_PAGE_DOWN VK_END VK_HOME VK_LEFT VK_UP VK_RIGHT VK_DOWN VK_INSERT VK_DELETE
        VK_CODE_PAGE_UP VK_CODE_PAGE_DOWN VK_CODE_END VK_CODE_HOME VK_CODE_LEFT VK_CODE_UP VK_CODE_RIGHT VK_CODE_DOWN
        VK_CODE_INSERT VK_CODE_DELETE
        MOUSE_WHEELED
        LEFTMOST_BUTTON_PRESSED RIGHTMOST_BUTTON_PRESSED FROM_LEFT_2ND_BUTTON_PRESSED
    ) ]
);


use constant {
    ROW => 0,
    COL => 1,
};

use constant {
    LF => "\n",
    CR => "\r",

    BEEP                    => "\a",
    CLEAR_SCREEN            => "\e[H\e[J",
    CLEAR_TO_END_OF_SCREEN  => "\e[0J",
    CLEAR_TO_END_OF_LINE    => "\e[K",
    RESET                   => "\e[0m",
    UNDERLINE               => "\e[4m",
    BOLD_UNDERLINE          => "\e[1m\e[4m",
    REVERSE                 => "\e[7m",

    HIDE_CURSOR  => "\e[?25l",
    SHOW_CURSOR  => "\e[?25h",
    WIDTH_CURSOR => 1,
};

use constant {
    GET_CURSOR_POSITION => "\e[6n",

    SET_ANY_EVENT_MOUSE_1003      => "\e[?1003h",
    SET_EXT_MODE_MOUSE_1005       => "\e[?1005h",
    SET_SGR_EXT_MODE_MOUSE_1006   => "\e[?1006h",
    UNSET_ANY_EVENT_MOUSE_1003    => "\e[?1003l",
    UNSET_EXT_MODE_MOUSE_1005     => "\e[?1005l",
    UNSET_SGR_EXT_MODE_MOUSE_1006 => "\e[?1006l",

    MAX_ROW_MOUSE_1003 => 223,
    MAX_COL_MOUSE_1003 => 223,

    MOUSE_WHEELED                => 0x0004,

    LEFTMOST_BUTTON_PRESSED      => 0x0001,
    RIGHTMOST_BUTTON_PRESSED     => 0x0002,
    FROM_LEFT_2ND_BUTTON_PRESSED => 0x0004,
};

use constant {
    NEXT_get_key  => -1,

    CONTROL_SPACE => 0x00,
    CONTROL_A     => 0x01,
    CONTROL_B     => 0x02,
    CONTROL_C     => 0x03,
    CONTROL_D     => 0x04,
    CONTROL_E     => 0x05,
    CONTROL_F     => 0x06,
    CONTROL_H     => 0x08,
    KEY_BTAB      => 0x08,
    CONTROL_I     => 0x09,
    KEY_TAB       => 0x09,
    CONTROL_K     => 0x0b,
    KEY_ENTER     => 0x0d,
    CONTROL_U     => 0x15,
    KEY_ESC       => 0x1b,
    KEY_SPACE     => 0x20,
    KEY_h         => 0x68,
    KEY_j         => 0x6a,
    KEY_k         => 0x6b,
    KEY_l         => 0x6c,
    KEY_q         => 0x71,
    KEY_Tilde     => 0x7e,
    KEY_BSPACE    => 0x7f,

    VK_PAGE_UP    => 333,
    VK_PAGE_DOWN  => 334,
    VK_END        => 335,
    VK_HOME       => 336,
    VK_LEFT       => 337,
    VK_UP         => 338,
    VK_RIGHT      => 339,
    VK_DOWN       => 340,
    VK_INSERT     => 345,
    VK_DELETE     => 346,

    VK_CODE_PAGE_UP   => 33,
    VK_CODE_PAGE_DOWN => 34,
    VK_CODE_END       => 35,
    VK_CODE_HOME      => 36,
    VK_CODE_LEFT      => 37,
    VK_CODE_UP        => 38,
    VK_CODE_RIGHT     => 39,
    VK_CODE_DOWN      => 40,
    VK_CODE_INSERT    => 45,
    VK_CODE_DELETE    => 46,
};



1;

__END__
