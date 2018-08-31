% projectOptions_demo is a nullary function which initialises a struct
% containing the preferences and details for a particular project; in this case
% the demo for the toolbox. It should be edited to taste before a project is
% run, and a new one created for each substantially different project (though
% the options struct will be saved each time the project is run under a new
% name, so all will not be lost if you don't do this).
%
% For a guide to how to fill out the fields in this file, consult the
% documentation pages.
%
% Cai Wingfield 11-2009, 6-2010, 7-2010
%__________________________________________________________________________
% Copyright (C) 2010 Medical Research Council

function userOptions = defineUserOptions2();

%% Project details
% This name identifies a collection of files which all belong to the same run of a project.
userOptions.analysisName = 'DEMO2'; % this is renamed in the code for demos 3-4.

% This is the root directory of the project.
 userOptions.rootPath = [pwd,filesep,'DEMO2'];

% The path leading to where the scans are stored (not including subject-specific identifiers).
% "[[subjectName]]" should be used as a placeholder to denote an entry in userOptions.subjectNames
% "[[betaIdentifier]]" should be used as a placeholder to denote an output of betaCorrespondence.m if SPM is not being used; or an arbitrary filename if SPM is being used.
userOptions.betaPath = [pwd,filesep,'demoTest',filesep,'[[subjectName]]',filesep,'[[betaIdentifier]]'];

%%%%%%%%%%%%%%%%%%%%%%%%
%% EXPERIMENTAL SETUP %%
%%%%%%%%%%%%%%%%%%%%%%%%

% The list of subjects to be included in the study.
userOptions.subjectNames = { ...
	'subject1', ...
	'subject2', ...
	'subject3', ...
	'subject4', ...
	'subject5', ...
	'subject6', ...
	'subject7', ...
	'subject8', ...
	'subject9', ...
	'subject10', ...
	'subject11', ...
	'subject12' ...
	};

% The default colour label for RDMs corresponding to RoI masks (as opposed to models).
userOptions.RoIColor = [0 0 1];
userOptions.ModelColor = [0 1 0];

%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ANALYSIS PREFERENCES %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

%% First-order analysis

% Text lables which may be attached to the conditions for MDS plots.
userOptions.conditionLabels = { ...
	'red01', ...
	'red02', ...
	'red03', ...
	'red04', ...
	'red05', ...
	'red06', ...
	'red07', ...
	'red08', ...
	'red09', ...
	'red10', ...
	'red11', ...
	'red12', ...
	'red13', ...
	'red14', ...
	'red15', ...
	'red16', ...
	'green01', ...
	'green02', ...
	'green03', ...
	'green04', ...
	'green05', ...
	'green06', ...
	'green07', ...
	'green08', ...
	'green09', ...
	'green10', ...
	'green11', ...
	'green12', ...
	'green13', ...
	'green14', ...
	'green15', ...
	'green16', ...
	'blue01', ...
	'blue02', ...
	'blue03', ...
	'blue04', ...
	'blue05', ...
	'blue06', ...
	'blue07', ...
	'blue08', ...
	'blue09', ...
	'blue10', ...
	'blue11', ...
	'blue12', ...
	'blue13', ...
	'blue14', ...
	'blue15', ...
	'blue16', ...
	'orange01', ...
	'orange02', ...
	'orange03', ...
	'orange04', ...
	'orange05', ...
	'orange06', ...
	'orange07', ...
	'orange08', ...
	'orange09', ...
	'orange10', ...
	'orange11', ...
	'orange12', ...
	'orange13', ...
	'orange14', ...
	'orange15', ...
	'orange16' ...
	};
[userOptions.alternativeConditionLabels{1:64}] = deal(' ');
userOptions.useAlternativeConditionLabels = true;

% Colours for the conditions.
userOptions.conditionColours = kron([1 0 0; 0 1 0; 0 0 1; 1 .7 0], ones(16,1));

% Groups to plot convex hulls around
userOptions.convexHulls = [ones(1,16) 2*ones(1,16) 3*ones(1,16) 4*ones(1,16)];

% Which distance measure to use when calculating first-order RDMs.
userOptions.distance = 'Correlation';

%% Second-order analysis

% Which similarity-measure is used for the second-order comparison.
userOptions.distanceMeasure = 'Spearman';

% How many permutations should be used to test the significance of the fits?  (10,000 highly recommended.)
userOptions.significanceTestPermutations = 1000; % should be 10000

% Should RDMs' entries be rank transformed into [0,1] before they're displayed?
userOptions.rankTransform = true;

% RDM Colourscheme
userOptions.colourScheme = jet(64);

% Should rubber bands be shown on the MDS plot?
userOptions.rubberbands = true;

% What criterion shoud be minimised in MDS display?
userOptions.criterion = 'metricstress';

% How should figures be outputted?
userOptions.displayFigures = true;
userOptions.saveFiguresPDF = true;
userOptions.saveFiguresFig = false;
userOptions.saveFiguresPS = false;
userOptions.saveFiguresEps = false;

% Bootstrap options
userOptions.nResamplings = 1000;
userOptions.resampleSubjects = true;
userOptions.resampleConditions = true;

% Ceiling Estimation
% Ceiling Estimation
userOptions.RDMname = 'referenceRDM';
userOptions.plottingStyle = 2;

% userOptions.forcePromptReply = 'R';