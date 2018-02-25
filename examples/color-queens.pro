% Copyright 2017 by M. Ben-Ari. GNU GPL. See copyright.txt.

:- use_module('../src/dpll').

%  For queens_n_k:
%  Given a n x n chess board place queens of k colors
%    on all squares so that no queens of the same color
%    appear in any row column or diagonal

% queens_2_2 obviously unsatisfiable
queens_2_2 :-
  dpll(
  [
  [p111, p112], 
  [p121, p122],
  [p211, p212],
  [p221, p222],

  [~p111, ~p121],
  [~p111, ~p211],
  [~p111, ~p221],

  [~p112, ~p122],
  [~p112, ~p212],
  [~p112, ~p222],

  [~p121, ~p211],
  [~p121, ~p221],

  [~p122, ~p212],
  [~p122, ~p222],

  [~p211, ~p221],

  [~p212, ~p222]
	], _).

% queens_2_3 obviously unsatisfiable
queens_2_3 :-
  dpll(
  [
  [p111, p112, p113], 
  [p121, p122, p123],
  [p211, p212, p213],
  [p221, p222, p223],

  [~p111, ~p121],
  [~p111, ~p211],
  [~p111, ~p221],

  [~p112, ~p122],
  [~p112, ~p212],
  [~p112, ~p222],

  [~p113, ~p123],
  [~p113, ~p213],
  [~p113, ~p223],

  [~p121, ~p211],
  [~p121, ~p221],

  [~p122, ~p212],
  [~p122, ~p222],

  [~p123, ~p213],
  [~p123, ~p223],

  [~p211, ~p221],

  [~p212, ~p222],

  [~p213, ~p223]
	], _).

% queens_2_4 obviously satisfiable
queens2_4 :-
  dpll(
  [
  [p111, p112, p113, p114], 
  [p121, p122, p123, p124],
  [p211, p212, p213, p214],
  [p221, p222, p223, p224],

  [~p111, ~p121],
  [~p111, ~p211],
  [~p111, ~p221],

  [~p112, ~p122],
  [~p112, ~p212],
  [~p112, ~p222],

  [~p113, ~p123],
  [~p113, ~p213],
  [~p113, ~p223],

  [~p114, ~p124],
  [~p114, ~p214],
  [~p114, ~p224],

  [~p121, ~p211],
  [~p121, ~p221],

  [~p122, ~p212],
  [~p122, ~p222],

  [~p123, ~p213],
  [~p123, ~p223],

  [~p124, ~p214],
  [~p124, ~p224],

  [~p211, ~p221],

  [~p212, ~p222],

  [~p213, ~p223],

  [~p214, ~p224]
	], _).

% queens_4_4 unsatisfiable
queens_4_4 :-
  dpll(
  [
  [p111, p112, p113, p114], 
  [p121, p122, p123, p124], 
  [p131, p132, p133, p134], 
  [p141, p142, p143, p144], 

  [p211, p212, p213, p214], 
  [p221, p222, p223, p224], 
  [p231, p232, p233, p234], 
  [p241, p242, p243, p244], 

  [p311, p312, p313, p314], 
  [p321, p322, p323, p324], 
  [p331, p332, p333, p334], 
  [p341, p342, p343, p344], 

  [p411, p412, p413, p414], 
  [p421, p422, p423, p424], 
  [p431, p432, p433, p434], 
  [p441, p442, p443, p444], 

% Exclusion color 1  
  [~p111, ~p121], [~p111, ~p131], [~p111, ~p141], 
  [~p121, ~p131], [~p121, ~p141], [~p131, ~p141],
  [~p211, ~p221], [~p211, ~p231], [~p211, ~p241],
  [~p221, ~p231], [~p221, ~p241], [~p231, ~p241],
  [~p311, ~p321], [~p311, ~p331], [~p311, ~p341],
  [~p321, ~p331], [~p321, ~p341], [~p331, ~p341],
  [~p411, ~p421], [~p411, ~p431], [~p411, ~p441],
  [~p421, ~p431], [~p421, ~p441], [~p431, ~p441],
  [~p111, ~p211], [~p111, ~p311], [~p111, ~p411],
  [~p211, ~p311], [~p211, ~p411], [~p311, ~p411],
  [~p121, ~p221], [~p121, ~p321], [~p121, ~p421],
  [~p221, ~p321], [~p221, ~p421], [~p321, ~p421],
  [~p131, ~p231], [~p131, ~p331], [~p131, ~p431],
  [~p231, ~p331], [~p231, ~p431], [~p331, ~p431],
  [~p141, ~p241], [~p141, ~p341], [~p141, ~p441],
  [~p241, ~p341], [~p241, ~p441], [~p341, ~p441],
  [~p111, ~p221], [~p111, ~p331], [~p111, ~p441],
  [~p121, ~p211], [~p121, ~p231], [~p121, ~p341],  
  [~p131, ~p221], [~p131, ~p311], [~p131, ~p241],
  [~p141, ~p231], [~p141, ~p321], [~p141, ~p411],
  [~p211, ~p321], [~p211, ~p431],
  [~p221, ~p311], [~p221, ~p331], [~p221, ~p441],
  [~p231, ~p321], [~p231, ~p411], [~p231, ~p341],
  [~p241, ~p331], [~p241, ~p421],
  [~p311, ~p421], [~p321, ~p411], [~p321, ~p431],
  [~p331, ~p421], [~p331, ~p441],
  [~p341, ~p431],

% Exclusion color 2
  [~p112, ~p122], [~p112, ~p132], [~p112, ~p142], 
  [~p122, ~p132], [~p122, ~p142], [~p132, ~p142],
  [~p212, ~p222], [~p212, ~p232], [~p212, ~p242],
  [~p222, ~p232], [~p222, ~p242], [~p232, ~p242],
  [~p312, ~p322], [~p312, ~p332], [~p312, ~p342],
  [~p322, ~p332], [~p322, ~p342], [~p332, ~p342],
  [~p412, ~p422], [~p412, ~p432], [~p412, ~p442],
  [~p422, ~p432], [~p422, ~p442], [~p432, ~p442],
  [~p112, ~p212], [~p112, ~p312], [~p112, ~p412],
  [~p212, ~p312], [~p212, ~p412], [~p312, ~p412],
  [~p122, ~p222], [~p122, ~p322], [~p122, ~p422],
  [~p222, ~p322], [~p222, ~p422], [~p322, ~p422],
  [~p132, ~p232], [~p132, ~p332], [~p132, ~p432],
  [~p232, ~p332], [~p232, ~p432], [~p332, ~p432],
  [~p142, ~p242], [~p142, ~p342], [~p142, ~p442],
  [~p242, ~p342], [~p242, ~p442], [~p342, ~p442],
  [~p112, ~p222], [~p112, ~p332], [~p112, ~p442],
  [~p122, ~p212], [~p122, ~p232], [~p122, ~p342],  
  [~p132, ~p222], [~p132, ~p312], [~p132, ~p242],
  [~p142, ~p232], [~p142, ~p322], [~p142, ~p412],
  [~p212, ~p322], [~p212, ~p432],
  [~p222, ~p312], [~p222, ~p332], [~p222, ~p442],
  [~p232, ~p322], [~p232, ~p412], [~p232, ~p342],
  [~p242, ~p332], [~p242, ~p422],
  [~p312, ~p422], [~p322, ~p412], [~p322, ~p432],
  [~p332, ~p422], [~p332, ~p442],
  [~p342, ~p432],

% Exclusion color 3
  [~p113, ~p123], [~p113, ~p133], [~p113, ~p143], 
  [~p123, ~p133], [~p123, ~p143], [~p133, ~p143],
  [~p213, ~p223], [~p213, ~p233], [~p213, ~p243],
  [~p223, ~p233], [~p223, ~p243], [~p233, ~p243],
  [~p313, ~p323], [~p313, ~p333], [~p313, ~p343],
  [~p323, ~p333], [~p323, ~p343], [~p333, ~p343],
  [~p413, ~p423], [~p413, ~p433], [~p413, ~p443],
  [~p423, ~p433], [~p423, ~p443], [~p433, ~p443],
  [~p113, ~p213], [~p113, ~p313], [~p113, ~p413],
  [~p213, ~p313], [~p213, ~p413], [~p313, ~p413],
  [~p123, ~p223], [~p123, ~p323], [~p123, ~p423],
  [~p223, ~p323], [~p223, ~p423], [~p323, ~p423],
  [~p133, ~p233], [~p133, ~p333], [~p133, ~p433],
  [~p233, ~p333], [~p233, ~p433], [~p333, ~p433],
  [~p143, ~p243], [~p143, ~p343], [~p143, ~p443],
  [~p243, ~p343], [~p243, ~p443], [~p343, ~p443],
  [~p113, ~p223], [~p113, ~p333], [~p113, ~p443],
  [~p123, ~p213], [~p123, ~p233], [~p123, ~p343],  
  [~p133, ~p223], [~p133, ~p313], [~p133, ~p243],
  [~p143, ~p233], [~p143, ~p323], [~p143, ~p413],
  [~p213, ~p323], [~p213, ~p433],
  [~p223, ~p313], [~p223, ~p333], [~p223, ~p443],
  [~p233, ~p323], [~p233, ~p413], [~p233, ~p343],
  [~p243, ~p333], [~p243, ~p423],
  [~p313, ~p423], [~p323, ~p413], [~p323, ~p433],
  [~p333, ~p423], [~p333, ~p443],
  [~p343, ~p433],

% Exclusion color 4
  [~p114, ~p124], [~p114, ~p134], [~p114, ~p144], 
  [~p124, ~p134], [~p124, ~p144], [~p134, ~p144],
  [~p214, ~p224], [~p214, ~p234], [~p214, ~p244],
  [~p224, ~p234], [~p224, ~p244], [~p234, ~p244],
  [~p314, ~p324], [~p314, ~p334], [~p314, ~p344],
  [~p324, ~p334], [~p324, ~p344], [~p334, ~p344],
  [~p414, ~p424], [~p414, ~p434], [~p414, ~p444],
  [~p424, ~p434], [~p424, ~p444], [~p434, ~p444],
  [~p114, ~p214], [~p114, ~p314], [~p114, ~p414],
  [~p214, ~p314], [~p214, ~p414], [~p314, ~p414],
  [~p124, ~p224], [~p124, ~p324], [~p124, ~p424],
  [~p224, ~p324], [~p224, ~p424], [~p324, ~p424],
  [~p134, ~p234], [~p134, ~p334], [~p134, ~p434],
  [~p234, ~p334], [~p234, ~p434], [~p334, ~p434],
  [~p144, ~p244], [~p144, ~p344], [~p144, ~p444],
  [~p244, ~p344], [~p244, ~p444], [~p344, ~p444],
  [~p114, ~p224], [~p114, ~p334], [~p114, ~p444],
  [~p124, ~p214], [~p124, ~p234], [~p124, ~p344],  
  [~p134, ~p224], [~p134, ~p314], [~p134, ~p244],
  [~p144, ~p234], [~p144, ~p324], [~p144, ~p414],
  [~p214, ~p324], [~p214, ~p434],
  [~p224, ~p314], [~p224, ~p334], [~p224, ~p444],
  [~p234, ~p324], [~p234, ~p414], [~p234, ~p344],
  [~p244, ~p334], [~p244, ~p424],
  [~p314, ~p424], [~p324, ~p414], [~p324, ~p434],
  [~p334, ~p424], [~p334, ~p444],
  [~p344, ~p434]
	], _).

% queens_4_5 satisfiable
queens_4_5 :-
  dpll(
  [
  [p111, p112, p113, p114, p115], 
  [p121, p122, p123, p124, p125], 
  [p131, p132, p133, p134, p135], 
  [p141, p142, p143, p144, p145], 

  [p211, p212, p213, p214, p215], 
  [p221, p222, p223, p224, p225], 
  [p231, p232, p233, p234, p235], 
  [p241, p242, p243, p244, p245], 

  [p311, p312, p313, p314, p315], 
  [p321, p322, p323, p324, p325], 
  [p331, p332, p333, p334, p335], 
  [p341, p342, p343, p344, p345], 

  [p411, p412, p413, p414, p415], 
  [p421, p422, p423, p424, p425], 
  [p431, p432, p433, p434, p435], 
  [p441, p442, p443, p444, p445], 

% Exclusion color 1  
  [~p111, ~p121], [~p111, ~p131], [~p111, ~p141], 
  [~p121, ~p131], [~p121, ~p141], [~p131, ~p141],
  [~p211, ~p221], [~p211, ~p231], [~p211, ~p241],
  [~p221, ~p231], [~p221, ~p241], [~p231, ~p241],
  [~p311, ~p321], [~p311, ~p331], [~p311, ~p341],
  [~p321, ~p331], [~p321, ~p341], [~p331, ~p341],
  [~p411, ~p421], [~p411, ~p431], [~p411, ~p441],
  [~p421, ~p431], [~p421, ~p441], [~p431, ~p441],
  [~p111, ~p211], [~p111, ~p311], [~p111, ~p411],
  [~p211, ~p311], [~p211, ~p411], [~p311, ~p411],
  [~p121, ~p221], [~p121, ~p321], [~p121, ~p421],
  [~p221, ~p321], [~p221, ~p421], [~p321, ~p421],
  [~p131, ~p231], [~p131, ~p331], [~p131, ~p431],
  [~p231, ~p331], [~p231, ~p431], [~p331, ~p431],
  [~p141, ~p241], [~p141, ~p341], [~p141, ~p441],
  [~p241, ~p341], [~p241, ~p441], [~p341, ~p441],
  [~p111, ~p221], [~p111, ~p331], [~p111, ~p441],
  [~p121, ~p211], [~p121, ~p231], [~p121, ~p341],  
  [~p131, ~p221], [~p131, ~p311], [~p131, ~p241],
  [~p141, ~p231], [~p141, ~p321], [~p141, ~p411],
  [~p211, ~p321], [~p211, ~p431],
  [~p221, ~p311], [~p221, ~p331], [~p221, ~p441],
  [~p231, ~p321], [~p231, ~p411], [~p231, ~p341],
  [~p241, ~p331], [~p241, ~p421],
  [~p311, ~p421], [~p321, ~p411], [~p321, ~p431],
  [~p331, ~p421], [~p331, ~p441],
  [~p341, ~p431],

% Exclusion color 2
  [~p112, ~p122], [~p112, ~p132], [~p112, ~p142], 
  [~p122, ~p132], [~p122, ~p142], [~p132, ~p142],
  [~p212, ~p222], [~p212, ~p232], [~p212, ~p242],
  [~p222, ~p232], [~p222, ~p242], [~p232, ~p242],
  [~p312, ~p322], [~p312, ~p332], [~p312, ~p342],
  [~p322, ~p332], [~p322, ~p342], [~p332, ~p342],
  [~p412, ~p422], [~p412, ~p432], [~p412, ~p442],
  [~p422, ~p432], [~p422, ~p442], [~p432, ~p442],
  [~p112, ~p212], [~p112, ~p312], [~p112, ~p412],
  [~p212, ~p312], [~p212, ~p412], [~p312, ~p412],
  [~p122, ~p222], [~p122, ~p322], [~p122, ~p422],
  [~p222, ~p322], [~p222, ~p422], [~p322, ~p422],
  [~p132, ~p232], [~p132, ~p332], [~p132, ~p432],
  [~p232, ~p332], [~p232, ~p432], [~p332, ~p432],
  [~p142, ~p242], [~p142, ~p342], [~p142, ~p442],
  [~p242, ~p342], [~p242, ~p442], [~p342, ~p442],
  [~p112, ~p222], [~p112, ~p332], [~p112, ~p442],
  [~p122, ~p212], [~p122, ~p232], [~p122, ~p342],  
  [~p132, ~p222], [~p132, ~p312], [~p132, ~p242],
  [~p142, ~p232], [~p142, ~p322], [~p142, ~p412],
  [~p212, ~p322], [~p212, ~p432],
  [~p222, ~p312], [~p222, ~p332], [~p222, ~p442],
  [~p232, ~p322], [~p232, ~p412], [~p232, ~p342],
  [~p242, ~p332], [~p242, ~p422],
  [~p312, ~p422], [~p322, ~p412], [~p322, ~p432],
  [~p332, ~p422], [~p332, ~p442],
  [~p342, ~p432],

% Exclusion color 3
  [~p113, ~p123], [~p113, ~p133], [~p113, ~p143], 
  [~p123, ~p133], [~p123, ~p143], [~p133, ~p143],
  [~p213, ~p223], [~p213, ~p233], [~p213, ~p243],
  [~p223, ~p233], [~p223, ~p243], [~p233, ~p243],
  [~p313, ~p323], [~p313, ~p333], [~p313, ~p343],
  [~p323, ~p333], [~p323, ~p343], [~p333, ~p343],
  [~p413, ~p423], [~p413, ~p433], [~p413, ~p443],
  [~p423, ~p433], [~p423, ~p443], [~p433, ~p443],
  [~p113, ~p213], [~p113, ~p313], [~p113, ~p413],
  [~p213, ~p313], [~p213, ~p413], [~p313, ~p413],
  [~p123, ~p223], [~p123, ~p323], [~p123, ~p423],
  [~p223, ~p323], [~p223, ~p423], [~p323, ~p423],
  [~p133, ~p233], [~p133, ~p333], [~p133, ~p433],
  [~p233, ~p333], [~p233, ~p433], [~p333, ~p433],
  [~p143, ~p243], [~p143, ~p343], [~p143, ~p443],
  [~p243, ~p343], [~p243, ~p443], [~p343, ~p443],
  [~p113, ~p223], [~p113, ~p333], [~p113, ~p443],
  [~p123, ~p213], [~p123, ~p233], [~p123, ~p343],  
  [~p133, ~p223], [~p133, ~p313], [~p133, ~p243],
  [~p143, ~p233], [~p143, ~p323], [~p143, ~p413],
  [~p213, ~p323], [~p213, ~p433],
  [~p223, ~p313], [~p223, ~p333], [~p223, ~p443],
  [~p233, ~p323], [~p233, ~p413], [~p233, ~p343],
  [~p243, ~p333], [~p243, ~p423],
  [~p313, ~p423], [~p323, ~p413], [~p323, ~p433],
  [~p333, ~p423], [~p333, ~p443],
  [~p343, ~p433],

% Exclusion color 4
  [~p114, ~p124], [~p114, ~p134], [~p114, ~p144], 
  [~p124, ~p134], [~p124, ~p144], [~p134, ~p144],
  [~p214, ~p224], [~p214, ~p234], [~p214, ~p244],
  [~p224, ~p234], [~p224, ~p244], [~p234, ~p244],
  [~p314, ~p324], [~p314, ~p334], [~p314, ~p344],
  [~p324, ~p334], [~p324, ~p344], [~p334, ~p344],
  [~p414, ~p424], [~p414, ~p434], [~p414, ~p444],
  [~p424, ~p434], [~p424, ~p444], [~p434, ~p444],
  [~p114, ~p214], [~p114, ~p314], [~p114, ~p414],
  [~p214, ~p314], [~p214, ~p414], [~p314, ~p414],
  [~p124, ~p224], [~p124, ~p324], [~p124, ~p424],
  [~p224, ~p324], [~p224, ~p424], [~p324, ~p424],
  [~p134, ~p234], [~p134, ~p334], [~p134, ~p434],
  [~p234, ~p334], [~p234, ~p434], [~p334, ~p434],
  [~p144, ~p244], [~p144, ~p344], [~p144, ~p444],
  [~p244, ~p344], [~p244, ~p444], [~p344, ~p444],
  [~p114, ~p224], [~p114, ~p334], [~p114, ~p444],
  [~p124, ~p214], [~p124, ~p234], [~p124, ~p344],  
  [~p134, ~p224], [~p134, ~p314], [~p134, ~p244],
  [~p144, ~p234], [~p144, ~p324], [~p144, ~p414],
  [~p214, ~p324], [~p214, ~p434],
  [~p224, ~p314], [~p224, ~p334], [~p224, ~p444],
  [~p234, ~p324], [~p234, ~p414], [~p234, ~p344],
  [~p244, ~p334], [~p244, ~p424],
  [~p314, ~p424], [~p324, ~p414], [~p324, ~p434],
  [~p334, ~p424], [~p334, ~p444],
  [~p344, ~p434],

% Exclusion color 5
  [~p115, ~p125], [~p115, ~p135], [~p115, ~p145], 
  [~p125, ~p135], [~p125, ~p145], [~p135, ~p145],
  [~p215, ~p225], [~p215, ~p235], [~p215, ~p245],
  [~p225, ~p235], [~p225, ~p245], [~p235, ~p245],
  [~p315, ~p325], [~p315, ~p335], [~p315, ~p345],
  [~p325, ~p335], [~p325, ~p345], [~p335, ~p345],
  [~p415, ~p425], [~p415, ~p435], [~p415, ~p445],
  [~p425, ~p435], [~p425, ~p445], [~p435, ~p445],
  [~p115, ~p215], [~p115, ~p315], [~p115, ~p415],
  [~p215, ~p315], [~p215, ~p415], [~p315, ~p415],
  [~p125, ~p225], [~p125, ~p325], [~p125, ~p425],
  [~p225, ~p325], [~p225, ~p425], [~p325, ~p425],
  [~p135, ~p235], [~p135, ~p335], [~p135, ~p435],
  [~p235, ~p335], [~p235, ~p435], [~p335, ~p435],
  [~p145, ~p245], [~p145, ~p345], [~p145, ~p445],
  [~p245, ~p345], [~p245, ~p445], [~p345, ~p445],
  [~p115, ~p225], [~p115, ~p335], [~p115, ~p445],
  [~p125, ~p215], [~p125, ~p235], [~p125, ~p345],  
  [~p135, ~p225], [~p135, ~p315], [~p135, ~p245],
  [~p145, ~p235], [~p145, ~p325], [~p145, ~p415],
  [~p215, ~p325], [~p215, ~p435],
  [~p225, ~p315], [~p225, ~p335], [~p225, ~p445],
  [~p235, ~p325], [~p235, ~p415], [~p235, ~p345],
  [~p245, ~p335], [~p245, ~p425],
  [~p315, ~p425], [~p325, ~p415], [~p325, ~p435],
  [~p335, ~p425], [~p335, ~p445],
  [~p345, ~p435]
	], _).
