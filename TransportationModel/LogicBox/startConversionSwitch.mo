within TransportationModel.LogicBox;

model startConversionSwitch

  Modelica.Blocks.Interfaces.RealInput Input annotation(
    Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Output annotation(
    Placement(visible = true, transformation(origin = {106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {121, -1}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));

parameter Boolean flag;
algorithm

  if flag then
     Output := Input;   
  else 
    Output:=0;
    
  end if;
  
  
  
    

annotation(
    Icon(graphics = {Rectangle(lineColor = {0, 0, 127}, fillColor = {0, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 40}, {100, -40}}, radius = 10), Text(origin = {0, 46}, extent = {{-96, 16}, {96, -16}}, textString = "%name", fontSize = 30)}));
end startConversionSwitch;
