function varargout = Continuo_Estados(varargin)
% CONTINUO_ESTADOS MATLAB code for Continuo_Estados.fig
%      CONTINUO_ESTADOS, by itself, creates a new CONTINUO_ESTADOS or raises the existing
%      singleton*.
%
%      H = CONTINUO_ESTADOS returns the handle to a new CONTINUO_ESTADOS or the handle to
%      the existing singleton*.
%
%      CONTINUO_ESTADOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CONTINUO_ESTADOS.M with the given input arguments.
%
%      CONTINUO_ESTADOS('Property','Value',...) creates a new CONTINUO_ESTADOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Continuo_Estados_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Continuo_Estados_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Continuo_Estados

% Last Modified by GUIDE v2.5 06-Jul-2019 21:35:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Continuo_Estados_OpeningFcn, ...
                   'gui_OutputFcn',  @Continuo_Estados_OutputFcn, ...
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


% --- Executes just before Continuo_Estados is made visible.
function Continuo_Estados_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Continuo_Estados (see VARARGIN)

% Choose default command line output for Continuo_Estados
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Continuo_Estados wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Continuo_Estados_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
asen=get(handles.slider1,'Value');
ta=asen;%0.04
set(handles.asentamiento,'String',ta)
handles.ta=ta;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
max=get(handles.slider2,'Value');
impulso=max;
set(handles.sobreimpulso,'String',impulso)
handles.impulso=impulso;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function asentamiento_Callback(hObject, eventdata, handles)
% hObject    handle to asentamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of asentamiento as text
%        str2double(get(hObject,'String')) returns contents of asentamiento as a double


% --- Executes during object creation, after setting all properties.
function asentamiento_CreateFcn(hObject, eventdata, handles)
% hObject    handle to asentamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sobreimpulso_Callback(hObject, eventdata, handles)
% hObject    handle to sobreimpulso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sobreimpulso as text
%        str2double(get(hObject,'String')) returns contents of sobreimpulso as a double


% --- Executes during object creation, after setting all properties.
function sobreimpulso_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sobreimpulso (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num=0.0274;
den=[8.8781e-12 1.2914e-5 7.6479e-4 0];
G=tf(num,den)
step(feedback(G,100))
legend('Planta');
axes(handles.axes1)
handles.G=G;
guidata(hObject,handles)

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ta=handles.ta;
impulso=handles.impulso;
J=3.2284e-6
b=3.5077e-6
L=2.75e-6
R=4
k=0.0274

A=[0 1 0;0 -b/J k/J;0 -k/L -R/L]
B=[0;0;1/L]

ts=ta;
Mp=impulso;
cita=sqrt((log(Mp))^2/((log(Mp))^2+pi^2));%Condiciones para el control
wn=4/(ts*cita);

Ps=roots([1 2*cita*wn wn^2]);
P=[Ps(1) Ps(2) -10000000];
%P=[-133.34+220.82i   -133.34-220.82i -10000000]

K=acker(A,B,P)

Anew=A-B*K
C=[1 0 0]
[numnew,dennew]=ss2tf(Anew,B,C,0) %%de variable de estados a trans
Gnew=tf(numnew,dennew)
step(feedback(Gnew,1))
legend('Planta Controlada');
axes(handles.axes1)
handles.Gnew=Gnew;
guidata(hObject,handles)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Continuo_Estados);
Motor_de_posicion
