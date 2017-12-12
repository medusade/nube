%########################################################################
%# Copyright (c) 1988-2010 $organization$  
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: xenede-cxx-ifdef-comment.t
%#
%# Author: $author$           
%#   Date: 5/2/2010
%########################################################################
%with(%
%%(%
%%cc_%%
%%else(%cpp_comments%,%(%do(%first_comment%)%%if(%long_ifdef_comments%,%(
%do(%middle_comment%)%)%)% %ifname%
%do(%last_comment%)%)%,%(%do(%left_comment%)% %ifname% %do(%right_comment%)%)%)%%
%%_cc%%
%)%)%