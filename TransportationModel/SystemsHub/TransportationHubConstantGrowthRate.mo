within TransportationModel.SystemsHub;

model TransportationHubConstantGrowthRate

  extends TransportationModel.Icons.TransportationIcon;
  outer Utilites.TransportationParameters TP;
 
  Modelica.Blocks.Sources.RealExpression SimulationYear(y = 2019) annotation(
    Placement(visible = true, transformation(origin = {-788.5, 14}, extent = {{-34.5, -27}, {34.5, 27}}, rotation = 0)));
 
  TransportationModel.Interfaces.Bus VehiclesPoolBus annotation(
    Placement(visible = true, transformation(origin = {598, -31}, extent = {{-55, -49}, {55, 49}}, rotation = -90), iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 
  TransportationModel.Components.TruckPool LightTruck(InitialLevel = TP.InitialLevelofLightTruck) annotation(
    Placement(visible = true, transformation(origin = {-313.5, -105.5}, extent = {{-68.5, -68.5}, {68.5, 68.5}}, rotation = 0)));
  
  TransportationModel.Components.TruckPool HeavyTruck(InitialLevel = TP.InitialLevelofHeavyTruck) annotation(
    Placement(visible = true, transformation(origin = {-136.5, -1.5}, extent = {{-67.5, -67.5}, {67.5, 67.5}}, rotation = 0)));
 
  TransportationModel.Components.BusPool DieselBus(InitialLevel = TP.InitialLevelofDieselBus) annotation(
    Placement(visible = true, transformation(origin = {302, 163}, extent = {{-72, -72}, {72, 72}}, rotation = 0)));
 
  TransportationModel.Components.BusPool GasBus(InitialLevel = TP.InitialLevelofGasBus) annotation(
    Placement(visible = true, transformation(origin = {307.5, -66.5}, extent = {{-75.5, -75.5}, {75.5, 75.5}}, rotation = 0)));
  
  TransportationModel.Components.TruckPool LightTruckElectric(InitialLevel = TP.InitialLevelofLightElectricTruck)  annotation(
    Placement(visible = true, transformation(origin = {-319, 72}, extent = {{-66, -66}, {66, 66}}, rotation = 0)));
 
  TransportationModel.Components.TruckPool HeavyTruckElectrical(InitialLevel = TP.InitialLevelofHeavyElectricTruck) annotation(
    Placement(visible = true, transformation(origin = {-124.5, -168.5}, extent = {{-70.5, -70.5}, {70.5, 70.5}}, rotation = 0)));
  
  TransportationModel.Components.BusPool ElectricalBus(InitialLevel = TP.InitialLevelofElectricBus) annotation(
    Placement(visible = true, transformation(origin = {304, 55}, extent = {{-76, -76}, {76, 76}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic PetrolRateLogic(redeclare Utilites.PetrolLogicCombitable LogicCombitable, redeclare Utilites.PetrolCarDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PetrolCarBanYear,DepletionRateofVehicleAfterBan =  TP.DepletionRateofPetrolCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPetrolCarsAfterBan)annotation(
    Placement(visible = true, transformation(origin = {-570, 284}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic DieselRateLogic(redeclare Utilites.DieselLogicCombitable LogicCombitable, redeclare Utilites.DieselCarDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.DieselCarBanYear, DepletionRateofVehicleAfterBan =  TP.DepletionRateofDieselCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofDieselCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-568.5, 237.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic PHeVRateLogic(redeclare Utilites.PHeVLogicCombitable LogicCombitable, redeclare Utilites.PHeVCarDepletionCombiTable DepletionLogicCombitable, CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572, 189}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic ElectricRateLogic(CarBanYear = TP.ElectricCarBanYear, 
  DepletionRateofVehicleAfterBan = TP.DepletionRateofElectricCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofElectricCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-571.5, 142.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 TransportationModel.Components.VehiclePool PetrolCars(InitialLevel = TP.InitialLevelofPetrolCar)  annotation(
    Placement(visible = true, transformation(origin = {-466.5, 282.5}, extent = {{-45.5, -45.5}, {45.5, 45.5}}, rotation = 0)));
 TransportationModel.Components.VehiclePool DieselCars(InitialLevel = TP.InitialLevelofDieselCar)  annotation(
    Placement(visible = true, transformation(origin = {-379, 235}, extent = {{-41, -41}, {41, 41}}, rotation = 0)));
 TransportationModel.Components.VehiclePool PHeVCars(InitialLevel = TP.InitialLevelofPHeVCar)  annotation(
    Placement(visible = true, transformation(origin = {-285, 186}, extent = {{-41, -41}, {41, 41}}, rotation = 0)));
 TransportationModel.Components.VehiclePool ElectricCars(InitialLevel = TP.InitialLevelofEV)  annotation(
    Placement(visible = true, transformation(origin = {-206, 138}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));

 TransportationModel.Components.BusPool PetrolBus(InitialLevel = TP.InitialLevelofPetrolBus) annotation(
    Placement(visible = true, transformation(origin = {312.5, -176.5}, extent = {{-74.5, -74.5}, {74.5, 74.5}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic LightTruckElectricRateLogic(redeclare Utilites.LightElectricTruckCombiTable LogicCombitable, redeclare Utilites.LightElectricTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572.5, 95.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));

 TransportationModel.LogicBox.TransportationRateLogic HeavyTruckRateLogic(redeclare Utilites.HeavyTruckCombiTable LogicCombitable, redeclare Utilites.HeavyTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572.5, 54.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic LightTruckRateLogic(redeclare Utilites.LightTruckCombiTable LogicCombitable, redeclare Utilites.LightTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572, 14}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));

 TransportationModel.LogicBox.TransportationRateLogic HeavyTruckElectricRateLogic(redeclare Utilites.HeavyTruckElectricCombiTable LogicCombitable, redeclare Utilites.HeavyTruckElectricDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-573, -27}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic DieselBusRateLogic(redeclare Utilites.DieselBusCombiTable LogicCombitable, redeclare Utilites.DieselBusDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-573, -69}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic ElectricalBusRateLogic(redeclare Utilites.ElectricalBusCombiTable LogicCombitable, redeclare Utilites.ElectricalBusDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-573, -117}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic GasBusRateLogic(redeclare Utilites.GasBusCombiTable LogicCombitable, redeclare Utilites.GasBusDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-573, -166}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));

 TransportationModel.LogicBox.TransportationRateLogic PetrolBusRateLogic(redeclare Utilites.PetrolBusCombiTable LogicCombitable, redeclare Utilites.PetrolBusDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.PHeVCarBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572, -212}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalCarAggregator(nu = 4)  annotation(
    Placement(visible = true, transformation(origin = {-178, 354}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalTruckAggregator(nu = 4)  annotation(
    Placement(visible = true, transformation(origin = {31, 355}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalBusAggregator(nu = 4)  annotation(
    Placement(visible = true, transformation(origin = {500, 355}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
equation
  connect(LightTruckElectric.VehicleNos, VehiclesPoolBus.S007_LightTruckElectric) annotation(
    Line(points = {{-246, 72}, {-44, 72}, {-44, 268}, {598, 268}, {598, -31}}, color = {95, 0, 191}));
  connect(LightTruck.VehicleNos, VehiclesPoolBus.S008_LightTruck) annotation(
    Line(points = {{-237, -105.5}, {-43, -105.5}, {-43, 266}, {598, 266}, {598, -31}}, color = {95, 0, 191}));
  connect(HeavyTruck.VehicleNos, VehiclesPoolBus.S009_HeavyTruck) annotation(
    Line(points = {{-62, -1.5}, {165, -1.5}, {165, 270}, {598, 270}, {598, -31}}, color = {95, 0, 191}));
  connect(HeavyTruckElectrical.VehicleNos, VehiclesPoolBus.S010_HeavyTruckElectric) annotation(
    Line(points = {{-46, -168.5}, {166, -168.5}, {166, 269}, {598, 269}, {598, -31}}, color = {0, 0, 127}));
 connect(DieselBus.VehicleNos, VehiclesPoolBus.S011_DieselBus) annotation(
    Line(points = {{382, 163}, {410, 163}, {410, 266}, {598, 266}, {598, -31}}, color = {95, 0, 191}));
  connect(ElectricalBus.VehicleNos, VehiclesPoolBus.S012_ElectricBus) annotation(
    Line(points = {{388, 55}, {410, 55}, {410, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
  connect(GasBus.VehicleNos, VehiclesPoolBus.S013_GasBus) annotation(
    Line(points = {{391, -66.5}, {411, -66.5}, {411, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
  connect(SimulationYear.y, ElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 143}, {-589, 143}}, color = {0, 0, 127}));
  connect(SimulationYear.y, PHeVRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 189}, {-589, 189}}, color = {0, 0, 127}));
  connect(SimulationYear.y, DieselRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 238}, {-585, 238}}, color = {0, 0, 127}));
  connect(SimulationYear.y, PetrolRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 284}, {-586, 284}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, VehiclesPoolBus.S002_Diesel) annotation(
    Line(points = {{-340, 233}, {-44, 233}, {-44, 282}, {598, 282}, {598, -31}}, color = {95, 0, 191}));
  connect(PHeVCars.VehicleNos, VehiclesPoolBus.S003_PHeV) annotation(
    Line(points = {{-246, 184}, {-43, 184}, {-43, 283}, {598, 283}, {598, -31}}, color = {95, 0, 191}));
  connect(ElectricCars.VehicleNos, VehiclesPoolBus.S004_Electric) annotation(
    Line(points = {{-164, 136}, {-43, 136}, {-43, 283}, {598, 283}, {598, -31}}, color = {95, 0, 191}));
  connect(PetrolBus.VehicleNos, VehiclesPoolBus.S014_PetrolBus) annotation(
    Line(points = {{395, -176.5}, {412, -176.5}, {412, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
  connect(PetrolRateLogic.GrowthRate, PetrolCars.InGrowthRate) annotation(
    Line(points = {{-554, 292}, {-555.5, 292}, {-555.5, 288}, {-509, 288}}, color = {0, 0, 127}));
  connect(PetrolRateLogic.DepletionRate, PetrolCars.InDepletionRate) annotation(
    Line(points = {{-554, 276}, {-531.5, 276}, {-531.5, 277}, {-509, 277}}, color = {0, 0, 127}));
  connect(DieselRateLogic.GrowthRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-552, 246}, {-509.5, 246}, {-509.5, 240}, {-418, 240}}, color = {0, 0, 127}));
  connect(DieselRateLogic.DepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-552, 229}, {-485.5, 229}, {-485.5, 230}, {-418, 230}}, color = {0, 0, 127}));
  connect(PHeVRateLogic.GrowthRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-555, 197}, {-336, 197}, {-336, 191}, {-324, 191}}, color = {0, 0, 127}));
  connect(PHeVRateLogic.DepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-555, 181}, {-324, 181}}, color = {0, 0, 127}));
  connect(ElectricRateLogic.GrowthRate, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-554, 151}, {-336, 151}, {-336, 143}, {-247, 143}}, color = {0, 0, 127}));
  connect(ElectricRateLogic.DepletionRate, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-554, 134}, {-336, 134}, {-336, 133}, {-247, 133}}, color = {0, 0, 127}));
  connect(LightTruckElectricRateLogic.GrowthRate, LightTruckElectric.InGrowthRate) annotation(
    Line(points = {{-555, 104}, {-429, 104}, {-429, 79}, {-392, 79}}, color = {0, 0, 127}));
  connect(LightTruckElectricRateLogic.DepletionRate, LightTruckElectric.InDepletionRate) annotation(
    Line(points = {{-555, 87}, {-429, 87}, {-429, 65}, {-392, 65}}, color = {0, 0, 127}));
  connect(SimulationYear.y, LightTruckElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 96}, {-590, 96}}, color = {0, 0, 127}));
  connect(SimulationYear.y, HeavyTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, 55}, {-590, 55}}, color = {0, 0, 127}));
  connect(HeavyTruckRateLogic.GrowthRate, HeavyTruck.InGrowthRate) annotation(
    Line(points = {{-555, 63}, {-430, 63}, {-430, 5}, {-211, 5}}, color = {0, 0, 127}));
  connect(HeavyTruckRateLogic.DepletionRate, HeavyTruck.InDepletionRate) annotation(
    Line(points = {{-555, 46}, {-430, 46}, {-430, -9}, {-211, -9}}, color = {0, 0, 127}));
  connect(SimulationYear.y, LightTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-590, 14}}, color = {0, 0, 127}));
  connect(LightTruckRateLogic.GrowthRate, LightTruck.InGrowthRate) annotation(
    Line(points = {{-554, 23}, {-430, 23}, {-430, -99}, {-389, -99}}, color = {0, 0, 127}));
  connect(LightTruckRateLogic.DepletionRate, LightTruck.InDepletionRate) annotation(
    Line(points = {{-554, 5}, {-430, 5}, {-430, -113}, {-389, -113}}, color = {0, 0, 127}));
  connect(HeavyTruckElectricRateLogic.GrowthRate, HeavyTruckElectrical.InGrowthRate) annotation(
    Line(points = {{-555, -18}, {-430, -18}, {-430, -161}, {-202, -161}}, color = {0, 0, 127}));
  connect(HeavyTruckElectricRateLogic.DepletionRate, HeavyTruckElectrical.InDepletionRate) annotation(
    Line(points = {{-555, -36}, {-430, -36}, {-430, -176}, {-202, -176}}, color = {0, 0, 127}));
 connect(DieselBusRateLogic.GrowthRate, DieselBus.InGrowthRate) annotation(
    Line(points = {{-555, -60}, {-430, -60}, {-430, -227}, {165, -227}, {165, 170}, {223, 170}}, color = {0, 0, 127}));
 connect(DieselBusRateLogic.DepletionRate, DieselBus.InDepletionRate) annotation(
    Line(points = {{-555, -78}, {-430, -78}, {-430, -227}, {165, -227}, {165, 155}, {223, 155}}, color = {0, 0, 127}));
  connect(ElectricalBusRateLogic.GrowthRate, ElectricalBus.InGrowthRate) annotation(
    Line(points = {{-555, -108}, {-430, -108}, {-430, -227}, {167, -227}, {167, 63}, {220, 63}}, color = {0, 0, 127}));
  connect(ElectricalBusRateLogic.DepletionRate, ElectricalBus.InDepletionRate) annotation(
    Line(points = {{-555, -126}, {-430, -126}, {-430, -226}, {164, -226}, {164, 47}, {220, 47}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.GrowthRate, GasBus.InGrowthRate) annotation(
    Line(points = {{-555, -157}, {-430, -157}, {-430, -227}, {162, -227}, {162, -59}, {224, -59}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.DepletionRate, GasBus.InDepletionRate) annotation(
    Line(points = {{-555, -175}, {-430, -175}, {-430, -227}, {167, -227}, {167, -75}, {224, -75}}, color = {0, 0, 127}));
  connect(PetrolBusRateLogic.GrowthRate, PetrolBus.InGrowthRate) annotation(
    Line(points = {{-554, -203}, {-430, -203}, {-430, -228}, {167, -228}, {167, -169}, {231, -169}}, color = {0, 0, 127}));
  connect(PetrolBusRateLogic.DepletionRate, PetrolBus.InDepletionRate) annotation(
    Line(points = {{-554, -221}, {-430, -221}, {-430, -229}, {166, -229}, {166, -185}, {231, -185}}, color = {0, 0, 127}));
  connect(SimulationYear.y, HeavyTruckElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, -27}, {-591, -27}}, color = {0, 0, 127}));
  connect(SimulationYear.y, DieselBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, -69}, {-591, -69}}, color = {0, 0, 127}));
  connect(SimulationYear.y, ElectricalBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, -117}, {-591, -117}}, color = {0, 0, 127}));
  connect(SimulationYear.y, GasBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, -166}, {-591, -166}}, color = {0, 0, 127}));
  connect(SimulationYear.y, PetrolBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-751, 14}, {-686, 14}, {-686, -212}, {-590, -212}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, TotalCarAggregator.u[1]) annotation(
    Line(points = {{-423, 280}, {-310, 280}, {-310, 354}, {-215, 354}}, color = {95, 0, 191}));
  connect(DieselCars.VehicleNos, TotalCarAggregator.u[2]) annotation(
    Line(points = {{-340, 233}, {-310, 233}, {-310, 354}, {-215, 354}}, color = {95, 0, 191}));
  connect(PHeVCars.VehicleNos, TotalCarAggregator.u[3]) annotation(
    Line(points = {{-246, 184}, {-245, 184}, {-245, 354}, {-215, 354}}, color = {95, 0, 191}));
  connect(ElectricCars.VehicleNos, TotalCarAggregator.u[4]) annotation(
    Line(points = {{-164, 136}, {-140, 136}, {-140, 233}, {-245, 233}, {-245, 354}, {-215, 354}}, color = {95, 0, 191}));
  connect(TotalCarAggregator.y, PetrolCars.TotalVehicles) annotation(
    Line(points = {{-135, 354}, {-104, 354}, {-104, 271}, {-423, 271}}, color = {0, 0, 127}));
  connect(TotalCarAggregator.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{-135, 354}, {-104, 354}, {-104, 225}, {-340, 225}}, color = {0, 0, 127}));
  connect(TotalCarAggregator.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{-135, 354}, {-104, 354}, {-104, 176}, {-246, 176}}, color = {0, 0, 127}));
  connect(TotalCarAggregator.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{-135, 354}, {-104, 354}, {-104, 127}, {-164, 127}}, color = {0, 0, 127}));
  connect(LightTruckElectric.VehicleNos, TotalTruckAggregator.u[1]) annotation(
    Line(points = {{-246, 72}, {-44, 72}, {-44, 355}, {-6, 355}}, color = {0, 0, 127}));
  connect(HeavyTruck.VehicleNos, TotalTruckAggregator.u[2]) annotation(
    Line(points = {{-62, -1}, {-42, -1}, {-42, 355}, {-6, 355}}, color = {95, 0, 191}));
  connect(LightTruck.VehicleNos, TotalTruckAggregator.u[3]) annotation(
    Line(points = {{-237, -105}, {-41, -105}, {-41, 355}, {-6, 355}}, color = {0, 0, 127}));
  connect(HeavyTruckElectrical.VehicleNos, TotalTruckAggregator.u[4]) annotation(
    Line(points = {{-46, -168}, {-41, -168}, {-41, 355}, {-6, 355}}, color = {0, 0, 127}));
  connect(TotalTruckAggregator.y, LightTruckElectric.TotalVehicles) annotation(
    Line(points = {{74, 355}, {165, 355}, {165, 56}, {-246, 56}}, color = {0, 0, 127}));
  connect(TotalTruckAggregator.y, HeavyTruck.TotalVehicles) annotation(
    Line(points = {{74, 355}, {166, 355}, {166, -18}, {-62, -18}}, color = {0, 0, 127}));
  connect(TotalTruckAggregator.y, LightTruck.TotalVehicles) annotation(
    Line(points = {{74, 355}, {163, 355}, {163, -122}, {-237, -122}}, color = {0, 0, 127}));
  connect(TotalTruckAggregator.y, HeavyTruckElectrical.TotalVehicles) annotation(
    Line(points = {{74, 355}, {163, 355}, {163, -185}, {-46, -185}}, color = {0, 0, 127}));
 connect(DieselBus.VehicleNos, TotalBusAggregator.u[1]) annotation(
    Line(points = {{382, 163}, {409, 163}, {409, 355}, {463, 355}}, color = {95, 0, 191}));
  connect(ElectricalBus.VehicleNos, TotalBusAggregator.u[2]) annotation(
    Line(points = {{388, 55}, {412, 55}, {412, 355}, {463, 355}}, color = {0, 0, 127}));
  connect(GasBus.VehicleNos, TotalBusAggregator.u[3]) annotation(
    Line(points = {{391, -66}, {412, -66}, {412, 355}, {463, 355}}, color = {95, 0, 191}));
  connect(PetrolBus.VehicleNos, TotalBusAggregator.u[4]) annotation(
    Line(points = {{395, -176.5}, {411, -176.5}, {411, 355}, {463, 355}}, color = {0, 0, 127}));
 connect(TotalBusAggregator.y, DieselBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {598, 355}, {598, 149}, {382, 149}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, ElectricalBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 40}, {388, 40}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, GasBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 41}, {415, 41}, {415, -82}, {391, -82}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, PetrolBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 35}, {395, 35}, {395, -191}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, VehiclesPoolBus.S001_Petrol) annotation(
    Line(points = {{-423, 280}, {598, 280}, {598, -31}}, color = {95, 0, 191}));
protected
  annotation(
    Diagram(coordinateSystem(grid = {1, 1}, extent = {{-600, -300}, {600, 300}})),
    Icon(coordinateSystem(grid = {1, 1})));
end TransportationHubConstantGrowthRate;
