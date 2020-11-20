function out1 = dw2drwcdX(option,fig)
%DW2DRWCD Discrete wavelet 2-D read-write Cdata for image.
%   OUT1 = DW2DRWCD(OPTION,fig)

%   M. Misiti, Y. Misiti, G. Oppenheim, J.M. Poggi 12-Mar-96.
%   Last Revision: 30-Jul-2007.
%   Copyright 1995-2007 The MathWorks, Inc.
%   $Revision: 1.1 $

% Tag property of objects.
%-------------------------
tag_axeimgini = 'Axe_ImgIni';
tag_axeimgsyn = 'Axe_ImgSyn';

axe_handles = findobj(get(fig,'Children'),'flat','type','axes');
switch option
    case 'r_orig'
        %***********************************************%
        %** OPTION = 'r_orig' -  Read Original Image. **%
        %***********************************************%       
        Axe_ImgIni = findobj(axe_handles,'flat','Tag',tag_axeimgini);
        out1       = findobj(Axe_ImgIni,'type','image');

    case 'r_synt'
        %**************************************************%
        %** OPTION = 'r_synt' -  Read Synthesized Image. **%
        %**************************************************%
        Axe_ImgSyn = findobj(axe_handles,'flat','Tag',tag_axeimgsyn);
        out1       = findobj(Axe_ImgSyn,'type','image');

    otherwise
        errargtX(mfilename,'Unknown Option','msg');
        error('Wavelet:Invalid_ArgVal_Or_ArgType', ...
            'Invalid Input Argument.');
end
