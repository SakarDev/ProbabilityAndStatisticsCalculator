function varargout = ProbabilityCalculator(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProbabilityCalculator_OpeningFcn, ...
                   'gui_OutputFcn',  @ProbabilityCalculator_OutputFcn, ...
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
function ProbabilityCalculator_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = ProbabilityCalculator_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
global Vector
S = get(handles.input, 'String')
temp = str2double(S);
if ~isempty(S) 
  Vector(end+1) = temp;
end
for i = 1:length(Vector)
      if isnan(Vector(i))
          Vector(i)=[];
      end
end
set(handles.vectorOutput, 'Min', 0, 'Max', 2);
set(handles.vectorOutput, 'String',  Vector);
set(handles.input, 'String', '');

% --- Executes on button press in stdDeviation.
function stdDeviation_Callback(hObject, eventdata, handles)
global Vector
standarDeviation = std(Vector)
set(handles.theOutput, 'String', num2str(standarDeviation))

function vectorOutput_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function vectorOutput_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in variance.
function variance_Callback(hObject, eventdata, handles)
global Vector
variance = var(Vector)
set(handles.theOutput, 'String', num2str(variance))


% --- Executes on button press in cv.
function cv_Callback(hObject, eventdata, handles)
global Vector
CoefficientOfVariance = (100 * std(Vector))/ mean(Vector)
set(handles.theOutput, 'String', num2str(CoefficientOfVariance))


% --- Executes on button press in iqr.
function iqr_Callback(hObject, eventdata, handles)
global Vector 
interQuartileRange = iqr(Vector)
set(handles.theOutput, 'String', num2str(interQuartileRange))


% --- Executes on button press in seven.
function seven_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '7'));


% --- Executes on button press in eight.
function eight_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '8'));


% --- Executes on button press in nine.
function nine_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '9'));


% --- Executes on button press in mean.
function mean_Callback(hObject, eventdata, handles)
global Vector
m = mean(Vector)
set(handles.theOutput, 'String', num2str(m))


% --- Executes on button press in four.
function four_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '4'));


% --- Executes on button press in five.
function five_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '5'));


% --- Executes on button press in six.
function six_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '6'));


% --- Executes on button press in median.
function median_Callback(hObject, eventdata, handles)
global Vector
med = median(Vector)
set(handles.theOutput, 'String', num2str(med))


% --- Executes on button press in one.
function one_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '1'));


% --- Executes on button press in two.
function two_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '2'));


% --- Executes on button press in three.
function three_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '3'));


% --- Executes on button press in mode.
function mode_Callback(hObject, eventdata, handles)
global Vector
m = mode(Vector)
set(handles.theOutput, 'String', num2str(m))


% --- Executes on button press in zero.
function zero_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '0'));


% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
%get function is getting a string from the input textbox
userInput = get(handles.input, 'String');
%set function is the opposite of get and it writes to the textBox
%strcat concatinates string that is previously loaded from the screen with one more number
set(handles.input, 'String', strcat(userInput, '.'));


% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
global Vector
%Set function just writes an empty string to all the three textboxes
%This empty String will delete everyThing
set(handles.input, 'String', '');
set(handles.vectorOutput, 'String', '');
set(handles.theOutput, 'String', '');
 clear global


% --- Executes on button press in range.
function range_Callback(hObject, eventdata, handles)
global Vector
ma = max(Vector);
mi = min(Vector);
range = ma - mi;
set(handles.theOutput, 'String', num2str(range))


function input_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function theOutput_Callback(hObject, eventdata, handles)
% --- Executes during object creation, after setting all properties.
function theOutput_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
%clear global variables such as Vector each time when the program
%terminates
clear global
% Hint: delete(hObject) closes the figure
delete(hObject);
