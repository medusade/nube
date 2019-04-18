%#############################################################################
%# Copyright (c) 1988-2007 $author$
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
%#   File: xde-crsa-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 12/29/2007
%#
%#    $Id$
%#
%# Template for creating XDE derived cRSA C++ class .hxx/.cxx file
%#
%#############################################################################
%with(%
%c,%(%else-then(%_C%,%(%tolower(%C%)%)%)%)%,%
%forprefix,%(%else-then(%forprefix%,%(xde)%)%)%,%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%fileprefix,%(%else-then(%fileprefix%,%(%forprefix%-)%)%)%,%
%ifdef_bn,%(%else-then(%ifdef_bn%,%(_CRSA_BN:BIGNUM implementation=bn_msb.h)%)%)%,%
%ifdef_mp,%(%else-then(%ifdef_mp%,%(_CRSA_MP:MP_INT implementation=mpz_msb.h)%)%)%,%
%ifdef_cmpu,%(%else-then(%ifdef_cmpu%,%(%MPUnsigned%)%)%)%,%
%ifdef,%(%else-then(%ifdef%,%(%if(%is_ifdef%,%(%ifdef_bn%/%ifdef_cmpu%;%ifdef_mp%)%)%)%)%)%,%
%function_ifdef,%(%else-then(%function_ifdef%,%(%left(%ifdef_bn%,=)%/%left(%ifdef_cmpu%,=)%;%left(%ifdef_mp%,=)%)%)%)%,%
%class,%(%else-then(%class%,%(%C%%class_name%)%)%)%,%
%file,%(%else-then(%file%,%(%class%)%)%)%,%
%%(%
%%include(%filepath%/%fileprefix%hxx-cxx.t)%%
%)%)%