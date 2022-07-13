function varargout = Motor_de_posicion(varargin)
% MOTOR_DE_POSICION MATLAB code for Motor_de_posicion.fig
%      MOTOR_DE_POSICION, by itself, creates a new MOTOR_DE_POSICION or raises the existing
%      singleton*.
%
%      H = MOTOR_DE_POSICION returns the handle to a new MOTOR_DE_POSICION or the handle to
%      the existing singleton*.
%
%      MOTOR_DE_POSICION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOTOR_DE_POSICION.M with the given input arguments.
%
%      MOTOR_DE_POSICION('Property','Value',...) creates a new MOTOR_DE_POSICION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Motor_de_posicion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Motor_de_posicion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Motor_de_posicion

% Last Modified by GUIDE v2.5 06-Jul-2019 21:52:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Motor_de_posicion_OpeningFcn, ...
                   'gui_OutputFcn',  @Motor_de_posicion_OutputFcn, ...
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


% --- Executes just before Motor_de_posicion is made visible.
function Motor_de_posicion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Motor_de_posicion (see VARARGIN)

% Choose default command line output for Motor_de_posicion
handles.output = hObject;
axes(handles.axes4)
imshow('motor.png')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Motor_de_posicion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Motor_de_posicion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in modclasico.
function modclasico_Callback(hObject, eventdata, handles)
% hObject    handle to modclasico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Motor_de_posicion);
Model
% Hint: get(hObject,'Value') returns toggle state of modclasico


% --- Executes on button press in zieglerll.
function zieglerll_Callback(hObject, eventdata, handles)
% hObject    handle to zieglerll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Motor_de_posicion);
Ziegler
% Hint: get(hObject,'Value') returns toggle state of zieglerll


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Motor_de_posicion);
Continuo_Estados
% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in discretizacion.
function discretizacion_Callback(hObject, eventdata, handles)
% hObject    handle to discretizacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Motor_de_posicion);
Discretizacion
% Hint: get(hObject,'Value') returns toggle state of discretizacion


% --- Executes on button press in discrtespacio.
function discrtespacio_Callback(hObject, eventdata, handles)
% hObject    handle to discrtespacio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of discrtespacio


% --- Executes on button press in estados.
function estados_Callback(hObject, eventdata, handles)
% hObject    handle to estados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Motor_de_posicion);
Continuo_Estados
% Hint: get(hObject,'Value') returns toggle state of estados


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
