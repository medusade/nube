%#############################################################################
%# Copyright (c) 1988-2008 $author$
%#
%# This software is provided by the author and contributors ``as is'' and
%# any express or implied warranties, including, but not limited to, the
%# implied warranties of merchantability and fitness for a particular purpose
%# are disclaimed.  In no event shall the author or contributors be liable
%# for any direct, indirect, incidental, special, exemplary, or consequential
%# damages (including, but not limited to, procurement of substitute goods
%# or services; loss of use, data, or profits; or business interruption)
%# however caused and on any theory of liability, whether in contract, strict
%# liability, or tort (including negligence or otherwise) arising in any way
%# out of the use of this software, even if advised of the possibility of
%# such damage.
%#
%#   File: xde-clexer-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 8/5/2008
%#
%#############################################################################
%with(%
%%(%
%
#undef yyIsLexer
#undef yyLexer
#undef cYYIsLexer
#define yyIsLexer c%Class_name%IsLexer
#define yyLexer c%Class_name%Lexer
#define cYYIsLexer c%Class_name%LexerExtends
#include "cyylexer.hxx"
#include "clexerdelegate.hxx"
#include "clexer.hxx"

%cc_%/**
 **********************************************************************
 *  Class: c%Class_name%LexerDelegate
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */%_cc%
class c%Class_name%LexerDelegate
: public cLexerDelegateT%lt%c%Class_name%LexerDelegate%gt%
{
public:
    typedef cLexerDelegateT%lt%c%Class_name%LexerDelegate%gt% cExtends;
    typedef c%Class_name%LexerDelegate cDelegate;
};

%cc_%/**
 **********************************************************************
 *  Class: c%Class_name%Lexer
 *
 * Author: %author%
 *   Date: %date%
 **********************************************************************
 */%_cc%
class c%Class_name%Lexer
: public cLexerT
  %lt%c%Class_name%LexerDelegate,c%Class_name%LexerExtends,
   cLexerSource,cCharStreamInterface%gt%
{
public:
    typedef cLexerT
    %lt%c%Class_name%LexerDelegate,c%Class_name%LexerExtends,
     cLexerSource,cCharStreamInterface%gt% cExtends;
    typedef c%Class_name%Lexer cDerives;

    %cc_%/**
     **********************************************************************
     * Constructor: c%Class_name%Lexer
     *
     *      Author: %author%
     *        Date: %date%
     **********************************************************************
     */%_cc%
    c%Class_name%Lexer
    (c%Class_name%LexerDelegate& delegate,
     cCharStreamInterface& out, 
     cCharStreamInterface& in, 
     cLexerSource &source)
    : cExtends(delegate, out, in, source) 
    {
    }
    %cc_%/**
     **********************************************************************
     * Function: yylex
     *
     *   Author: %author%
     *     Date: %date%
     *
     * This function is generated by flex.
     **********************************************************************
     */%_cc%
    virtual int yylex();
};
%
%)%)%