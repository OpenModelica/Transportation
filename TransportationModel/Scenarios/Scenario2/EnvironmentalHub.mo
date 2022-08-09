within TransportationModel.Scenarios.Scenario2;


model EnvironmentalHub
   extends TransportationModel.Icons.EnvironmentIcon;
  outer TransportationParameter TP;

  TransportationModel.Interfaces.Bus DisplayHubPort annotation(
    Placement(visible = true, transformation(origin = {103, 20}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {102, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCars(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-14, 109}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalLightTrucks(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-13, 82}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalBuses(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {25.5, 71.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalHeavyTruck(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {25.5, 97.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCO2Emission(nu = 34)  annotation(
    Placement(visible = true, transformation(origin = {58, -7}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PetrolCarsCO2Emission(k = TP.PetrolCarGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, 14}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselCarsCO2Emissions(k = TP.DieselCarGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, 12}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PHeVCarsCO2Emissions(k =  TP.PetrolCarGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, 10}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricCarsCO2Emissions(k = TP.ElectricCarGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, 8}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightPetrolTrucksCO2Emissions(k = TP.PetrolLightTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -11}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightDieselTruckCO2Emissions(k = TP.DieselLightTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -13}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightPHeVTrucksCO2Emissions(k = TP.PetrolLightTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -15}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightBioGasTrucksCO2Emissions(k = TP.BiogasLightTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -17}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightElectricTrucksCO2Emissions(k = TP.ElectricLightTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -19}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyPetrolTruckCO2Emission(k = TP.PetrolHeavyTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -37}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyDieselTruckCO2Emission(k = TP.DieselHeavyTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -39}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyHydrogenTruckCO2Emission(k = TP.HydrogenHeavyTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -43}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyElectricTruckCO2Emission(k = TP.ElectricHeavyTruckGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -45}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselBusCO2Emission(k = TP.DieselBusGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -63}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain GasBusCO2Emission(k = TP.GasBusGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -65}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HydrogenBusCO2Emission(k = TP.HydrogenBusGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -67}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricBusCO2Emission(k = TP.ElectricBusGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, -69}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  
  TransportationModel.LogicBox.EnergyLogicBox BioCars(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforBioCar,BioCombustionEmissionFlag = TP.BioCombustionFlagforBioCar,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/BiogasCarEfficiency.txt"), EnergyperCarPerKM = TP.EnergyUseByBioGasCarperKM, FixedAverageKM = TP.AverageKMBiogasCarRuns, Flag = TP.ActivateVariableAverageKMperBioCar, FossilBanYear = TP.BiogasCarBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforBioCar, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForBioCars, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforBioCar)  annotation(
    Placement(visible = true, transformation(origin = {-65.5, 14.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox PetrolCars(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforPetrolCar, BioCombustionEmissionFlag = TP.BioCombustionFlagforPetrolCar,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/petrol_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByPetrolCarperKM, FixedAverageKM = TP.AverageKMPetrolCarRuns, Flag = TP.ActivateVariableAverageKMperPetrolCar, FossilBanYear = TP.PetrolCarBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforPetrolCar, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForPetrolCars, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforPetrolCar )  annotation(
    Placement(visible = true, transformation(origin = {-72.5, 7.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox PHeVCars(UpstreamBioCombustionEmissionFlag =  TP.UpstreamFossilCombustionFlagforPHeVCar, BioCombustionEmissionFlag = TP.BioCombustionFlagforPHeVCar,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"),BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PHEV_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByPHeVCarperKM, FixedAverageKM = TP.AverageKMPHeVCarRuns, Flag = TP.ActivateVariableAverageKMperPHeVCar, FossilBanYear = TP.PHeVCarBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforPHeVCar, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForPHeVCars, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforPHeVCar  )  annotation(
    Placement(visible = true, transformation(origin = {-72.5, -3.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain BiogasCarCO2Emission(k = TP.BiogasCarGHGEmissionGmperKWh)  annotation(
    Placement(visible = true, transformation(origin = {-15, 16}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox DieselCars(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforDieselCar, BioCombustionEmissionFlag = TP.BioCombustionFlagforDieselCar,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/DieselBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/DieselBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Diesel_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByDieselCarperKM, FixedAverageKM = TP.AverageKMDieselCarRuns, Flag = TP.ActivateVariableAverageKMperDieselCar, FossilBanYear = TP.DieselCarBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforDieselCar, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Diesel_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Diesel_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForDieselCars, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforDieselCar)  annotation(
    Placement(visible = true, transformation(origin = {-65.5, 1.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricCarsCO2EmissionsUpstream(k = TP.ElectricCarGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -5}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PHeVCarsCO2EmissionsUpstream(k = TP.PetrolCarGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -3}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselCarsCO2EmissionsUpstream(k = TP.DieselCarGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -1}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PetrolCarsCO2EmissionUpstream(k = TP.PetrolCarGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, 1}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain BiogasCarCO2EmissionUpstream(k = TP.BiogasCarGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, 3}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalBioCarCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-58, 16}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalBioCarUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-57.5, 13}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalPetrolCarCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-61, 9}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalPetrolCarUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-61, 6}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalDieselCarUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-58, -1}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalDieselCarCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-58, 3}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalPHeVCarUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-61, -6}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalPHeVCarCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-61, -3}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  TransportationModel.LogicBox.EnergyLogicBox LightPetrolTrucks(BioCombustionEmissionFlag = TP.BioCombustionFlagforLightPetrolTruck, UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforLightPetrolTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByPetrolLightTrucksperKM, FixedAverageKM = TP.AverageKMLightPetrolTruckRuns, Flag = TP.ActivateVariableAverageKMperHeavyPetrolTruck, FossilBanYear = TP.LightPetrolTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforLightPetrolTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForLightPetrolTrucks, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforLightPetrolTruck)  annotation(
    Placement(visible = true, transformation(origin = {-91.5, -17.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));

  TransportationModel.LogicBox.EnergyLogicBox LightDieselTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforLightDieselTruck,   BioCombustionEmissionFlag = TP.BioCombustionFlagforLightDieselTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByDieselLightTrucksperKM,FixedAverageKM = TP.AverageKMLightDieselTruckRuns, Flag = TP.ActivateVariableAverageKMperLightDieselTruck, FossilBanYear = TP.LightDieselTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforLightDieselTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForLightDieselTrucks , UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforLightDieselTruck )  annotation(
    Placement(visible = true, transformation(origin = {-86.5, -23.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox LightPHeVTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforLightPHeVTruck, BioCombustionEmissionFlag = TP.BioCombustionFlagforLightPHeVTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightPHeVTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByPHeVLightTrucksperKM,FixedAverageKM = TP.AverageKMLightPHeVTruckRuns, Flag = TP.ActivateVariableAverageKMperLightDieselTruck, FossilBanYear = TP.LightPHeVTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforLightPHeVTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForLightPHeVTrucks  , UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforLightPHeVTruck)  annotation(
    Placement(visible = true, transformation(origin = {-91.5, -29.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.EnergyLogicBox LightBioGasTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforLightBioTruck, BioCombustionEmissionFlag = TP.BioCombustionFlagforLightBioTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightBioTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByBioGasLightTrucksperKM,FixedAverageKM = TP.AverageKMLightBiogasTruckRuns, Flag = TP.ActivateVariableAverageKMperLightBioTruck, FossilBanYear = TP.LightBioGasTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforLightBioTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/Petrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForLightBioGasTrucks   , UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforLightBioTruck)  annotation(
    Placement(visible = true, transformation(origin = {-86.5, -35.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  Modelica.Blocks.Math.Add TotalLightPetrolTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-84, -19}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightPetrolTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-84, -16}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightElectricTruckCO2EmissionUpstream(k = TP.ElectricLightTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -31}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightBioGasTruckCO2EmissionUpstream(k = TP.BiogasLightTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -29}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightPHeVTruckCO2EmissionUpstream(k = TP.PetrolLightTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -27}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightDieselTruckCO2EmissionUpstream(k = TP.DieselLightTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -25}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightPetrolTruckCO2EmissionUpstream(k = TP.PetrolLightTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -23}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightDieselTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-80, -25}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightDieselTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-80, -22}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightPHeVTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-84, -31}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightPHeVTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-84, -28}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightBioGasTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-80, -34}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalLightBioGasTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-80, -37}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox HeavyPetrolTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforHeavyPetrolTruck, BioCombustionEmissionFlag = TP.BioCombustionFlagforHeavyPetrolTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByPetrolHeavyTrucksperKM,FixedAverageKM = TP.AverageKMHeavyPetrolTruckRuns, Flag = TP.ActivateVariableAverageKMperHeavyPetrolTruck, FossilBanYear = TP.HeavyPetrolTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHeavyPetrolTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForHeavyPetrolTrucks, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyPetrolTruck)  annotation(
    Placement(visible = true, transformation(origin = {-73.5, -47.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox HeavyDieselTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyDieselTruck, BioCombustionEmissionFlag = TP.BioCombustionFlagforHeavyDieselTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyDieselTruckBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyDieselTruckBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyDieselTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByDieselHeavyTrucksperKM,FixedAverageKM = TP.AverageKMHeavyDieselTruckRuns, Flag = TP.ActivateVariableAverageKMperHeavyDieselTruck, FossilBanYear = TP.HeavyDieselTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHeavyDieselTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyDieselTruck_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyDieselTruck_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForHeavyDieselTrucks, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyDieselTruck)  annotation(
    Placement(visible = true, transformation(origin = {-81.5, -54.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox HeavyHydrogenTrucks(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforHeavyHydrogenTruck,  BioCombustionEmissionFlag = TP.BioCombustionFlagforHeavyHydrogenTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrolBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyHydrogenTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByHydrogenHeavyTrucksperKM,FixedAverageKM = TP.AverageKMHeavyHydrogenTruckRuns, Flag = TP.ActivateVariableAverageKMperHeavyHydrogenTruck, FossilBanYear = TP.HeavyHydrogenTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHeavyHydrogenTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForHeavyHydrogenTrucks, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyHydrogenTruck )  annotation(
    Placement(visible = true, transformation(origin = {-73.5, -60.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox HeavyBioGasTrucks(UpstreamBioCombustionEmissionFlag  = TP.UpstreamBioCombustionFlagforHeavyBioTruck, BioCombustionEmissionFlag = TP.BioCombustionFlagforHeavyBioTruck,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrolBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyBioTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByBioGasHeavyTrucksperKM,FixedAverageKM = TP.AverageKMHeavyBiogasTruckRuns, Flag = TP.ActivateVariableAverageKMperHeavyBioTruck, FossilBanYear = TP.HeavyBiogasTruckBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHeavyBioTruck, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_FossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyTruckPetrol_efficientFactor.txt"), ReducedPercentage = TP.ReducedPercentageForHeavyBioGasTrucks, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyBioTruck )  annotation(
    Placement(visible = true, transformation(origin = {-81.5, -67.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));

  Modelica.Blocks.Math.Add TotalHeavyPetrolTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-67, -46}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyPetrolTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-67, -50}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyDieselTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-74, -56}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyDieselTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-74, -53}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyHydrogenTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-67, -59}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyHydrogenTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-67, -62}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyBioGasTruckCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-74, -66}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHeavyBioGasTruckUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-74, -69}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyElectricTruckCO2EmissionUpstream(k = TP.ElectricHeavyTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -57}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyBioGasTruckCO2EmissionUpstream(k = TP.BiogasHeavyTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -55}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyHydrogenTruckCO2EmissionUpstream(k = TP.HydrogenHeavyTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -53}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyDieselTruckCO2EmissionUpstream(k = TP.DieselHeavyTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -51}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyPetrolTruckCO2EmissionUpstream(k = TP.PetrolHeavyTruckGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -49}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricBusCO2EmissionUpstream(k = TP.ElectricBusGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -79}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HydrogenBusCO2EmissionUpstream(k = TP.HydrogenBusGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -77}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain GasBusCO2EmissionUpstream(k = TP.GasBusGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -75}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselBusCO2EmissionUpstream(k = TP.DieselBusGHGEmissionGmperKWhUpstream) annotation(
    Placement(visible = true, transformation(origin = {-15, -73}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));

  TransportationModel.LogicBox.EnergyLogicBox DieselBus(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforDieselBus,  BioCombustionEmissionFlag = TP.BioCombustionFlagforDieselBus,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckBioCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckBioCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/PHeVCarEfficiency.txt"), EnergyperCarPerKM = TP.EnergyUseByDieselBusperKM,FixedAverageKM = TP.AverageKMDieselBusRuns, Flag = TP.ActivateVariableAverageKMperDieselBus, FossilBanYear = TP.DieselBusBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforDieselBus,FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForDieselBus, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforDieselBus)  annotation(
    Placement(visible = true, transformation(origin = {-86.5, -83.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox GasBus(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforGasBus, BioCombustionEmissionFlag = TP.BioCombustionFlagforGasBus,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightBioTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByGasBusperKM,FixedAverageKM = TP.AverageKMGasBusRuns, Flag = TP.ActivateVariableAverageKMperGasBus, FossilBanYear = TP.GasBusBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforGasBus, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForGasBus, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforGasBus )  annotation(
    Placement(visible = true, transformation(origin = {-78.5, -89.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBox HydrogenBus(UpstreamBioCombustionEmissionFlag = TP.UpstreamBioCombustionFlagforHydrogenBus, BioCombustionEmissionFlag = TP.BioCombustionFlagforHydrogenBus,BioFuelComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), BioFuelCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightBioTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByHydrogenBusperKM,FixedAverageKM = TP.AverageKMHydrogenBusRuns, Flag = TP.ActivateVariableAverageKMperHydrogenBus, FossilBanYear = TP.HydrogenBusBanYear, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHydrogenBus, FossilComposition = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), FossilCompositionUpstream = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightDieselTruckFossilCompositionFactor.txt"), ReducedPercentage = TP.ReducedPercentageForHydrogenBus, UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHydrogenBus )  annotation(
    Placement(visible = true, transformation(origin = {-86.5, -96.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  Modelica.Blocks.Math.Add TotalDieselBusUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-79, -85}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalDieselBusCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-79, -82}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalGasBusUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-71, -91}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalGasBusCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-71, -88}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHydrogenBusUpstreamEnergy annotation(
    Placement(visible = true, transformation(origin = {-79, -98}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
  Modelica.Blocks.Math.Add TotalHydrogenBusCombustionEnergy annotation(
    Placement(visible = true, transformation(origin = {-79, -95}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
 
  TransportationModel.LogicBox.EnergyLogicBoxForElectricalVehicles ElectricalCars(UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforElectricalCar, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforElectricalCar, EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/ElectricalCarEfficiency.txt"), EnergyperCarPerKM = TP.EnergyUseByElectricCarperKM,FixedAverageKM = TP.AverageKMElectricCarRuns, ReducedAverageKMforElectricVehicles = TP.ReducedPercentageForElectricCars, Flag = TP.ActivateVariableAverageKMperElectricCar )  annotation(
    Placement(visible = true, transformation(origin = {-65.5, -10.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.EnergyLogicBoxForElectricalVehicles LightElectricTrucks(UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforLightElectricTruck, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforLightElectricTruck, EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightBioTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByElectricLightTrucksperKM,FixedAverageKM = TP.AverageKMLightElectricTruckRuns, ReducedAverageKMforElectricVehicles = TP.ReducedPercentageForLightElectricTrucks, Flag = TP.ActivateVariableAverageKMperLightElectricTruck )  annotation(
    Placement(visible = true, transformation(origin = {-91.5, -41.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.EnergyLogicBoxForElectricalVehicles HeavyElectricTrucks(UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforHeavyElectricTruck, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforHeavyElectricTruck, FixedAverageKM = TP.AverageKMHeavyElectricTruckRuns, EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/HeavyElectricTruck_efficientFactor.txt"), EnergyperCarPerKM = TP.EnergyUseByElectricHeavyTrucksperKM, ReducedAverageKMforElectricVehicles = TP.ReducedPercentageForHeavyElectricTrucks, Flag = TP.ActivateVariableAverageKMperHeavyElectricTruck )  annotation(
    Placement(visible = true, transformation(origin = {-73.5, -74.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.EnergyLogicBoxForElectricalVehicles ElectricBus(UpstreamFossilCombustionEmissionFlag = TP.UpstreamFossilCombustionFlagforElectricBus, FossilCombustionEmissionFlag = TP.FossilCombustionFlagforElectricBus, FixedAverageKM = TP.AverageKMElectricBusRuns, EfficiencyFactor = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case2/LightBioTruck_efficientFactor.txt"),EnergyperCarPerKM = TP.EnergyUseByElectricBusperKM, ReducedAverageKMforElectricVehicles = TP.ReducedPercentageForElectricBus, Flag = TP.ActivateVariableAverageKMperElectricBus )  annotation(
    Placement(visible = true, transformation(origin = {-78.5, -104.5}, extent = {{-2.5, -2.5}, {2.5, 2.5}}, rotation = 0)));
 
  Modelica.Blocks.Math.MultiSum TotalCarsCO2Emission(nu = 10) annotation(
    Placement(visible = true, transformation(origin = {41, 10}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalLightTrucksCO2Emission(nu = 10) annotation(
    Placement(visible = true, transformation(origin = {41, -23}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalHeavyTrucksCO2Emission(nu = 10) annotation(
    Placement(visible = true, transformation(origin = {45, -49}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalBusCO2Emssion(nu = 8) annotation(
    Placement(visible = true, transformation(origin = {45.5, -70.5}, extent = {{-4.5, -4.5}, {4.5, 4.5}}, rotation = 0)));
  TransportationModel.Interfaces.Bus TransportationHubPort annotation(
    Placement(visible = true, transformation(origin = {-101, 18}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
 Modelica.Blocks.Math.Gain HeavyBioGasTruckCO2Emission(k = TP.BiogasHeavyTruckGHGEmissionGmperKWh) annotation(
    Placement(visible = true, transformation(origin = {-15, -41}, extent = {{-1, -1}, {1, 1}}, rotation = 0)));
equation
  connect(TotalHeavyTruck.y, DisplayHubPort.NumberofHeavyTrucks) annotation(
    Line(points = {{32, 97.5}, {102.7, 97.5}, {102.7, 20}}, color = {0, 0, 127}));
  connect(TotalLightTrucks.y, DisplayHubPort.NumberofLightTrucks) annotation(
    Line(points = {{-7, 82}, {102.7, 82}, {102.7, 20}}, color = {0, 0, 127}));
  connect(TotalBuses.y, DisplayHubPort.NumberofBuses) annotation(
    Line(points = {{32, 71.5}, {102.7, 71.5}, {102.7, 20}}, color = {0, 0, 127}));
  connect(TotalCO2Emission.y, DisplayHubPort.TotalCO2Emission) annotation(
    Line(points = {{64, -7}, {102.7, -7}, {102.7, 20}}, color = {0, 0, 127}));
  connect(BiogasCarCO2Emission.y, TotalCO2Emission.u[1]) annotation(
    Line(points = {{-13.9, 16}, {11.1, 16}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(PetrolCarsCO2Emission.y, TotalCO2Emission.u[2]) annotation(
    Line(points = {{-13.9, 14}, {11.1, 14}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(DieselCarsCO2Emissions.y, TotalCO2Emission.u[3]) annotation(
    Line(points = {{-13.9, 12}, {11.1, 12}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(PHeVCarsCO2Emissions.y, TotalCO2Emission.u[4]) annotation(
    Line(points = {{-13.9, 10}, {11.1, 10}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(ElectricCarsCO2Emissions.y, TotalCO2Emission.u[5]) annotation(
    Line(points = {{-13.9, 8}, {11.1, 8}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(BiogasCarCO2EmissionUpstream.y, TotalCO2Emission.u[6]) annotation(
    Line(points = {{-13.9, 3}, {11.1, 3}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(PetrolCarsCO2EmissionUpstream.y, TotalCO2Emission.u[7]) annotation(
    Line(points = {{-13.9, 1}, {11.1, 1}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(DieselCarsCO2EmissionsUpstream.y, TotalCO2Emission.u[8]) annotation(
    Line(points = {{-13.9, -1}, {11.1, -1}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(PHeVCarsCO2EmissionsUpstream.y, TotalCO2Emission.u[9]) annotation(
    Line(points = {{-13.9, -3}, {11.1, -3}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(ElectricCarsCO2EmissionsUpstream.y, TotalCO2Emission.u[10]) annotation(
    Line(points = {{-13.9, -5}, {19.55, -5}, {19.55, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightPHeVTrucksCO2Emissions.y, TotalCO2Emission.u[11]) annotation(
    Line(points = {{-13.9, -15}, {11.1, -15}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightBioGasTrucksCO2Emissions.y, TotalCO2Emission.u[12]) annotation(
    Line(points = {{-13.9, -17}, {11.1, -17}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightElectricTrucksCO2Emissions.y, TotalCO2Emission.u[13]) annotation(
    Line(points = {{-13.9, -19}, {11.1, -19}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightPetrolTruckCO2EmissionUpstream.y, TotalCO2Emission.u[14]) annotation(
    Line(points = {{-13.9, -23}, {11.1, -23}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightDieselTruckCO2EmissionUpstream.y, TotalCO2Emission.u[15]) annotation(
    Line(points = {{-13.9, -25}, {11.1, -25}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightPHeVTruckCO2EmissionUpstream.y, TotalCO2Emission.u[16]) annotation(
    Line(points = {{-13.9, -27}, {11.1, -27}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightBioGasTruckCO2EmissionUpstream.y, TotalCO2Emission.u[17]) annotation(
    Line(points = {{-13.9, -29}, {11.1, -29}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightElectricTruckCO2EmissionUpstream.y, TotalCO2Emission.u[18]) annotation(
    Line(points = {{-13.9, -31}, {11.1, -31}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckCO2EmissionUpstream.y, TotalCO2Emission.u[19]) annotation(
    Line(points = {{-13.9, -49}, {11.1, -49}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckCO2EmissionUpstream.y, TotalCO2Emission.u[20]) annotation(
    Line(points = {{-13.9, -51}, {11.1, -51}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckCO2EmissionUpstream.y, TotalCO2Emission.u[21]) annotation(
    Line(points = {{-13.9, -53}, {11.1, -53}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruckCO2EmissionUpstream.y, TotalCO2Emission.u[22]) annotation(
    Line(points = {{-13.9, -55}, {11.1, -55}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HeavyElectricTruckCO2EmissionUpstream.y, TotalCO2Emission.u[23]) annotation(
    Line(points = {{-13.9, -57}, {11.1, -57}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(ElectricBusCO2Emission.y, TotalCO2Emission.u[24]) annotation(
    Line(points = {{-13.9, -69}, {11.1, -69}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(DieselBusCO2EmissionUpstream.y, TotalCO2Emission.u[25]) annotation(
    Line(points = {{-13.9, -73}, {11.1, -73}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(GasBusCO2EmissionUpstream.y, TotalCO2Emission.u[26]) annotation(
    Line(points = {{-13.9, -75}, {11.1, -75}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(HydrogenBusCO2EmissionUpstream.y, TotalCO2Emission.u[27]) annotation(
    Line(points = {{-13.9, -77}, {11.1, -77}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(TotalBioCarCombustionEnergy.y, BiogasCarCO2Emission.u) annotation(
    Line(points = {{-56.9, 16}, {-15.9, 16}}, color = {0, 0, 127}));
  connect(TotalPetrolCarCombustionEnergy.y, PetrolCarsCO2Emission.u) annotation(
    Line(points = {{-60, 9}, {-44.9, 9}, {-44.9, 14}, {-15.9, 14}}, color = {0, 0, 127}));
  connect(TotalDieselCarCombustionEnergy.y, DieselCarsCO2Emissions.u) annotation(
    Line(points = {{-56.9, 3}, {-44.9, 3}, {-44.9, 12}, {-15.9, 12}}, color = {0, 0, 127}));
  connect(TotalPHeVCarCombustionEnergy.y, PHeVCarsCO2Emissions.u) annotation(
    Line(points = {{-60, -3}, {-44.9, -3}, {-44.9, 10}, {-15.9, 10}}, color = {0, 0, 127}));
  connect(TotalBioCarUpstreamEnergy.y, BiogasCarCO2EmissionUpstream.u) annotation(
    Line(points = {{-56.4, 13}, {-45.4, 13}, {-45.4, 3}, {-16.4, 3}}, color = {0, 0, 127}));
  connect(TotalPetrolCarUpstreamEnergy.y, PetrolCarsCO2EmissionUpstream.u) annotation(
    Line(points = {{-60, 6}, {-44.9, 6}, {-44.9, 1}, {-15.9, 1}}, color = {0, 0, 127}));
  connect(TotalDieselCarUpstreamEnergy.y, DieselCarsCO2EmissionsUpstream.u) annotation(
    Line(points = {{-56.9, -1}, {-15.9, -1}}, color = {0, 0, 127}));
  connect(TotalPHeVCarUpstreamEnergy.y, PHeVCarsCO2EmissionsUpstream.u) annotation(
    Line(points = {{-60, -6}, {-44.9, -6}, {-44.9, -3}, {-15.9, -3}}, color = {0, 0, 127}));
  connect(TotalLightPetrolTruckCombustionEnergy.y, LightPetrolTrucksCO2Emissions.u) annotation(
    Line(points = {{-82.9, -16}, {-43.9, -16}, {-43.9, -11}, {-15.9, -11}}, color = {0, 0, 127}));
  connect(TotalLightDieselTruckCombustionEnergy.y, LightDieselTruckCO2Emissions.u) annotation(
    Line(points = {{-78.9, -22}, {-43.9, -22}, {-43.9, -13}, {-15.9, -13}}, color = {0, 0, 127}));
  connect(TotalLightPHeVTruckCombustionEnergy.y, LightPHeVTrucksCO2Emissions.u) annotation(
    Line(points = {{-82.9, -28}, {-43.9, -28}, {-43.9, -15}, {-15.9, -15}}, color = {0, 0, 127}));
  connect(TotalLightBioGasTruckCombustionEnergy.y, LightBioGasTrucksCO2Emissions.u) annotation(
    Line(points = {{-78.9, -34}, {-43.9, -34}, {-43.9, -17}, {-15.9, -17}}, color = {0, 0, 127}));
  connect(TotalLightPetrolTruckUpstreamEnergy.y, LightPetrolTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-82.9, -19}, {-43.9, -19}, {-43.9, -23}, {-15.9, -23}}, color = {0, 0, 127}));
  connect(TotalLightDieselTruckUpstreamEnergy.y, LightDieselTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-78.9, -25}, {-15.9, -25}}, color = {0, 0, 127}));
  connect(TotalLightPHeVTruckUpstreamEnergy.y, LightPHeVTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-82.9, -31}, {-43.9, -31}, {-43.9, -27}, {-15.9, -27}}, color = {0, 0, 127}));
  connect(TotalLightBioGasTruckUpstreamEnergy.y, LightBioGasTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-78.9, -37}, {-43.9, -37}, {-43.9, -29}, {-15.9, -29}}, color = {0, 0, 127}));
  connect(TotalHeavyPetrolTruckUpstreamEnergy.y, HeavyPetrolTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-65.9, -50}, {-42.9, -50}, {-42.9, -49}, {-15.9, -49}}, color = {0, 0, 127}));
  connect(TotalHeavyDieselTruckUpstreamEnergy.y, HeavyDieselTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-72.9, -56}, {-42.9, -56}, {-42.9, -51}, {-15.9, -51}}, color = {0, 0, 127}));
  connect(TotalHeavyHydrogenTruckUpstreamEnergy.y, HeavyHydrogenTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-65.9, -62}, {-42.9, -62}, {-42.9, -53}, {-15.9, -53}}, color = {0, 0, 127}));
  connect(TotalHeavyBioGasTruckUpstreamEnergy.y, HeavyBioGasTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-72.9, -69}, {-42.9, -69}, {-42.9, -55}, {-15.9, -55}}, color = {0, 0, 127}));
  connect(TotalDieselBusUpstreamEnergy.y, DieselBusCO2EmissionUpstream.u) annotation(
    Line(points = {{-77.9, -85}, {-41.9, -85}, {-41.9, -73}, {-15.9, -73}}, color = {0, 0, 127}));
  connect(TotalGasBusUpstreamEnergy.y, GasBusCO2EmissionUpstream.u) annotation(
    Line(points = {{-69.9, -91}, {-41.9, -91}, {-41.9, -75}, {-15.9, -75}}, color = {0, 0, 127}));
  connect(TotalHydrogenBusUpstreamEnergy.y, HydrogenBusCO2EmissionUpstream.u) annotation(
    Line(points = {{-77.9, -98}, {-41.9, -98}, {-41.9, -77}, {-15.9, -77}}, color = {0, 0, 127}));
  connect(BioCars.BioCombustion, TotalBioCarCombustionEnergy.u1) annotation(
    Line(points = {{-63, 16}, {-61.75, 16}, {-61.75, 17}, {-58.75, 17}}, color = {0, 0, 127}));
  connect(BioCars.FossilCombustion, TotalBioCarCombustionEnergy.u2) annotation(
    Line(points = {{-63, 15}, {-58.75, 15}}, color = {0, 0, 127}));
  connect(BioCars.UpstreamFossilCombustion, TotalBioCarUpstreamEnergy.u1) annotation(
    Line(points = {{-63, 14}, {-58.75, 14}}, color = {0, 0, 127}));
  connect(BioCars.UpstreamBioCombustion, TotalBioCarUpstreamEnergy.u2) annotation(
    Line(points = {{-63, 13}, {-61.25, 13}, {-61.25, 12.1}, {-58.75, 12.1}}, color = {0, 0, 127}));
  connect(PetrolCars.BioCombustion, TotalPetrolCarCombustionEnergy.u1) annotation(
    Line(points = {{-70, 9}, {-64.75, 9}, {-64.75, 10}, {-61.75, 10}}, color = {0, 0, 127}));
  connect(PetrolCars.FossilCombustion, TotalPetrolCarCombustionEnergy.u2) annotation(
    Line(points = {{-70, 8}, {-61.75, 8}}, color = {0, 0, 127}));
  connect(PetrolCars.UpstreamFossilCombustion, TotalPetrolCarUpstreamEnergy.u1) annotation(
    Line(points = {{-70, 7}, {-61.75, 7}}, color = {0, 0, 127}));
  connect(PetrolCars.UpstreamBioCombustion, TotalPetrolCarUpstreamEnergy.u2) annotation(
    Line(points = {{-70, 6}, {-64.75, 6}, {-64.75, 5.1}, {-61.75, 5.1}}, color = {0, 0, 127}));
  connect(DieselCars.BioCombustion, TotalDieselCarCombustionEnergy.u1) annotation(
    Line(points = {{-63, 3}, {-61.25, 3}, {-61.25, 4}, {-58.75, 4}}, color = {0, 0, 127}));
  connect(DieselCars.FossilCombustion, TotalDieselCarCombustionEnergy.u2) annotation(
    Line(points = {{-63, 2}, {-58.75, 2}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.BioCombustion, TotalLightPetrolTruckCombustionEnergy.u1) annotation(
    Line(points = {{-88.75, -16}, {-87.75, -16}, {-87.75, -15}, {-84.75, -15}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.FossilCombustion, TotalLightPetrolTruckCombustionEnergy.u2) annotation(
    Line(points = {{-88.75, -17}, {-84.75, -17}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.UpstreamFossilCombustion, TotalLightPetrolTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-88.75, -18}, {-84.75, -18}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.UpstreamBioCombustion, TotalLightPetrolTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-88.75, -18.9}, {-87.75, -18.9}, {-87.75, -19.9}, {-84.75, -19.9}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.BioCombustion, TotalLightDieselTruckCombustionEnergy.u1) annotation(
    Line(points = {{-83.75, -22}, {-81.75, -22}, {-81.75, -21}, {-80.75, -21}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.FossilCombustion, TotalLightDieselTruckCombustionEnergy.u2) annotation(
    Line(points = {{-83.75, -23}, {-80.75, -23}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.UpstreamFossilCombustion, TotalLightDieselTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-83.75, -24}, {-80.75, -24}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.UpstreamBioCombustion, TotalLightDieselTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-83.75, -24.9}, {-82.75, -24.9}, {-82.75, -25.9}, {-80.75, -25.9}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.BioCombustion, TotalLightPHeVTruckCombustionEnergy.u1) annotation(
    Line(points = {{-88.75, -28}, {-86.75, -28}, {-86.75, -27}, {-84.75, -27}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.FossilCombustion, TotalLightPHeVTruckCombustionEnergy.u2) annotation(
    Line(points = {{-88.75, -29}, {-84.75, -29}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.UpstreamFossilCombustion, TotalLightPHeVTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-88.75, -30}, {-84.75, -30}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.UpstreamBioCombustion, TotalLightPHeVTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-88.75, -30.9}, {-86.75, -30.9}, {-86.75, -31.9}, {-84.75, -31.9}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.BioCombustion, TotalLightBioGasTruckCombustionEnergy.u1) annotation(
    Line(points = {{-83.75, -34}, {-82.75, -34}, {-82.75, -33}, {-80.75, -33}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.FossilCombustion, TotalLightBioGasTruckCombustionEnergy.u2) annotation(
    Line(points = {{-83.75, -35}, {-80.75, -35}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.UpstreamFossilCombustion, TotalLightBioGasTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-83.75, -36}, {-80.75, -36}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.UpstreamBioCombustion, TotalLightBioGasTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-83.75, -36.9}, {-82.75, -36.9}, {-82.75, -37.9}, {-80.75, -37.9}}, color = {0, 0, 127}));
  connect(HeavyPetrolTrucks.BioCombustion, TotalHeavyPetrolTruckCombustionEnergy.u1) annotation(
    Line(points = {{-70.75, -46}, {-69.375, -46}, {-69.375, -45}, {-68, -45}}, color = {0, 0, 127}));
  connect(HeavyPetrolTrucks.FossilCombustion, TotalHeavyPetrolTruckCombustionEnergy.u2) annotation(
    Line(points = {{-70.75, -47}, {-68, -47}}, color = {0, 0, 127}));
  connect(HeavyPetrolTrucks.UpstreamFossilCombustion, TotalHeavyPetrolTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-70.75, -48}, {-69.25, -48}, {-69.25, -49}, {-67.75, -49}}, color = {0, 0, 127}));
  connect(HeavyPetrolTrucks.UpstreamBioCombustion, TotalHeavyPetrolTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-70.75, -48.9}, {-70.75, -50.9}, {-67.75, -50.9}}, color = {0, 0, 127}));
  connect(HeavyDieselTrucks.BioCombustion, TotalHeavyDieselTruckCombustionEnergy.u1) annotation(
    Line(points = {{-78.75, -53}, {-77.75, -53}, {-77.75, -52}, {-74.75, -52}}, color = {0, 0, 127}));
  connect(HeavyDieselTrucks.FossilCombustion, TotalHeavyDieselTruckCombustionEnergy.u2) annotation(
    Line(points = {{-78.75, -54}, {-74.75, -54}}, color = {0, 0, 127}));
  connect(HeavyDieselTrucks.UpstreamFossilCombustion, TotalHeavyDieselTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-78.75, -55}, {-74.75, -55}}, color = {0, 0, 127}));
  connect(HeavyDieselTrucks.UpstreamBioCombustion, TotalHeavyDieselTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-78.75, -55.9}, {-77.75, -55.9}, {-77.75, -56.9}, {-74.75, -56.9}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTrucks.BioCombustion, TotalHeavyHydrogenTruckCombustionEnergy.u1) annotation(
    Line(points = {{-70.75, -59}, {-69.75, -59}, {-69.75, -58}, {-67.75, -58}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTrucks.FossilCombustion, TotalHeavyHydrogenTruckCombustionEnergy.u2) annotation(
    Line(points = {{-70.75, -60}, {-67.75, -60}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTrucks.UpstreamFossilCombustion, TotalHeavyHydrogenTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-70.75, -61}, {-67.75, -61}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTrucks.UpstreamBioCombustion, TotalHeavyHydrogenTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-70.75, -61.9}, {-69.75, -61.9}, {-69.75, -62.9}, {-67.75, -62.9}}, color = {0, 0, 127}));
  connect(HeavyBioGasTrucks.BioCombustion, TotalHeavyBioGasTruckCombustionEnergy.u1) annotation(
    Line(points = {{-78.75, -66}, {-77.75, -66}, {-77.75, -65}, {-74.75, -65}}, color = {0, 0, 127}));
  connect(HeavyBioGasTrucks.FossilCombustion, TotalHeavyBioGasTruckCombustionEnergy.u2) annotation(
    Line(points = {{-78.75, -67}, {-74.75, -67}}, color = {0, 0, 127}));
  connect(HeavyBioGasTrucks.UpstreamFossilCombustion, TotalHeavyBioGasTruckUpstreamEnergy.u1) annotation(
    Line(points = {{-78.75, -68}, {-74.75, -68}}, color = {0, 0, 127}));
  connect(HeavyBioGasTrucks.UpstreamBioCombustion, TotalHeavyBioGasTruckUpstreamEnergy.u2) annotation(
    Line(points = {{-78.75, -68.9}, {-77.75, -68.9}, {-77.75, -69.9}, {-74.75, -69.9}}, color = {0, 0, 127}));
  connect(DieselBus.BioCombustion, TotalDieselBusCombustionEnergy.u1) annotation(
    Line(points = {{-83.75, -82}, {-81.75, -82}, {-81.75, -81}, {-79.75, -81}}, color = {0, 0, 127}));
  connect(DieselBus.FossilCombustion, TotalDieselBusCombustionEnergy.u2) annotation(
    Line(points = {{-83.75, -83}, {-79.75, -83}}, color = {0, 0, 127}));
  connect(DieselBus.UpstreamFossilCombustion, TotalDieselBusUpstreamEnergy.u1) annotation(
    Line(points = {{-83.75, -84}, {-79.75, -84}}, color = {0, 0, 127}));
  connect(DieselBus.UpstreamBioCombustion, TotalDieselBusUpstreamEnergy.u2) annotation(
    Line(points = {{-83.75, -84.9}, {-81.75, -84.9}, {-81.75, -85.9}, {-79.75, -85.9}}, color = {0, 0, 127}));
  connect(GasBus.BioCombustion, TotalGasBusCombustionEnergy.u1) annotation(
    Line(points = {{-75.75, -88}, {-74.75, -88}, {-74.75, -87}, {-71.75, -87}}, color = {0, 0, 127}));
  connect(GasBus.FossilCombustion, TotalGasBusCombustionEnergy.u2) annotation(
    Line(points = {{-75.75, -89}, {-71.75, -89}}, color = {0, 0, 127}));
  connect(GasBus.UpstreamFossilCombustion, TotalGasBusUpstreamEnergy.u1) annotation(
    Line(points = {{-75.75, -90}, {-71.75, -90}}, color = {0, 0, 127}));
  connect(GasBus.UpstreamBioCombustion, TotalGasBusUpstreamEnergy.u2) annotation(
    Line(points = {{-75.75, -90.9}, {-74.75, -90.9}, {-74.75, -91.9}, {-71.75, -91.9}}, color = {0, 0, 127}));
  connect(HydrogenBus.BioCombustion, TotalHydrogenBusCombustionEnergy.u1) annotation(
    Line(points = {{-83.75, -95}, {-82.75, -95}, {-82.75, -94}, {-79.75, -94}}, color = {0, 0, 127}));
  connect(HydrogenBus.FossilCombustion, TotalHydrogenBusCombustionEnergy.u2) annotation(
    Line(points = {{-83.75, -96}, {-79.75, -96}}, color = {0, 0, 127}));
  connect(HydrogenBus.UpstreamFossilCombustion, TotalHydrogenBusUpstreamEnergy.u1) annotation(
    Line(points = {{-83.75, -97}, {-79.75, -97}}, color = {0, 0, 127}));
  connect(HydrogenBus.UpstreamBioCombustion, TotalHydrogenBusUpstreamEnergy.u2) annotation(
    Line(points = {{-83.75, -97.9}, {-82.75, -97.9}, {-82.75, -98.9}, {-79.75, -98.9}}, color = {0, 0, 127}));
  connect(DieselCars.UpstreamFossilCombustion, TotalDieselCarUpstreamEnergy.u1) annotation(
    Line(points = {{-63, 1}, {-58.75, 1}, {-58.75, 0}}, color = {0, 0, 127}));
  connect(DieselCars.UpstreamBioCombustion, TotalDieselCarUpstreamEnergy.u2) annotation(
    Line(points = {{-63, 0}, {-60.75, 0}, {-60.75, -1.9}, {-58.75, -1.9}}, color = {0, 0, 127}));
  connect(PHeVCars.BioCombustion, TotalPHeVCarCombustionEnergy.u1) annotation(
    Line(points = {{-70, -2}, {-61.75, -2}}, color = {0, 0, 127}));
  connect(PHeVCars.FossilCombustion, TotalPHeVCarCombustionEnergy.u2) annotation(
    Line(points = {{-70, -3}, {-61.75, -3}, {-61.75, -4}}, color = {0, 0, 127}));
  connect(PHeVCars.UpstreamFossilCombustion, TotalPHeVCarUpstreamEnergy.u1) annotation(
    Line(points = {{-70, -4}, {-64.75, -4}, {-64.75, -5}, {-61.75, -5}}, color = {0, 0, 127}));
  connect(PHeVCars.UpstreamBioCombustion, TotalPHeVCarUpstreamEnergy.u2) annotation(
    Line(points = {{-70, -5}, {-65.75, -5}, {-65.75, -6.9}, {-61.75, -6.9}}, color = {0, 0, 127}));
  connect(ElectricalCars.FossilCombustion, ElectricCarsCO2Emissions.u) annotation(
    Line(points = {{-63, -9}, {-44.7, -9}, {-44.7, 8.15}, {-15.7, 8.15}}, color = {0, 0, 127}));
  connect(ElectricalCars.UpstreamFossilCombustion, ElectricCarsCO2EmissionsUpstream.u) annotation(
    Line(points = {{-63, -12}, {-44.7, -12}, {-44.7, -5.15}, {-15.7, -5.15}}, color = {0, 0, 127}));
  connect(LightElectricTrucks.FossilCombustion, LightElectricTrucksCO2Emissions.u) annotation(
    Line(points = {{-88.7, -39.85}, {-43.7, -39.85}, {-43.7, -18.85}, {-15.7, -18.85}}, color = {0, 0, 127}));
  connect(LightElectricTrucks.UpstreamFossilCombustion, LightElectricTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-88.7, -43.15}, {-43.7, -43.15}, {-43.7, -31.15}, {-15.7, -31.15}}, color = {0, 0, 127}));
  connect(HeavyElectricTrucks.FossilCombustion, HeavyElectricTruckCO2Emission.u) annotation(
    Line(points = {{-70.7, -72.85}, {-42.7, -72.85}, {-42.7, -44.85}, {-15.7, -44.85}}, color = {0, 0, 127}));
  connect(HeavyElectricTrucks.UpstreamFossilCombustion, HeavyElectricTruckCO2EmissionUpstream.u) annotation(
    Line(points = {{-70.7, -76.15}, {-42.7, -76.15}, {-42.7, -57.15}, {-15.7, -57.15}}, color = {0, 0, 127}));
  connect(ElectricBus.FossilCombustion, ElectricBusCO2Emission.u) annotation(
    Line(points = {{-75.7, -102.85}, {-41.7, -102.85}, {-41.7, -68.85}, {-15.7, -68.85}}, color = {0, 0, 127}));
  connect(ElectricBus.UpstreamFossilCombustion, ElectricBusCO2EmissionUpstream.u) annotation(
    Line(points = {{-75.7, -106.15}, {-41.7, -106.15}, {-41.7, -79.15}, {-15.7, -79.15}}, color = {0, 0, 127}));
  connect(LightPetrolTrucksCO2Emissions.y, TotalCO2Emission.u[28]) annotation(
    Line(points = {{-13.9, -11}, {19.55, -11}, {19.55, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(LightDieselTruckCO2Emissions.y, TotalCO2Emission.u[29]) annotation(
    Line(points = {{-13.9, -13}, {11.1, -13}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(ElectricBusCO2EmissionUpstream.y, TotalCO2Emission.u[30]) annotation(
    Line(points = {{-13.9, -79}, {11.1, -79}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
 connect(BiogasCarCO2Emission.y, TotalCarsCO2Emission.u[1]) annotation(
    Line(points = {{-14, 16}, {20, 16}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(PetrolCarsCO2Emission.y, TotalCarsCO2Emission.u[2]) annotation(
    Line(points = {{-14, 14}, {20, 14}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(DieselCarsCO2Emissions.y, TotalCarsCO2Emission.u[3]) annotation(
    Line(points = {{-14, 12}, {13, 12}, {13, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(PHeVCarsCO2Emissions.y, TotalCarsCO2Emission.u[4]) annotation(
    Line(points = {{-14, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(ElectricCarsCO2Emissions.y, TotalCarsCO2Emission.u[5]) annotation(
    Line(points = {{-14, 8}, {20, 8}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(BiogasCarCO2EmissionUpstream.y, TotalCarsCO2Emission.u[6]) annotation(
    Line(points = {{-14, 3}, {20, 3}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(PetrolCarsCO2EmissionUpstream.y, TotalCarsCO2Emission.u[7]) annotation(
    Line(points = {{-14, 1}, {20, 1}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(DieselCarsCO2EmissionsUpstream.y, TotalCarsCO2Emission.u[8]) annotation(
    Line(points = {{-14, -1}, {20, -1}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(PHeVCarsCO2EmissionsUpstream.y, TotalCarsCO2Emission.u[9]) annotation(
    Line(points = {{-14, -3}, {20, -3}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(ElectricCarsCO2EmissionsUpstream.y, TotalCarsCO2Emission.u[10]) annotation(
    Line(points = {{-14, -5}, {20, -5}, {20, 10}, {37, 10}}, color = {0, 0, 127}));
 connect(TotalCarsCO2Emission.y, DisplayHubPort.TotalCarCO2Emission) annotation(
    Line(points = {{46, 10}, {103, 10}, {103, 20}}, color = {0, 0, 127}));
 connect(LightPetrolTrucksCO2Emissions.y, TotalLightTrucksCO2Emission.u[1]) annotation(
    Line(points = {{-14, -11}, {20, -11}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightDieselTruckCO2Emissions.y, TotalLightTrucksCO2Emission.u[2]) annotation(
    Line(points = {{-14, -13}, {20, -13}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightPHeVTrucksCO2Emissions.y, TotalLightTrucksCO2Emission.u[3]) annotation(
    Line(points = {{-14, -15}, {20, -15}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightBioGasTrucksCO2Emissions.y, TotalLightTrucksCO2Emission.u[4]) annotation(
    Line(points = {{-14, -17}, {20, -17}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightElectricTrucksCO2Emissions.y, TotalLightTrucksCO2Emission.u[5]) annotation(
    Line(points = {{-14, -19}, {20, -19}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightPetrolTruckCO2EmissionUpstream.y, TotalLightTrucksCO2Emission.u[6]) annotation(
    Line(points = {{-14, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightPHeVTruckCO2EmissionUpstream.y, TotalLightTrucksCO2Emission.u[7]) annotation(
    Line(points = {{-14, -27}, {20, -27}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightBioGasTruckCO2EmissionUpstream.y, TotalLightTrucksCO2Emission.u[8]) annotation(
    Line(points = {{-14, -29}, {20, -29}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightElectricTruckCO2EmissionUpstream.y, TotalLightTrucksCO2Emission.u[9]) annotation(
    Line(points = {{-14, -31}, {20, -31}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(LightDieselTruckCO2EmissionUpstream.y, TotalLightTrucksCO2Emission.u[10]) annotation(
    Line(points = {{-14, -25}, {20, -25}, {20, -23}, {37, -23}}, color = {0, 0, 127}));
 connect(TotalLightTrucksCO2Emission.y, DisplayHubPort.TotalLightTrucksCO2Emission) annotation(
    Line(points = {{46, -23}, {103, -23}, {103, 20}}, color = {0, 0, 127}));
  connect(HeavyElectricTruckCO2Emission.y, TotalCO2Emission.u[31]) annotation(
    Line(points = {{-14, -45}, {11, -45}, {11, -7}, {53, -7}}, color = {0, 0, 127}));
 connect(HeavyElectricTruckCO2Emission.y, TotalHeavyTrucksCO2Emission.u[1]) annotation(
    Line(points = {{-14, -45}, {20, -45}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyPetrolTruckCO2EmissionUpstream.y, TotalHeavyTrucksCO2Emission.u[2]) annotation(
    Line(points = {{-14, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyDieselTruckCO2EmissionUpstream.y, TotalHeavyTrucksCO2Emission.u[3]) annotation(
    Line(points = {{-14, -51}, {20, -51}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyHydrogenTruckCO2EmissionUpstream.y, TotalHeavyTrucksCO2Emission.u[4]) annotation(
    Line(points = {{-14, -53}, {20, -53}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyBioGasTruckCO2EmissionUpstream.y, TotalHeavyTrucksCO2Emission.u[5]) annotation(
    Line(points = {{-14, -55}, {20, -55}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyElectricTruckCO2EmissionUpstream.y, TotalHeavyTrucksCO2Emission.u[6]) annotation(
    Line(points = {{-14, -57}, {20, -57}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(TotalHeavyTrucksCO2Emission.y, DisplayHubPort.TotalHeavyTrucksCO2Emission) annotation(
    Line(points = {{51, -49}, {103, -49}, {103, 20}}, color = {0, 0, 127}));
 connect(ElectricBusCO2Emission.y, TotalBusCO2Emssion.u[1]) annotation(
    Line(points = {{-14, -69}, {20, -69}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
 connect(DieselBusCO2EmissionUpstream.y, TotalBusCO2Emssion.u[2]) annotation(
    Line(points = {{-14, -73}, {20, -73}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
 connect(GasBusCO2EmissionUpstream.y, TotalBusCO2Emssion.u[3]) annotation(
    Line(points = {{-14, -75}, {20, -75}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
 connect(HydrogenBusCO2EmissionUpstream.y, TotalBusCO2Emssion.u[4]) annotation(
    Line(points = {{-14, -77}, {20, -77}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
 connect(ElectricBusCO2EmissionUpstream.y, TotalBusCO2Emssion.u[5]) annotation(
    Line(points = {{-14, -79}, {20, -79}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
 connect(TotalBusCO2Emssion.y, DisplayHubPort.TotalBusCO2Emssion) annotation(
    Line(points = {{51, -70.5}, {103, -70.5}, {103, 20}}, color = {0, 0, 127}));
  connect(TotalCars.y, DisplayHubPort.NumberOfCars) annotation(
    Line(points = {{-7, 109}, {103, 109}, {103, 20}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S019_ElectricBus, ElectricBus.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -104.5}, {-81, -104.5}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S015_HeavyElectricTruck, HeavyElectricTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -74.5}, {-76, -74.5}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S010_LightElectricTrucks, LightElectricTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -13}, {-94, -13}, {-94, -41}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S009_LightBioGasTrucks, LightBioGasTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -35}, {-89, -35}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S018_HydrogenBus, HydrogenBus.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -96}, {-89, -96}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S017_GasBus, GasBus.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -89}, {-81, -89}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S016_DieselBus, DieselBus.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -83.5}, {-89, -83.5}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S014_HeavyBioGasTruck, HeavyBioGasTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -67}, {-84, -67}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S013_HeavyHydrogenTruck, HeavyHydrogenTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -60}, {-76, -60}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S012_HeavyDieselTruck, HeavyDieselTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -54}, {-84, -54}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S011_HeavyPetrolTruck, HeavyPetrolTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -47.5}, {-76, -47.5}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S008_LightPHeVTrucks, LightPHeVTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -7}, {-94, -7}, {-94, -29}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S007_LightDieselTrucks, LightDieselTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -23}, {-89, -23}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S006_LightPetrolTrucks, LightPetrolTrucks.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-101, -1}, {-94, -1}, {-94, -17}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S011_HeavyPetrolTruck, TotalHeavyTruck.u[1]) annotation(
    Line(points = {{-101, 18}, {-87, 18}, {-87, 97.5}, {20, 97.5}}, color = {0, 49, 71}));
  connect(TransportationHubPort.S012_HeavyDieselTruck, TotalHeavyTruck.u[2]) annotation(
    Line(points = {{-101, 18}, {-85, 18}, {-85, 97.5}, {20, 97.5}}, color = {0, 49, 71}));
  connect(TransportationHubPort.S013_HeavyHydrogenTruck, TotalHeavyTruck.u[3]) annotation(
    Line(points = {{-101, 18}, {-83, 18}, {-83, 97.5}, {20, 97.5}}, color = {0, 49, 71}));
  connect(TransportationHubPort.S014_HeavyBioGasTruck, TotalHeavyTruck.u[4]) annotation(
    Line(points = {{-101, 18}, {-81, 18}, {-81, 97.5}, {20, 97.5}}, color = {0, 49, 71}));
  connect(TransportationHubPort.S015_HeavyElectricTruck, TotalHeavyTruck.u[5]) annotation(
    Line(points = {{-101, 18}, {-79, 18}, {-79, 97.5}, {20, 97.5}}, color = {0, 49, 71}));
  connect(TransportationHubPort.S006_LightPetrolTrucks, TotalLightTrucks.u[1]) annotation(
    Line(points = {{-101, 18}, {-75, 18}, {-75, 82}, {-18, 82}}, color = {255, 0, 0}));
  connect(TransportationHubPort.S007_LightDieselTrucks, TotalLightTrucks.u[2]) annotation(
    Line(points = {{-101, 18}, {-73, 18}, {-73, 82}, {-18, 82}}, color = {255, 0, 0}));
  connect(TransportationHubPort.S008_LightPHeVTrucks, TotalLightTrucks.u[3]) annotation(
    Line(points = {{-101, 18}, {-71, 18}, {-71, 82}, {-18, 82}}, color = {255, 0, 0}));
  connect(TransportationHubPort.S009_LightBioGasTrucks, TotalLightTrucks.u[4]) annotation(
    Line(points = {{-101, 18}, {-69, 18}, {-69, 82}, {-18, 82}}, color = {255, 0, 0}));
  connect(TransportationHubPort.S010_LightElectricTrucks, TotalLightTrucks.u[5]) annotation(
    Line(points = {{-101, 18}, {-67, 18}, {-67, 82}, {-18, 82}}, color = {255, 0, 0}));
  connect(TransportationHubPort.S016_DieselBus, TotalBuses.u[1]) annotation(
    Line(points = {{-101, 18}, {-63, 18}, {-63, 71.5}, {20, 71.5}}));
  connect(TransportationHubPort.S017_GasBus, TotalBuses.u[2]) annotation(
    Line(points = {{-101, 18}, {-61, 18}, {-61, 71.5}, {20, 71.5}}));
  connect(TransportationHubPort.S018_HydrogenBus, TotalBuses.u[3]) annotation(
    Line(points = {{-101, 18}, {-59, 18}, {-59, 71.5}, {20, 71.5}}));
  connect(TransportationHubPort.S019_ElectricBus, TotalBuses.u[4]) annotation(
    Line(points = {{-101, 18}, {-57, 18}, {-57, 71.5}, {20, 71.5}}));
  connect(TransportationHubPort.S005_ElectricCars, ElectricalCars.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-91, 18}, {-91, -10}, {-68, -10}}, color = {0, 0, 127}));
  connect(TransportationHubPort, DisplayHubPort) annotation(
    Line(points = {{-101, 18}, {103, 18}, {103, 20}}, thickness = 0.5));
  connect(TransportationHubPort.S001_BioCars, TotalCars.u[1]) annotation(
    Line(points = {{-101, 18}, {-104, 18}, {-104, 109}, {-20, 109}}));
  connect(TransportationHubPort.S002_PetrolCars, TotalCars.u[2]) annotation(
    Line(points = {{-101, 18}, {-102, 18}, {-102, 109}, {-20, 109}}));
  connect(TransportationHubPort.S003_DieselCars, TotalCars.u[3]) annotation(
    Line(points = {{-101, 18}, {-100, 18}, {-100, 109}, {-20, 109}}));
  connect(TransportationHubPort.S004_PHeVCars, TotalCars.u[4]) annotation(
    Line(points = {{-101, 18}, {-98, 18}, {-98, 109}, {-20, 109}}));
  connect(TransportationHubPort.S005_ElectricCars, TotalCars.u[5]) annotation(
    Line(points = {{-101, 18}, {-96, 18}, {-96, 109}, {-20, 109}}));
  connect(TransportationHubPort.S001_BioCars, BioCars.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-78, 18}, {-78, 15}, {-68, 15}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S002_PetrolCars, PetrolCars.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-81, 18}, {-81, 8}, {-75, 8}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S003_DieselCars, DieselCars.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-84, 18}, {-84, 2}, {-68, 2}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S004_PHeVCars, PHeVCars.NoOfVehicles) annotation(
    Line(points = {{-101, 18}, {-87, 18}, {-87, -3}, {-75, -3}}, color = {0, 0, 127}));
  connect(TotalHeavyPetrolTruckCombustionEnergy.y, HeavyPetrolTruckCO2Emission.u) annotation(
    Line(points = {{-66, -46}, {-43, -46}, {-43, -37}, {-16, -37}}, color = {0, 0, 127}));
  connect(TotalHeavyDieselTruckCombustionEnergy.y, HeavyDieselTruckCO2Emission.u) annotation(
    Line(points = {{-73, -53}, {-43, -53}, {-43, -39}, {-16, -39}}, color = {0, 0, 127}));
 connect(HeavyPetrolTruckCO2Emission.y, TotalHeavyTrucksCO2Emission.u[7]) annotation(
    Line(points = {{-14, -37}, {20, -37}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyDieselTruckCO2Emission.y, TotalHeavyTrucksCO2Emission.u[8]) annotation(
    Line(points = {{-14, -39}, {20, -39}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyHydrogenTruckCO2Emission.y, TotalHeavyTrucksCO2Emission.u[9]) annotation(
    Line(points = {{-14, -43}, {20, -43}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
 connect(HeavyBioGasTruckCO2Emission.y, TotalHeavyTrucksCO2Emission.u[10]) annotation(
    Line(points = {{-14, -41}, {20, -41}, {20, -49}, {40, -49}}, color = {0, 0, 127}));
  connect(TotalHeavyBioGasTruckCombustionEnergy.y, HeavyBioGasTruckCO2Emission.u) annotation(
    Line(points = {{-73, -66}, {-43, -66}, {-43, -41}, {-16, -41}}, color = {0, 0, 127}));
  connect(TotalHeavyHydrogenTruckCombustionEnergy.y, HeavyHydrogenTruckCO2Emission.u) annotation(
    Line(points = {{-66, -59}, {-43, -59}, {-43, -43}, {-16, -43}}, color = {0, 0, 127}));
  connect(HydrogenBusCO2Emission.y, TotalCO2Emission.u[32]) annotation(
    Line(points = {{-13.9, -67}, {11.1, -67}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(TotalHydrogenBusCombustionEnergy.y, HydrogenBusCO2Emission.u) annotation(
    Line(points = {{-77.9, -95}, {-41.9, -95}, {-41.9, -67}, {-15.9, -67}}, color = {0, 0, 127}));
 connect(HydrogenBusCO2Emission.y, TotalBusCO2Emssion.u[6]) annotation(
    Line(points = {{-14, -67}, {20, -67}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
  connect(GasBusCO2Emission.y, TotalCO2Emission.u[33]) annotation(
    Line(points = {{-13.9, -65}, {11.1, -65}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
  connect(TotalGasBusCombustionEnergy.y, GasBusCO2Emission.u) annotation(
    Line(points = {{-69.9, -88}, {-41.9, -88}, {-41.9, -65}, {-15.9, -65}}, color = {0, 0, 127}));
 connect(GasBusCO2Emission.y, TotalBusCO2Emssion.u[7]) annotation(
    Line(points = {{-14, -65}, {20, -65}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
  connect(TotalDieselBusCombustionEnergy.y, DieselBusCO2Emission.u) annotation(
    Line(points = {{-77.9, -82}, {-41.9, -82}, {-41.9, -63}, {-15.9, -63}}, color = {0, 0, 127}));
  connect(DieselBusCO2Emission.y, TotalCO2Emission.u[34]) annotation(
    Line(points = {{-13.9, -63}, {11.1, -63}, {11.1, -7}, {53, -7}}, color = {0, 0, 127}));
 connect(DieselBusCO2Emission.y, TotalBusCO2Emssion.u[8]) annotation(
    Line(points = {{-14, -63}, {20, -63}, {20, -70.5}, {41, -70.5}}, color = {0, 0, 127}));
protected
  annotation(
    Icon(graphics = {Text(origin = {1, -120}, extent = {{-101, 20}, {101, -20}}, textString = "%name%", fontSize = 8)}),
    Diagram(coordinateSystem(grid = {1, 1}, extent = {{-100, -110}, {100, 110}}, preserveAspectRatio = false)));
end EnvironmentalHub;
