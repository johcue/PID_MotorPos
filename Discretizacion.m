function varargout = Discretizacion(varargin)
% DISCRETIZACION MATLAB code for Discretizacion.fig
%      DISCRETIZACION, by itself, creates a new DISCRETIZACION or raises the existing
%      singleton*.
%
%      H = DISCRETIZACION returns the handle to a new DISCRETIZACION or the handle to
%      the existing singleton*.
%
%      DISCRETIZACION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISCRETIZACION.M with the given input arguments.
%
%      DISCRETIZACION('Property','Value',...) creates a new DISCRETIZACION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Discretizacion_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Discretizacion_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Discretizacion

% Last Modified by GUIDE v2.5 08-Jul-2019 08:28:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Discretizacion_OpeningFcn, ...
                   'gui_OutputFcn',  @Discretizacion_OutputFcn, ...
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


% --- Executes just before Discretizacion is made visible.
function Discretizacion_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Discretizacion (see VARARGIN)

% Choose default command line output for Discretizacion
handles.output = hObject;
axes(handles.axes1)
imshow('disc.png')
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Discretizacion wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Discretizacion_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Discretizacion);
Motor_de_posicion



function muestreo_Callback(hObject, eventdata, handles)
% hObject    handle to muestreo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of muestreo as text
%        str2double(get(hObject,'String')) returns contents of muestreo as a double


% --- Executes during object creation, after setting all properties.
function muestreo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to muestreo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

T=[str2double(get(handles.muestreo,'String'))]%1.3;tiempo de muestreo
tiempo=handles.tiempo;
sobreimpulso=handles.sobreimpulso;
L=0.00000275;
B=[0;0;1/L];
W=9281.45;
a=0.5435;
G=[1+156.76*exp(-a*T)*sin(W*T) 0.01688-0.01688*exp(-a*T)*(cos(W*T)+0.1128*sin(W*T)) 0.00009852*(1-exp(-a*T)*(cos(W*T)+0.000058999*sin(W*T)));...
    0 exp(-a*T)*(cos(W*T)+156.76*sin(W*T)) 0.9144*exp(-a*T)*sin(W*T);...
    0 -1.0735*exp(-a*T)*sin(W*T) exp(-a*T)*(cos(W*T)+5.8558e-05*sin(W*T))];

H=[35.8219*(T-(exp(-a*T)*(W*sin(W*T)-a*cos(W*T)+a*exp(a*T)-5.8999e-05*(-a*sin(W*T)-W*cos(W*T)+W*exp(a*T)))/(a^2+W^2)));...
    332475.84*(exp(-a*T)*(exp(a*T)*W-a*sin(W*T)-W*cos(W*T))/(a^2+W^2));...
    3.636e+05*(exp(-a*T)*((W*sin(W*T)-a*cos(W*T)+a*exp(a*T)+5.8558e-05*(W*exp(a*T)-a*sin(W*T)-W*cos(W*T)))))/(a^2+W^2)]

%set(handles.G,'Visible','On');
%set(handles.G,'String',G); %%No me esta mostrando la matriz
%set(handles.H,'Visible','On');
set(handles.H,'String',H);

C=[1 0 0];
ts=tiempo;%0.04 
Mp=sobreimpulso;%0.16
cita=sqrt((log(Mp))^2/((log(Mp))^2+pi^2));%Condiciones para el control
wn=4/(ts*cita);
z=exp(-cita*wn*T)*exp(j*wn*sqrt(1-cita^2)*T);
za=[z conj(z) -1e-90]

 p=poly(za);
%coef=conv([1 -za(1)],[1 -za(2)])%conv=convolución conjugado
M=[H G*H G^2*H]
N=[C; C*G; C*G^2]
det(M)
det(N)
phi=G^3+p(2)*G^2+p(3)*G+p(4)*eye(3)
k=[0 0 1]*inv(M)*phi
Gnew=G-H*k;
[numd dend]=ss2tf(Gnew,H,C,0)
Gd=tf(numd,dend,T)
xin=ones(1,50);
y=filter(numd,dend,xin);%mi salida con una entrada escalón por eso es ones
K=1:50;
axes(handles.axes2)
stem(T*K,y,'-r')
legend('Grafica en tiempo discreto')
handles.G=G;
handles.H=H;
guidata(hObject,handles)


function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of G as text
%        str2double(get(hObject,'String')) returns contents of G as a double


% --- Executes during object creation, after setting all properties.
function G_CreateFcn(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function H_Callback(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of H as text
%        str2double(get(hObject,'String')) returns contents of H as a double


% --- Executes during object creation, after setting all properties.
function H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tiempo=get(hObject,'Value');
set(handles.tiempoass,'String',tiempo)
handles.tiempo=tiempo;
guidata(hObject,handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


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
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sobreimpulso=get(hObject,'Value');
set(handles.maximoass,'String',sobreimpulso)
handles.sobreimpulso=sobreimpulso;
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



function tiempoass_Callback(hObject, eventdata, handles)
% hObject    handle to tiempoass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempoass as text
%        str2double(get(hObject,'String')) returns contents of tiempoass as a double


% --- Executes during object creation, after setting all properties.
function tiempoass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tiempoass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maximoass_Callback(hObject, eventdata, handles)
% hObject    handle to maximoass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maximoass as text
%        str2double(get(hObject,'String')) returns contents of maximoass as a double


% --- Executes during object creation, after setting all properties.
function maximoass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maximoass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
