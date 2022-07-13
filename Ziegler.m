function varargout = Ziegler(varargin)
% ZIEGLER MATLAB code for Ziegler.fig
%      ZIEGLER, by itself, creates a new ZIEGLER or raises the existing
%      singleton*.
%
%      H = ZIEGLER returns the handle to a new ZIEGLER or the handle to
%      the existing singleton*.
%
%      ZIEGLER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ZIEGLER.M with the given input arguments.
%
%      ZIEGLER('Property','Value',...) creates a new ZIEGLER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ziegler_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ziegler_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ziegler

% Last Modified by GUIDE v2.5 06-Jul-2019 20:12:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ziegler_OpeningFcn, ...
                   'gui_OutputFcn',  @Ziegler_OutputFcn, ...
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


% --- Executes just before Ziegler is made visible.
function Ziegler_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ziegler (see VARARGIN)

% Choose default command line output for Ziegler
handles.output = hObject;
axes(handles.axes1)
imshow('funT.png')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ziegler wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ziegler_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valor=get(hObject,'Value');
valor1=valor*100;
set(handles.kpm,'String',valor1)
handles.valor1=valor1;
guidata(hObject,handles)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sobre=get(hObject,'Value');
sobre1=sobre*100
set(handles.tim,'String',sobre1)
handles.sobre1=sobre1;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function kpm_Callback(hObject, eventdata, handles)
% hObject    handle to kpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kpm as text
%        str2double(get(hObject,'String')) returns contents of kpm as a double


% --- Executes during object creation, after setting all properties.
function kpm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kpm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tim_Callback(hObject, eventdata, handles)
% hObject    handle to tim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tim as text
%        str2double(get(hObject,'String')) returns contents of tim as a double


% --- Executes during object creation, after setting all properties.
function tim_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in edit1.
function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
numd=[0.0274];
dend=[8.8781E-12 1.2914E-5 1.6479E-4 0];
G=feedback(tf(numd,dend),1);
axes(handles.axes2)
step(G)
legend('Planta Lazo Cerrado')
handles.G=G;
handles.numd=numd;
handles.dend=dend;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in edit2.
function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Kp=0.6*40600.59;
Ti=0.5*6.7696E-4;
Td=0.125*6.7696E-4;
Kd=Td*Kp;
Ki=Kp/Ti;
g=tf(0.0274,[8.8781E-12 1.2914E-5 1.6479E-4 0]);
Gc=tf([Kd Kp Ki],[1 0]);
glc=feedback(g*Gc,1)
axes(handles.axes2)
step(glc)
stepinfo(glc,1)
legend('Primer Controlador')
handles.glc=glc;
guidata(hObject,handles)

% --- Executes on button press in edit3.
function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
valor1=handles.valor1;
sobre1=handles.sobre1;
critico1=handles.critico1;
Kp=0.6*40600.59;
Ti=0.5*6.7696E-4;
Td=0.125*6.7696E-4;
Kd=Td*Kp;
Ki=Kp/Ti;
Kpm=valor1*Kp;
Tim=sobre1*Ti;
Tdm=critico1*Td;
Kdm=Tdm*Kpm;
Kim=Kpm/Tim;
gm=tf(0.0274,[8.8781E-12 1.2914E-5 1.6479E-4 0]);
Gcm=tf([Kdm Kpm Kim],[1 0]);
sintonizacion=feedback(gm*Gcm,1)
axes(handles.axes2)
step(sintonizacion)
stepinfo(sintonizacion,1)
legend('Sintonizacion');
handles.sintonizacion=sintonizacion;
guidata(hObject,handles)


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Ziegler);
Motor_de_posicion


% --- Executes on button press in edit4.
function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
numd=handles.numd;
dend=handles.dend;
G=tf(num,den);
axes(handles.axes3)
step(G)
handles.G=G;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function uibuttongroup2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
critico1=get(hObject,'Value');
set(handles.tdm,'String',critico1)
handles.critico1=critico1;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function tdm_Callback(hObject, eventdata, handles)
% hObject    handle to tdm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tdm as text
%        str2double(get(hObject,'String')) returns contents of tdm as a double


% --- Executes during object creation, after setting all properties.
function tdm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tdm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
