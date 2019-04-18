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
%#   File: xde-cattached-unstatement-cxx.t
%#
%# Author: $author$
%#   Date: 4/29/2008
%#
%#    $Id$
%#
%#############################################################################
%with(%
%vNullAttached,%(%else-then(%Unclass_name%,%(vNull%Attached%)%)%)%,%
%Create,%(%else-then(%Create%,%(CREATE)%)%)%,%
%Destroy,%(%else-then(%Destroy%,%(DESTROY)%)%)%,%
%%(%
%%Attached% attached;
%indent%    bool is;
%indent%    int err;

%indent%    %_if_% (!(is = (%vNullAttached% != (attached = Attached()))))
%indent%        %_if_% (onlyCreated)
%indent%            %_return_% e_ERROR_NOT_ATTACHED;
%indent%        %_else_%
%indent%        %_if_% (0 > (err = SetIsCreated(false)))
%indent%            %_return_% -err;
%indent%        %_else_%
%indent%        %_return_% e_ERROR_NONE;
%indent%    %_else_%
%indent%    %_if_% ((error = Detach(attached, is)))
%indent%        %_return_% error;

%indent%    %_if_% (!(is = GetIsCreated()))
%indent%    %_if_% (onlyCreated)
%indent%        %_return_% e_ERROR_NOT_CREATED;
%indent%    %_else_%
%indent%    %_return_% e_ERROR_NONE;

%indent%    error = %Destroy%(attached%())%;

%indent%    %_if_% (0 > (err = SetIsCreated(false)) && !error)
%indent%        error = -err%
%)%)%