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
%#   File: xde-cxx-class-parameter-values.t
%#
%# Author: $author$
%#   Date: 4/30/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%parameter_values,%(%else-then(%parameter_values%,%()%)%)%,%
%apply_to,%(%else-then(%apply_to%,%(apply_to)%)%)%,%
%%(%
%%%apply%(()%%%
%
%%parse(%parameter_values%,;,,,%(%
%%with(%
%p_n,%(%else-then(%left(%p_n_v%,=)%,%(%else(%right(%p_n_v%,=)%,%(%p_n_v%)%)%)%)%)%,%
%p_v,%(%else-then(%right(%p_n_v%,=)%,%()%)%)%,%
%%(%
%%%%p_n%%(,)%%p_v%%(,)%%%
%
%)%)%%
%)%,p_n_v)%%
%%%%%%(()%%apply_to%%())%%%%())%%%%
%)%)%