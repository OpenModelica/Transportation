within TransportationModel.LogicBox;

model EnergyLogicBoxForElectricalVehicles
  parameter Real FixedAverageKM, EnergyperCarPerKM,FossilBanYear;
  
  parameter Boolean FossilCombustionEmissionFlag = false;
  parameter Boolean UpstreamFossilCombustionEmissionFlag = false;
  
  parameter Real ReducedAverageKMforElectricVehicles;
  parameter Boolean Flag;
  parameter String EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolCarEfficiency.txt");

  Modelica.Blocks.Interfaces.RealInput NoOfVehicles annotation(
    Placement(visible = true, transformation(origin = {-100, 100}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds VehicleEfficiencyFactor(columns = 2:2, fileName = EfficiencyFactor, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-80, 60}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Time(y = time)  annotation(
    Placement(visible = true, transformation(origin = {-184, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput FossilCombustion annotation(
    Placement(visible = true, transformation(origin = {214, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(visible = true, transformation(origin = {62, 43}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput UpstreamFossilCombustion annotation(
    Placement(visible = true, transformation(origin = {218, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Tables.CombiTable1Ds VehicleEfficiencyFactorUpstream(columns = 2:2, fileName = EfficiencyFactor, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-70, -32}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
 Modelica.Blocks.Math.Product product2 annotation(
    Placement(visible = true, transformation(origin = {54, -17}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.variableAverageKM variableAverageKM(InitialAverageKM = FixedAverageKM,  InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedAverageKMforElectricVehicles, FossilBanYear = FossilBanYear) annotation(
    Placement(visible = true, transformation(origin = {-28, 84}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.variableAverageKM variableAverageKM1(InitialAverageKM = FixedAverageKM,  InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedAverageKMforElectricVehicles, FossilBanYear = FossilBanYear) annotation(
    Placement(visible = true, transformation(origin = {-34, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Logical.Switch KMSwitch1 annotation(
    Placement(visible = true, transformation(origin = {14, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Math.Gain AverageKM1(k = FixedAverageKM * EnergyperCarPerKM)  annotation(
    Placement(visible = true, transformation(origin = {-22, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.BooleanExpression InputFlag(y = Flag)  annotation(
    Placement(visible = true, transformation(origin = {-26, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Logical.Switch KMSwitch2 annotation(
    Placement(visible = true, transformation(origin = {26, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Math.Gain AverageKM2(k = FixedAverageKM * EnergyperCarPerKM) annotation(
    Placement(visible = true, transformation(origin = {-28, -68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch FossilEmission(EmissionFlag = FossilCombustionEmissionFlag) annotation(
    Placement(visible = true, transformation(origin = {134, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch UpstreamFossilEmission(EmissionFlag =UpstreamFossilCombustionEmissionFlag  ) annotation(
    Placement(visible = true, transformation(origin = {138, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
 connect(Time.y, VehicleEfficiencyFactorUpstream.u) annotation(
    Line(points = {{-173, 0}, {-102, 0}, {-102, -32}, {-84, -32}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product1.u1) annotation(
    Line(points = {{-100, 100}, {42, 100}, {42, 49}, {50, 49}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product2.u1) annotation(
    Line(points = {{-100, 100}, {42, 100}, {42, -11}}, color = {0, 0, 127}));
  connect(VehicleEfficiencyFactorUpstream.y[1], variableAverageKM1.u) annotation(
    Line(points = {{-56, -32}, {-46, -32}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactor.y[1], variableAverageKM.u) annotation(
    Line(points = {{-67, 60}, {-40, 60}, {-40, 84}}, color = {0, 0, 127}));
 connect(variableAverageKM.y, KMSwitch1.u1) annotation(
    Line(points = {{-16, 84}, {2, 84}, {2, 86}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactor.y[1], AverageKM1.u) annotation(
    Line(points = {{-67, 60}, {-49.5, 60}, {-49.5, 42}, {-34, 42}}, color = {0, 0, 127}));
 connect(KMSwitch1.y, product1.u2) annotation(
    Line(points = {{26, 78}, {42, 78}, {42, 37}, {50, 37}}, color = {0, 0, 127}));
 connect(AverageKM1.y, KMSwitch1.u3) annotation(
    Line(points = {{-10, 42}, {-4, 42}, {-4, 70}, {2, 70}}, color = {0, 0, 127}));
 connect(InputFlag.y, KMSwitch1.u2) annotation(
    Line(points = {{-14, 70}, {-10, 70}, {-10, 78}, {2, 78}}, color = {255, 0, 255}));
 connect(variableAverageKM1.y, KMSwitch2.u1) annotation(
    Line(points = {{-22, -32}, {-18, -32}, {-18, -42}, {14, -42}}, color = {0, 0, 127}));
 connect(KMSwitch2.y, product2.u2) annotation(
    Line(points = {{37, -50}, {44, -50}, {44, -23}, {42, -23}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactorUpstream.y[1], AverageKM2.u) annotation(
    Line(points = {{-56, -32}, {-54, -32}, {-54, -68}, {-40, -68}}, color = {0, 0, 127}));
 connect(AverageKM2.y, KMSwitch2.u3) annotation(
    Line(points = {{-16, -68}, {-16, -58}, {14, -58}}, color = {0, 0, 127}));
 connect(InputFlag.y, KMSwitch2.u2) annotation(
    Line(points = {{-14, 70}, {-8, 70}, {-8, -50}, {14, -50}}, color = {255, 0, 255}));
 connect(product2.y, UpstreamFossilEmission.u) annotation(
    Line(points = {{65, -17}, {122, -17}, {122, -14}, {127, -14}}, color = {0, 0, 127}));
 connect(UpstreamFossilEmission.y, UpstreamFossilCombustion) annotation(
    Line(points = {{149, -14}, {218, -14}}, color = {0, 0, 127}));
 connect(product1.y, FossilEmission.u) annotation(
    Line(points = {{73, 43}, {122, 43}, {122, 28}}, color = {0, 0, 127}));
 connect(FossilEmission.y, FossilCombustion) annotation(
    Line(points = {{146, 28}, {214, 28}}, color = {0, 0, 127}));
 connect(Time.y, VehicleEfficiencyFactor.u) annotation(
    Line(points = {{-172, 0}, {-102, 0}, {-102, 60}, {-94, 60}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {225, 225, 225}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 100}, {100, -100}}, radius = 25), Text(origin = {1, 73}, extent = {{-95, 13}, {95, -13}}, textString = "FossilCombustion", fontSize = 8), Text(origin = {1, -63}, extent = {{-99, 17}, {99, -17}}, textString = "UpstreamFossilCombustion", fontSize = 8), Text(origin = {-6, 113}, extent = {{-106, 27}, {106, -27}}, textString = "%name%", fontSize = 8)}));
end EnergyLogicBoxForElectricalVehicles;
