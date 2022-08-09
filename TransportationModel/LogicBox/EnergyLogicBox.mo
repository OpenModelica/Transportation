within TransportationModel.LogicBox;

model EnergyLogicBox
 
  parameter Real FossilBanYear = 2022;
  parameter Real EnergyperCarPerKM;
  parameter Real ReducedPercentage;
  parameter Boolean Flag = false;
  parameter Real FixedAverageKM;
  //emission Boolean
  parameter Boolean FossilCombustionEmissionFlag = false;
  parameter Boolean BioCombustionEmissionFlag = false;
  parameter Boolean UpstreamFossilCombustionEmissionFlag = false;
  parameter Boolean UpstreamBioCombustionEmissionFlag = false;
  
  parameter String EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolCarEfficiency.txt");
  parameter String FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolFuelFossilComposition.txt");
  parameter String BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolFuelBioComposition.txt");
  parameter String FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolFuelFossilComposition.txt");
  parameter String BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolFuelBioComposition.txt");
  Modelica.Blocks.Interfaces.RealInput NoOfVehicles annotation(
    Placement(visible = true, transformation(origin = {-132, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112, 0}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds FuelBIOComposition(columns = 2:2, fileName = BioFuelComposition, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-102, 8}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds FuelFossilComposition(columns = 2:2, fileName = FossilComposition, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-102, 69}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Math.Product product3 annotation(
    Placement(visible = true, transformation(origin = {87, 30}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds VehicleEfficiencyFactor(columns = 2:2, fileName = EfficiencyFactor, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-102, 38}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Math.Product product2 annotation(
    Placement(visible = true, transformation(origin = {89, 70}, extent = {{-11, -11}, {11, 11}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Time(y = time) annotation(
    Placement(visible = true, transformation(origin = {-178, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product annotation(
    Placement(visible = true, transformation(origin = {-62, 71}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(visible = true, transformation(origin = {-62, 21}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput FossilCombustion annotation(
    Placement(visible = true, transformation(origin = {158, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput BioCombustion annotation(
    Placement(visible = true, transformation(origin = {156, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds FuelBIOCompositionUpstream(columns = 2:2, fileName = BioFuelComposition, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-100, -88}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds VehicleEfficiencyFactorUpstream(columns = 2:2, fileName = EfficiencyFactor, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-100, -56}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Tables.CombiTable1Ds FuelFossilCompositionUpstream(columns = 2:2, fileName = FossilComposition, tableName = "Table", tableOnFile = true, verboseRead = false) annotation(
    Placement(visible = true, transformation(origin = {-100, -25}, extent = {{-12, -12}, {12, 12}}, rotation = 0)));
  Modelica.Blocks.Math.Product product4 annotation(
    Placement(visible = true, transformation(origin = {-58, -65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product5 annotation(
    Placement(visible = true, transformation(origin = {-64, -27}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product6 annotation(
    Placement(visible = true, transformation(origin = {88, -27}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product7 annotation(
    Placement(visible = true, transformation(origin = {88, -63}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput UpstreamFossilCombustion annotation(
    Placement(visible = true, transformation(origin = {162, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput UpstreamBioCombustion annotation(
    Placement(visible = true, transformation(origin = {164, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.variableAverageKM variableAverageKM(InitialAverageKM = FixedAverageKM,   InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedPercentage,FossilBanYear = FossilBanYear ) annotation(
    Placement(visible = true, transformation(origin = {-32, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.variableAverageKM variableAverageKM1(InitialAverageKM = FixedAverageKM,  InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedPercentage, FossilBanYear = FossilBanYear ) annotation(
    Placement(visible = true, transformation(origin = {-20, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.variableAverageKM variableAverageKM2(InitialAverageKM = FixedAverageKM,  InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedPercentage,FossilBanYear = FossilBanYear  ) annotation(
    Placement(visible = true, transformation(origin = {-22, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.variableAverageKM variableAverageKM3(InitialAverageKM = FixedAverageKM,  InitialEnergyPerKM = EnergyperCarPerKM, PecentageReductionInAvegageKM = ReducedPercentage,FossilBanYear = FossilBanYear  ) annotation(
    Placement(visible = true, transformation(origin = {-20, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch KMSwitch1 annotation(
    Placement(visible = true, transformation(origin = {14, 72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.BooleanExpression InputFlag(y = Flag)  annotation(
    Placement(visible = true, transformation(origin = {-30, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain AverageKM1(k = FixedAverageKM * EnergyperCarPerKM)  annotation(
    Placement(visible = true, transformation(origin = {-29, 49}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
 Modelica.Blocks.Logical.Switch KMSwitch2 annotation(
    Placement(visible = true, transformation(origin = {16, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Math.Gain AverageKM2(k = FixedAverageKM * EnergyperCarPerKM) annotation(
    Placement(visible = true, transformation(origin = {-27, 11}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
 Modelica.Blocks.Logical.Switch KMSwitch3 annotation(
    Placement(visible = true, transformation(origin = {20, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Logical.Switch KMSwitch4 annotation(
    Placement(visible = true, transformation(origin = {22, -74}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Math.Gain AverageKM3(k = FixedAverageKM * EnergyperCarPerKM) annotation(
    Placement(visible = true, transformation(origin = {-27, -45}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
 Modelica.Blocks.Math.Gain AverageKM4(k = FixedAverageKM * EnergyperCarPerKM) annotation(
    Placement(visible = true, transformation(origin = {-19, -87}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch FossilCombustionSwitch(EmissionFlag = FossilCombustionEmissionFlag) annotation(
    Placement(visible = true, transformation(origin = {122, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch BioCombustionSwitch(EmissionFlag = BioCombustionEmissionFlag) annotation(
    Placement(visible = true, transformation(origin = {118, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch UpstreamFossilCombustionSwitch(EmissionFlag = UpstreamFossilCombustionEmissionFlag) annotation(
    Placement(visible = true, transformation(origin = {122, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.EmissionSelectionSwitch UpsreamBioCombustionSwitch(EmissionFlag = UpstreamBioCombustionEmissionFlag) annotation(
    Placement(visible = true, transformation(origin = {120, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
 connect(product.u1, FuelFossilComposition.y[1]) annotation(
    Line(points = {{-74, 77}, {-81.5, 77}, {-81.5, 69}, {-89, 69}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactor.y[1], product.u2) annotation(
    Line(points = {{-89, 38}, {-80.8, 38}, {-80.8, 65}, {-74.8, 65}}, color = {0, 0, 127}));
 connect(FuelBIOComposition.y[1], product1.u2) annotation(
    Line(points = {{-89, 8}, {-74.8, 8}, {-74.8, 16}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactor.y[2], product1.u1) annotation(
    Line(points = {{-89, 38}, {-80.8, 38}, {-80.8, 28}, {-74.8, 28}}, color = {0, 0, 127}));
 connect(Time.y, FuelFossilComposition.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, 69}, {-117, 69}}, color = {0, 0, 127}));
 connect(Time.y, VehicleEfficiencyFactor.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, 38}, {-116, 38}}, color = {0, 0, 127}));
 connect(Time.y, FuelBIOComposition.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, 8}, {-116, 8}}, color = {0, 0, 127}));
 connect(Time.y, FuelFossilCompositionUpstream.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, -25}, {-115, -25}}, color = {0, 0, 127}));
 connect(Time.y, VehicleEfficiencyFactorUpstream.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, -56}, {-115, -56}}, color = {0, 0, 127}));
 connect(Time.y, FuelBIOCompositionUpstream.u) annotation(
    Line(points = {{-167, -10}, {-135, -10}, {-135, -88}, {-115, -88}}, color = {0, 0, 127}));
 connect(FuelFossilCompositionUpstream.y[1], product5.u1) annotation(
    Line(points = {{-86.8, -25}, {-77.8, -25}, {-77.8, -21}, {-75.8, -21}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactorUpstream.y[1], product5.u2) annotation(
    Line(points = {{-86.8, -56}, {-80.8, -56}, {-80.8, -33}, {-76.8, -33}}, color = {0, 0, 127}));
 connect(VehicleEfficiencyFactorUpstream.y[2], product4.u1) annotation(
    Line(points = {{-86.8, -56}, {-80.8, -56}, {-80.8, -59}, {-70.8, -59}}, color = {0, 0, 127}));
 connect(FuelBIOCompositionUpstream.y[1], product4.u2) annotation(
    Line(points = {{-86.8, -88}, {-81.8, -88}, {-81.8, -71}, {-69.8, -71}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product2.u1) annotation(
    Line(points = {{-132, 90}, {68, 90}, {68, 77}, {76, 77}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product3.u1) annotation(
    Line(points = {{-132, 90}, {68, 90}, {68, 37}, {74, 37}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product6.u1) annotation(
    Line(points = {{-132, 90}, {68, 90}, {68, -21}, {76, -21}}, color = {0, 0, 127}));
 connect(NoOfVehicles, product7.u1) annotation(
    Line(points = {{-132, 90}, {68, 90}, {68, -57}, {76, -57}}, color = {0, 0, 127}));
 connect(product1.y, variableAverageKM1.u) annotation(
    Line(points = {{-51, 21}, {-43, 21}, {-43, 29}, {-33, 29}}, color = {0, 0, 127}));
 connect(product5.y, variableAverageKM2.u) annotation(
    Line(points = {{-53, -27}, {-34, -27}, {-34, -24}}, color = {0, 0, 127}));
 connect(product4.y, variableAverageKM3.u) annotation(
    Line(points = {{-47, -65}, {-33, -65}}, color = {0, 0, 127}));
 connect(product.y, variableAverageKM.u) annotation(
    Line(points = {{-51, 71}, {-44, 71}, {-44, 80}}, color = {0, 0, 127}));
 connect(variableAverageKM.y, KMSwitch1.u1) annotation(
    Line(points = {{-21, 80.4}, {1, 80.4}}, color = {0, 0, 127}));
 connect(KMSwitch1.y, product2.u2) annotation(
    Line(points = {{25, 72}, {37, 72}, {37, 64}, {75, 64}}, color = {0, 0, 127}));
 connect(InputFlag.y, KMSwitch1.u2) annotation(
    Line(points = {{-19, 66}, {-15, 66}, {-15, 72}, {1, 72}}, color = {255, 0, 255}));
 connect(product.y, AverageKM1.u) annotation(
    Line(points = {{-51, 71}, {-45, 71}, {-45, 49}, {-39, 49}}, color = {0, 0, 127}));
 connect(AverageKM1.y, KMSwitch1.u3) annotation(
    Line(points = {{-21.3, 49}, {-1.3, 49}, {-1.3, 63}, {2.7, 63}}, color = {0, 0, 127}));
 connect(product1.y, AverageKM2.u) annotation(
    Line(points = {{-51, 21}, {-47, 21}, {-47, 11}, {-37, 11}}, color = {0, 0, 127}));
 connect(AverageKM2.y, KMSwitch2.u3) annotation(
    Line(points = {{-19.3, 11}, {4.7, 11}, {4.7, 13}}, color = {0, 0, 127}));
 connect(variableAverageKM1.y, KMSwitch2.u1) annotation(
    Line(points = {{-9, 30.4}, {3, 30.4}}, color = {0, 0, 127}));
 connect(KMSwitch2.y, product3.u2) annotation(
    Line(points = {{27, 22}, {73, 22}, {73, 24}}, color = {0, 0, 127}));
 connect(KMSwitch3.y, product6.u2) annotation(
    Line(points = {{31, -32}, {75, -32}}, color = {0, 0, 127}));
 connect(variableAverageKM2.y, KMSwitch3.u1) annotation(
    Line(points = {{-11, -23.6}, {8, -23.6}}, color = {0, 0, 127}));
 connect(AverageKM3.y, KMSwitch3.u3) annotation(
    Line(points = {{-19.3, -45}, {3.7, -45}, {3.7, -40}, {7.7, -40}}, color = {0, 0, 127}));
 connect(product5.y, AverageKM3.u) annotation(
    Line(points = {{-53, -27}, {-47, -27}, {-47, -45}, {-37, -45}}, color = {0, 0, 127}));
 connect(variableAverageKM3.y, KMSwitch4.u1) annotation(
    Line(points = {{-9, -63.6}, {-0.5, -63.6}, {-0.5, -65.6}, {10, -65.6}}, color = {0, 0, 127}));
 connect(product4.y, AverageKM4.u) annotation(
    Line(points = {{-47, -65}, {-39, -65}, {-39, -87}, {-29, -87}}, color = {0, 0, 127}));
 connect(AverageKM4.y, KMSwitch4.u3) annotation(
    Line(points = {{-11.3, -87}, {10.7, -87}, {10.7, -83}}, color = {0, 0, 127}));
 connect(KMSwitch4.y, product7.u2) annotation(
    Line(points = {{33, -74}, {65, -74}, {65, -68}, {75, -68}}, color = {0, 0, 127}));
 connect(InputFlag.y, KMSwitch2.u2) annotation(
    Line(points = {{-19, 66}, {-7, 66}, {-7, 22}, {3, 22}}, color = {255, 0, 255}));
 connect(InputFlag.y, KMSwitch3.u2) annotation(
    Line(points = {{-19, 66}, {-7, 66}, {-7, -32}, {7, -32}}, color = {255, 0, 255}));
 connect(InputFlag.y, KMSwitch4.u2) annotation(
    Line(points = {{-19, 66}, {-7, 66}, {-7, -74}, {9, -74}}, color = {255, 0, 255}));
 connect(product2.y, FossilCombustionSwitch.u) annotation(
    Line(points = {{102, 70}, {110, 70}}, color = {0, 0, 127}));
 connect(FossilCombustionSwitch.y, FossilCombustion) annotation(
    Line(points = {{134, 70}, {158, 70}}, color = {0, 0, 127}));
 connect(product3.y, BioCombustionSwitch.u) annotation(
    Line(points = {{100, 30}, {106, 30}, {106, 32}}, color = {0, 0, 127}));
 connect(product6.y, UpstreamFossilCombustionSwitch.u) annotation(
    Line(points = {{100, -26}, {110, -26}}, color = {0, 0, 127}));
 connect(UpstreamFossilCombustionSwitch.y, UpstreamFossilCombustion) annotation(
    Line(points = {{134, -26}, {162, -26}}, color = {0, 0, 127}));
 connect(product7.y, UpsreamBioCombustionSwitch.u) annotation(
    Line(points = {{100, -62}, {108, -62}, {108, -64}}, color = {0, 0, 127}));
 connect(UpsreamBioCombustionSwitch.y, UpstreamBioCombustion) annotation(
    Line(points = {{132, -64}, {164, -64}}, color = {0, 0, 127}));
 connect(BioCombustionSwitch.y, BioCombustion) annotation(
    Line(points = {{130, 32}, {156, 32}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(lineColor = {200, 200, 200}, fillColor = {248, 248, 248}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 100}, {100, -100}}, radius = 25), Text(origin = {-1, 19}, extent = {{-95, 13}, {95, -13}}, textString = "BioCombustion", fontSize = 8), Text(origin = {1, 65}, extent = {{-95, 13}, {95, -13}}, textString = "FossilCombustion", fontSize = 8), Text(origin = {1, -19}, extent = {{-99, 17}, {99, -17}}, textString = "UpstreamFossilCombustion", fontSize = 8), Text(origin = {0, -55}, extent = {{-100, 19}, {100, -19}}, textString = "UpstreamBioCombustion", fontSize = 8), Text(origin = {-6, 109}, extent = {{-106, 27}, {106, -27}}, textString = "%name%", fontSize = 8)}),
    Diagram(coordinateSystem(extent = {{-200, -100}, {200, 100}})));
end EnergyLogicBox;
