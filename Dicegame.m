function varargout = Dicegame(varargin)
% DICEGAME MATLAB code for Dicegame.fig
%      DICEGAME, by itself, creates a new DICEGAME or raises the existing
%      singleton*.
%
%      H = DICEGAME returns the handle to a new DICEGAME or the handle to
%      the existing singleton*.
%
%      DICEGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DICEGAME.M with the given input arguments.
%
%      DICEGAME('Property','Value',...) creates a new DICEGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Dicegame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Dicegame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Dicegame

% Last Modified by GUIDE v2.5 26-Sep-2020 12:38:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Dicegame_OpeningFcn, ...
                   'gui_OutputFcn',  @Dicegame_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Dicegame is made visible.
function Dicegame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Dicegame (see VARARGIN)

% Choose default command line output for Dicegame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Dicegame wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Dicegame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imshow('Dice.png')
t=randn
if(t>0 && t<0.2)
    t1='1';
    set(handles.edit1,'string',t1);
end
if(t>0.2 && t<0.4)
    t1='2';
    set(handles.edit1,'string',t1);
end
if(t>0.4 && t<0.6)
    t1='3';
    set(handles.edit1,'string',t1);
end
if(t>0.6 && t<0.7)
    t1='4';
    set(handles.edit1,'string',t1);
end
if(t>0.7 && t<0.8)
    t1='5';
    set(handles.edit1,'string',t1);
end
if(t>0.8 && t<1)
    t1='6';
    set(handles.edit1,'string',t1);
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
